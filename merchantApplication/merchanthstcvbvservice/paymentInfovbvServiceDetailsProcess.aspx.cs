using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Security.Cryptography;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace merchantApplication.merchanthstcvbvservice
{
    public partial class paymentInfovbvServiceDetailsProcess : System.Web.UI.Page
    {   
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {

                String id = "ipay***********";    // Merchant tranportal Id // Replace with tranportal Id which received from Oman Arab Bank in email
                String password = "************";    // Merchant tranportal password // Replace with the tranportal password which received from Oman Arab Bank in email
                string key = "707360962352707360962352"; // Merchant resource key // Replace with the resource key which received from Oman Arab Bank in email
                string pgendpoint = "https://certpayments.oabipay.com/trxns/VPAS.htm?actionVPAS=tranInit";
                 String receiptURL = "http://localhost:54838/merchanthstcvbv/paymentvbvResponsePage.aspx";     // URL where want to receive the payment response from the payment gateway
                String errorURL = "http://localhost:54838/merchanthstcvbv/paymentvbvResponsePage.aspx";       // URL where want to receive the payment error if in payment gateway
                String currency = "512";    // Oman Currency
                string action = "1";
                string tranrequest = "<request>" +
                                                "<card>"+ Session["transCardNumber"].ToString() + "</card>" +
                                                "<cvv2>"+ Session["transCvv"].ToString() + "</cvv2>" +
                                                "<currencycode>" + currency + "</currencycode>" +
                                                "<expyear>" + Session["transExpYYYY"].ToString() + "</expyear>" +
                                                "<expmonth>" + Session["transExpMM"].ToString() + "</expmonth>" +
                                                "<member>" + Session["transCardHolderName"].ToString() + "</member>" +
                                                "<amt>" + Session["transAmount"].ToString() + "</amt>" +
                                                "<action>" + action + "</action>" +
                                                "<trackid>" + Session["transTrackId"].ToString() + "</trackid>" +
                                                "<udf1>" + Session["transUdf1"].ToString() + "</udf1>" +
                                                "<udf2>" + Session["transUdf2"].ToString() + "</udf2>" +
                                                "<udf3>" + Session["transUdf3"].ToString() + "</udf3>" +
                                                "<udf4>" + Session["transUdf4"].ToString() + "</udf4>" +
                                                "<udf5>" + Session["transUdf5"].ToString() + "</udf5>" +
                                                "<errorURL>" + errorURL + "</errorURL>" +
                                                "<responseURL>" + receiptURL + "</responseURL>" +

                                                "<currencycode>" + currency + "</currencycode>" +
                                                "<id>" + id + "</id>" +
                                                "<password>" + password + "</password>" +
                                           "</request>";



                StreamWriter writer = null;
                HttpWebRequest request = null;
                HttpWebResponse webResponse = null;
                request = WebRequest.Create(string.Format(pgendpoint, "valid")) as HttpWebRequest;
                request.Method = "POST";
                request.ContentType = "application/xml";//"text/xml; charset=utf-8";
                                                        // request.ContentLength = oabpipe.getServiceTranRequest().Length;
                request.KeepAlive = false;
                writer = new StreamWriter(request.GetRequestStream());
                writer.Write(tranrequest);
                writer.Close();
                webResponse = (HttpWebResponse)request.GetResponse();
                Stream GetDataStream = webResponse.GetResponseStream();
                StreamReader GetDatafromStream = new StreamReader(GetDataStream);
                string responseStr = GetDatafromStream.ReadToEnd();
                Response.Redirect(responseStr, false);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }

        }
    }
}