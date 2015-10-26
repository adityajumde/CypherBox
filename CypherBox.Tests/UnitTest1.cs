using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using encryptionBusinessLayer;

namespace CypherBox.Tests
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestEncryption()
        {
            string testString = "I like it this way";
            string expected = "IdS/A5GPERGHQ5CbEZSrEdCzAdKDQpGnApG3";
            clsXor BizEncryDecry = new clsXor();
            string Actual=BizEncryDecry.encryption(testString,"hidden");
            StringAssert.Contains(expected,Actual);
        }

        [TestMethod]
        public void TestDecryption()
        {
            string testString = "IdS/A5GPERGHQ5CbEZSrEdCzAdKDQpGnApG3";
            string expected = "I like it this way";
            clsXor BizEncryDecry = new clsXor();
            string Actual = BizEncryDecry.decryption(testString, "hidden");
            StringAssert.Contains(expected, Actual);
        }
    }
}
