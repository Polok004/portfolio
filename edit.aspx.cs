using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Portfolio
{
    public partial class edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["id"]==null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Write(Session["id"]);
            }
            if (!IsPostBack)
            {

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

                            txtName.Text = name;
                            txtAge.Text = age;
                            txtPhoneNumber.Text = phone;
                            txtAddress.Text = address;
                            txtEmail.Text = email;
                            txtAdditionalInfo.Text = about;
                        }
                    }

                }
                catch (Exception ex)
                {
                    Console.WriteLine($"An error occurred: {ex.Message}");
                }

                if (connection.State == System.Data.ConnectionState.Open)
                {
                    connection.Close();
                }
            }

            BindGridView();

        }

        protected void About_edit(object sender, EventArgs e)
        {

            string connectionString = "Server=localhost;Database=portfolio;Uid=root;Pwd=;";
            MySqlConnection connection = new MySqlConnection(connectionString);

            string name = txtName.Text;
            string age = txtAge.Text;
            string phone = txtPhoneNumber.Text;
            string address = txtAddress.Text;
            string email = txtEmail.Text;
            string about = txtAdditionalInfo.Text;

            try
            {
                connection.Open();
                string query = "UPDATE myabout SET name = @name, age = @age, phone = @phone, address = @address, email = @email, about = @about WHERE id = 1";

                MySqlCommand command = new MySqlCommand(query, connection);

                command.Parameters.AddWithValue("@name", name);
                command.Parameters.AddWithValue("@age", age);
                command.Parameters.AddWithValue("@phone", phone);
                command.Parameters.AddWithValue("@address", address);
                command.Parameters.AddWithValue("@email", email);
                command.Parameters.AddWithValue("@about", about);

                int rowsAffected = command.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    Console.WriteLine($"Update successful. Rows affected: {rowsAffected}");

                }
                else
                {
                    Console.WriteLine($"No rows updated.");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"An error occurred: {ex.Message}");
            }
            finally
            {
                if (connection.State == System.Data.ConnectionState.Open)
                {
                    connection.Close();
                }
            }


        }


        ///

        //add button click
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            
            InsertPDFIntoDatabase();

            
            BindGridView();
        }
        //insert data
        private void InsertPDFIntoDatabase()
        {
            
            string connectionString = "Server=localhost;Database=portfolio;Uid=root;Pwd=;";

            
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                
                connection.Open();

               
                string filename = Path.GetFileName(fileUpload.PostedFile.FileName);
                Stream fs = fileUpload.PostedFile.InputStream;
                BinaryReader br = new BinaryReader(fs);
                byte[] pdfcode = br.ReadBytes((Int32)fs.Length);
                string aboutText = Textabout.Text; 

                
                string query = "INSERT INTO pdf (filename, pdffile, about) VALUES (@filename, @pdfcode, @aboutText)";

                
                using (MySqlCommand cmd = new MySqlCommand(query, connection))
                {
                    
                    cmd.Parameters.AddWithValue("@filename", filename);
                    cmd.Parameters.AddWithValue("@pdfcode", pdfcode);
                    cmd.Parameters.AddWithValue("@aboutText", aboutText);

                    
                    cmd.ExecuteNonQuery();
                }
            }
        }
        //show data in grid
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

                    
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }

        //for download data
        protected void GridView1_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DownloadFile")
            {
                
                int id = Convert.ToInt32(e.CommandArgument);

                
                byte[] fileData = GetFileDataFromDatabase(id);

                
                SendFileToClient(fileData);
            }
        }
        //fetching data from database
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
        //download
        private void SendFileToClient(byte[] fileData)
        {
            
            Response.Clear();
            Response.ContentType = "application/pdf";
            Response.AddHeader("Content-Disposition", "attachment; filename=download.pdf");

           
            Response.BinaryWrite(fileData);

           
            Response.End();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            
            int idToDelete;
            if (!int.TryParse(TextBox2.Text, out idToDelete))
            {
                
                return;
            }

            
            DeleteDataForID(idToDelete);

  
            BindGridView();
        }

        private void DeleteDataForID(int id)
        {
          
            string connectionString = "Server=localhost;Database=portfolio;Uid=root;Pwd=;";

            
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                
                connection.Open();

               
                string query = "DELETE FROM pdf WHERE id = @id";

                
                using (MySqlCommand cmd = new MySqlCommand(query, connection))
                {
                    
                    cmd.Parameters.AddWithValue("@id", id);

                    
                    cmd.ExecuteNonQuery();
                }
            }
        }

        protected void logout(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Clear();
            
            if (Session["id"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}