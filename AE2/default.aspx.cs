using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace AE2
{
    public partial class Reclamatii : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            lblSucces.Visible = false;
            lblRequired.Visible = false;

            showUltimeleMesaje();
        }

        protected void btnTrimite_Click(object sender, EventArgs e)
        {
            if (isValid())
            {
                salvareDate();
                // Mesaj Succes
                lblSucces.Visible = true;

                //Golire campuri
                golireCampuri();

                //Actualizare ultimele mesaje
                showUltimeleMesaje();
            }
            else
            {
                lblRequired.Visible = true;
            }
            
        }

        protected void golireCampuri()
        {
            txtNume.Text = "";
            txtPrenume.Text = "";
            txtEmail.Text = "";
            txtTelefon.Text = "";
            txtMsj.Text = "";

            //lblSucces.Visible = false;
        }

        protected bool isValid()
        { 
            if(!string.IsNullOrEmpty(txtNume.Text) && !string.IsNullOrEmpty(txtPrenume.Text) && !string.IsNullOrEmpty(txtEmail.Text) && !string.IsNullOrEmpty(txtMsj.Text))
            {
                return true;
            }

            return false;
        }

        protected void salvareDate()
        {
            string cons1 = ConfigurationManager.ConnectionStrings["freeaspconnection"].ConnectionString;
            //using (SqlConnection sqlCon = new SqlConnection(@"Data Source =.;initial Catalog=AE;Integrated Security=True;"))
            using (SqlConnection sqlCon = new SqlConnection(cons1))
            {
                sqlCon.Open();

                // Insert Client
                string query = "insert into dbo.Client values (@id,@nume,@prenume,@email,@telefon)";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                var clientId = Guid.NewGuid();
                sqlCmd.Parameters.AddWithValue("@id", clientId);
                sqlCmd.Parameters.AddWithValue("@nume", txtNume.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@prenume", txtPrenume.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@email", txtEmail.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@telefon", txtTelefon.Text.Trim());

                sqlCmd.ExecuteNonQuery();


                //Insert Mesaj Client
                string queryMsj = "insert into dbo.Reclamatii values (@clientId,@mesaj)";
                SqlCommand sqlCmdMsj = new SqlCommand(queryMsj, sqlCon);
                sqlCmdMsj.Parameters.AddWithValue("@clientId", clientId);
                sqlCmdMsj.Parameters.AddWithValue("@mesaj", txtMsj.Text.Trim());

                sqlCmdMsj.ExecuteNonQuery();

                sqlCon.Close();
            }
        }

        protected void showUltimeleMesaje()
        {
            string cons = ConfigurationManager.ConnectionStrings["freeaspconnection"].ConnectionString;

            //using (SqlConnection sqlCon = new SqlConnection(@"Data Source =.;initial Catalog=AE;Integrated Security=True;"))
            using (SqlConnection sqlCon = new SqlConnection(cons))

            {
                sqlCon.Open();

                // Insert Client
                string query = "select top 10 r.Mesaj as Mesaj, c.nume + ' ' + c.prenume as Nume " +
                    "from Reclamatii r " +
                    "inner join Client c on c.Id = r.ClientId order by r.id desc";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);

                using (var rdr = sqlCmd.ExecuteReader(CommandBehavior.CloseConnection))
                {
                    if(rdr.Read())
                    {
                        txtUltim1.Text = (string)rdr["mesaj"] + " - " + (string)rdr["nume"];
                    }
                    if (rdr.Read())
                    {
                        txtUltim2.Text = (string)rdr["mesaj"] + " - " + (string)rdr["nume"];
                    }
                    if (rdr.Read())
                    {
                        txtUltim3.Text = (string)rdr["mesaj"] + " - " + (string)rdr["nume"];
                    }
                    if (rdr.Read())
                    {
                        txtUltim4.Text = (string)rdr["mesaj"] + " - " + (string)rdr["nume"];
                    }
                    if (rdr.Read())
                    {
                        txtUltim5.Text = (string)rdr["mesaj"] + " - " + (string)rdr["nume"];
                    }
                    if (rdr.Read())
                    {
                        txtUltim6.Text = (string)rdr["mesaj"] + " - " + (string)rdr["nume"];
                    }
                    if (rdr.Read())
                    {
                        txtUltim7.Text = (string)rdr["mesaj"] + " - " + (string)rdr["nume"];
                    }
                    if (rdr.Read())
                    {
                        txtUltim8.Text = (string)rdr["mesaj"] + " - " + (string)rdr["nume"];
                    }
                    if (rdr.Read())
                    {
                        txtUltim9.Text = (string)rdr["mesaj"] + " - " + (string)rdr["nume"];
                    }
                    if (rdr.Read())
                    {
                        txtUltim10.Text = (string)rdr["mesaj"] + " - " + (string)rdr["nume"];
                    }
                    rdr.Close();
                }
                sqlCon.Close();
            }
        }
    }
}