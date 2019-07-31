using System;
using System.IO;
using System.Net;
using System.Runtime.Serialization;

namespace BankingRestServicesTryMe
{
    public partial class Subtraction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Invokes the subtraction RESTful service to subtract the amount from the balance.
        // Returns the new balance.
        protected void subtract(object sender, EventArgs e)
        {
            try
            {
                // Create the base address
                Uri baseUri = new Uri("http://localhost:54118/Service.svc");
                // Create the from tree root to the child node
                UriTemplate myTemplate = new UriTemplate("sub2/{operand1}/{operand2}");
                // Assign values to variables to complete Uri
                Uri completeUri = myTemplate.BindByPosition(baseUri, Operand1.Text, Operand2.Text);
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