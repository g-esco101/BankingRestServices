using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Runtime.Serialization;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BankingRestServicesTryMe
{
    public partial class Hasher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Hashes the userName (salt) & the password. Returns the hashed password.
        // Invokes the Hashing RESTful service. 
        protected void hash(object sender, EventArgs e)
        {
            try
            {
                // Create the base address
                Uri baseUri = new Uri("http://localhost:54193/Service.svc");
                // Create the path from tree root to the child node
                UriTemplate myTemplate = new UriTemplate("hash/{password}/{user}");
                // Assign values to variables to complete Uri
                Uri completeUri = myTemplate.BindByPosition(baseUri, Password.Text, Username.Text);
                WebClient proxy = new WebClient();
                byte[] abc = proxy.DownloadData(completeUri);
                Stream strm = new MemoryStream(abc);
                DataContractSerializer obj = new DataContractSerializer(typeof(string));
                Result.Text = obj.ReadObject(strm).ToString();
            }
            catch (Exception ex)
            {
                Result.Text = ex.Message;
            }
        }
    }
}