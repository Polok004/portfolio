
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Portfolio
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HttpCookie cookie = Request.Cookies["User"];
                //cookie section
                if (cookie != null)
                {
                    if (cookie["username"] != null)
                        email.Text = cookie["username"].ToString();

                   //  if (cookie["pas"] != null)
                    //   password.Attributes["value"] = cookie["pas"].ToString(); 
                }
                //session section
                 // if (Session["email"] != null)

                 // {
                  //  email.Text = Session["email"].ToString();
                // }
                 if (Session["id"] != null)
                 {
                   password.Text = Session["id"].ToString();
                 }
            }
           

        }


        protected void Login_button(object sender, EventArgs e)
        {
            string connectionString = "Server=localhost;Database=portfolio;Uid=root;Pwd=;";
            MySqlConnection connection = new MySqlConnection(connectionString);
            string user = email.Text;
            string pass = password.Text;

            try
            {
                connection.Open();
                string query = "SELECT email, password FROM login WHERE email = @email";
                MySqlCommand command = new MySqlCommand(query, connection);

                command.Parameters.AddWithValue("@email", user);
                using (MySqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        string dbEmail = reader["email"].ToString();
                        string dbPassword = reader["password"].ToString();

                        if (pass == dbPassword)
                        {
                            // Store password in session
                            Session["id"] = dbPassword;

                            // Create a new cookie for the username
                            HttpCookie cookie = new HttpCookie("User");
                            cookie["username"] = user;
                            cookie.Expires = DateTime.Now.AddDays(10);
                            Response.Cookies.Add(cookie);

                            Response.Redirect("edit.aspx");
                        }
                        else
                        {
                            // Password incorrect
                            // Handle this case if needed
                        }
                    }
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

        protected void Cancel_button(object sender, EventArgs e)
        {
            email.Text = "";
            password.Text = "";
        }
    }
}