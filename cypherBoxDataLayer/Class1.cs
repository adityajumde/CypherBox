using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BO;
using System.Data;
using System.Data.SqlTypes;
using System.Data.SqlClient;
using System.Configuration.Assemblies;
using System.Configuration;

namespace cypherBoxDataLayer
{
    public class RegistrationDAL
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=F:\MS UNC Charlotte\COURSE 4 SSDI Dr.Harini Ramaprasad\CypherBox\CypherBox\App_Data\cypherBox.mdf;Integrated Security=True");
        SqlCommand cmd;
        SqlDataAdapter da;
        DataTable dt;

        public int register_DAL(RegistrationBO rbo)
        {
            int result = 6;
            try
            {
                cmd = new SqlCommand("insertuserdata", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@FirstName", rbo.firstname);
                cmd.Parameters.AddWithValue("@LastName", rbo.lastname);
                cmd.Parameters.AddWithValue("@UserName", rbo.username);
                cmd.Parameters.AddWithValue("@Password", rbo.password);
                cmd.Parameters.AddWithValue("@Cpassword", rbo.cpassword);
                cmd.Parameters.AddWithValue("@emailID", rbo.emailid);
                cmd.Parameters.AddWithValue("@result", SqlDbType.Int).Direction = ParameterDirection.Output;
                conn.Open();
                cmd.ExecuteNonQuery();
                result = Convert.ToInt32(cmd.Parameters["@result"].Value);
                return result;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                conn.Close();
            }


        }

        public int validate_user(RegistrationBO rbo)
        {
            try
            {
                cmd = new SqlCommand("validateuserdata", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@UserName", rbo.username);
                cmd.Parameters.AddWithValue("@Password", rbo.password);
                conn.Open();

                SqlDataReader read = cmd.ExecuteReader();
                read.Read();
                if(read.HasRows)
                {
                    return 1;
                }
                else
                {
                    return 0;
                }
               
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                conn.Close();
            }

        }


    }

}
