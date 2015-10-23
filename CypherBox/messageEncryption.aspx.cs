using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CypherBox
{
    public partial class mesasgeEncryption : System.Web.UI.Page
    {
        private static string _b64 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijk.mnopqrstuvwxyz-123456789+/=";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Encrypt_Click(object sender, EventArgs e)
        {
            string data = messageInput.Text;
            string key = "hidden";

            int keypos = 0;
            string binarydata = "";

            foreach (char c in data)
            {
                int xor = ((int)c ^ (int)key[keypos]) + (key.Length);
                
                if (++keypos >= key.Length)
                    keypos = 0;

                binarydata += DecToBinary(xor, 8);
            }

            
            int m = 0;
            string cipher = "";
            // splitt the binary string to 4 byte chunks and assign each chunk the proper b64 value
            for (int i = 0; i < binarydata.Length; i += 4)
            {
                int v = BinToDec(binarydata.Substring(i, 4));
                cipher += GetB64FromN(v * 4 + m);
                Console.WriteLine("{0}\t{1}\t{2} {3}", v, v * 4 + m, m, GetB64FromN(v * 4 + m)[0]);
                if (++m > 3)
                    m = 0;
            }

            encryptedMessage.Text = cipher;
        }

        protected void Decrypt_Click(object sender, EventArgs e)
        {
            string data = messageInput.Text;
            string key = "hidden";

            int m = 0;
            string binarydata = "";
            // convert the b64 string to binary string
            foreach (char c in data)
            {
                int v = (GetNFromB64(c) - m) / 4;
                binarydata += DecToBinary(v, 4);
                Console.WriteLine("{0}", DecToBinary(v, 4));
                if (++m > 3)
                    m = 0;
            }

            // chop the 8bit binaries and mix back the key into it
            int keypos = 0;
            string decoded = "";
            for (int i = 0; i < binarydata.Length; i += 8)
            {
                if (i + 8 > binarydata.Length)
                    break;
                int c = BinToDec(binarydata.Substring(i, 8));
                int dc = (c - key.Length) ^ (int)key[keypos];
                Console.WriteLine("{0} = {1}", binarydata.Substring(i, 8), c);
                Console.WriteLine("               {0} - {1} ^ {2} = {3}", c, key.Length - 1, (int)key[keypos], (c - key.Length) ^ (int)key[keypos]);

                if (++keypos >= key.Length)
                    keypos = 0;

                decoded += new string((char)dc, 1);
            }

            encryptedMessage.Text = decoded;
        }

        private static string GetB64FromN(int n)
        {
            if (n > _b64.Length)
                return "="; // well, we shouldn't reach this line. If we do, the encoding will be garbage anyway...

            return new string(_b64[n], 1);
        }

        private static int GetNFromB64(char n)
        {
            return _b64.IndexOf(n);
        }


        private static string DecToBinary(int value, int length)
        {
            // Declare a few variables we're going to need
            string binString = "";

            while (value > 0)
            {
                binString += value % 2;
                value /= 2;
            }

            // we need to reverse the binary string
            // that's why we are using this array stuff here.

            string reverseString = "";
            foreach (char c in binString)
                reverseString = new string((char)c, 1) + reverseString;
            binString = reverseString;

            // do the padding here
            binString = new string((char)'0', length - binString.Length) + binString;

            return binString;
        }

        private static int BinToDec(string Binary)
        {
            return Convert.ToInt32(Binary, 2);
        }


    }
}