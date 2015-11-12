using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
//using encryptionBusinessLayer;
using BAL;

namespace CypherBox
{
    public partial class fileEncryption : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void readText_Click(object sender, EventArgs e)
        {
            if (FileUp.HasFile)
            {
                try
                {
                    clsXor encrypt = new clsXor();
                    string filename = Path.GetFileName(FileUp.FileName);
                    FileUp.SaveAs(Server.MapPath("~/") + filename);
                    // textFromFile.Text = "Upload status: File uploaded!";
                    String readPath = Server.MapPath("~/") + filename;
                    String fileText = File.ReadAllText(readPath);
                    String encryptedText = encrypt.encryption(fileText,"hidden");
                    textFromFile.Text = encryptedText;
                    String writePath = Server.MapPath("~/") + "encrypted_" + filename;
                    StreamWriter sw = new StreamWriter(writePath);
                    sw.Write(textFromFile.Text);
                    sw.Close();
                }
                catch (Exception ex)
                {
                    textFromFile.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                }
            }
            else
            {
                textFromFile.Text = "Please select file!";
            }
        }

        protected void decryptFile_Click(object sender, EventArgs e)
        {
            if (FileUp.HasFile)
            {
                try
                {
                    clsXor decrypt = new clsXor();
                    string filename = Path.GetFileName(FileUp.FileName);
                    FileUp.SaveAs(Server.MapPath("~/Decryption/") + filename);
                    // textFromFile.Text = "Upload status: File uploaded!";
                    String readPath = Server.MapPath("~/Decryption/") + filename;
                    String fileText = File.ReadAllText(readPath);
                    textFromFile.Text = decrypt.decryption(fileText, "hidden");
                   
                    String writePath = Server.MapPath("~/") + "decrypted_" + filename;

                    StreamWriter sw = new StreamWriter(writePath);
                    sw.Write(textFromFile.Text);
                    sw.Close();
                }
                catch (Exception ex)
                {
                    textFromFile.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                }
            }
            else
            {
                textFromFile.Text = "Please select file!";
            }
        }
    }
}