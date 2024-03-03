using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;


namespace Portfolio
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
                
            }

            string connectionString = "Server=localhost;Database=portfolio;Uid=root;Pwd=;";
            MySqlConnection connection = new MySqlConnection(connectionString);

            try
            {
                connection.Open();
                string query = "SELECT name, age, phone, address, email, about FROM myabout WHERE ID=1";
                MySqlCommand command = new MySqlCommand(query, connection);

                using (MySqlDataReader reader = command.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        string name = reader["name"].ToString();
                        string age = reader["age"].ToString();
                        string phone = reader["phone"].ToString();
                        string address = reader["address"].ToString();
                        string email = reader["email"].ToString();
                        string about = reader["about"].ToString(); 

                        About_name.InnerText = name;
                        About_age.InnerText = age; 
                        About_phone.InnerText = phone; 
                        About_address.InnerText = address; 
                        About_email.InnerText = email; 
                        About_extra.InnerText = about; 
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"An error occurred: {ex.Message}");
            }
            finally
            {
                connection.Close();
            }
        }


       

        private void BindGridView()
        {
            
            string connectionString = "Server=localhost;Database=portfolio;Uid=root;Pwd=;";

            
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
              
                connection.Open();

               
                string query = "SELECT id, filename, about FROM pdf";

               
                using (MySqlCommand cmd = new MySqlCommand(query, connection))
                {
                   
                    DataTable dt = new DataTable();

                    
                    using (MySqlDataAdapter da = new MySqlDataAdapter(cmd))
                    {
                      
                        da.Fill(dt);
                    }

                   
                    if (dt.Rows.Count > 0)
                    {
                       
                        GridView2.DataSource = dt;
                        GridView2.DataBind();
                    }
                    else
                    {
                        
                    }
                }
            }
        }

        protected void GridView1_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DownloadFile")
            {
               
                int id = Convert.ToInt32(e.CommandArgument);

                
                byte[] fileData = GetFileDataFromDatabase(id);

                
                SendFileToClient(fileData);
            }
        }
        private byte[] GetFileDataFromDatabase(int id)
        {
           
            string connectionString = "Server=localhost;Database=portfolio;Uid=root;Pwd=;";

          
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
               
                connection.Open();

               
                string query = "SELECT pdffile FROM pdf WHERE id = @id";

                
                using (MySqlCommand cmd = new MySqlCommand(query, connection))
                {
                   
                    cmd.Parameters.AddWithValue("@id", id);

 
                    return (byte[])cmd.ExecuteScalar();
                }
            }
        }

        private void SendFileToClient(byte[] fileData)
        {
            
            Response.Clear();
            Response.ContentType = "application/pdf";
            Response.AddHeader("Content-Disposition", "attachment; filename=download.pdf");

            
            Response.BinaryWrite(fileData);

           
            Response.End();
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string email = txtEmail.Text;
            string message = txtMessage.Text;

            string connectionString = "Server=localhost;Database=portfolio;Uid=root;Pwd=;";

            string query = "INSERT INTO mail (name, email, message) VALUES (@Name, @Email, @Message)";

            try
            {
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    using (MySqlCommand cmd = new MySqlCommand(query, connection))
                    {
                        cmd.Parameters.AddWithValue("@Name", name);
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Message", message);

                        connection.Open();
                        cmd.ExecuteNonQuery();
                    }
                }

                
                lblSuccessMessage.Text = "Message sent successfully!";
                lblSuccessMessage.Visible = true;
            }
            catch (Exception ex)
            {
                
                lblSuccessMessage.Text = "An error occurred while sending the message: " + ex.Message;
                lblSuccessMessage.ForeColor = System.Drawing.Color.Red;
                lblSuccessMessage.Visible = true;
            }
        }

    }
}
