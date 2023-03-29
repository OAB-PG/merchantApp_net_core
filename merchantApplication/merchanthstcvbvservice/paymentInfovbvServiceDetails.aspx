<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeBehind="paymentInfovbvServiceDetails.aspx.cs" Inherits="merchantApplication.merchanthstcvbvservice.paymentInfovbvServiceDetails" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <script language="C#" runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
           // mrchHstVbvtrackId.Text = DateTime.Now.ToString("ddMMyyyyhhmmss");
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex);
        }

        finally
        {

        }
    }


    protected void Submit_Click(object sender, EventArgs e)
    {
        try
        {
            
            Session["transAmount"] = mrchHstVbvSeramount.Text.Trim();
            Session["transCardNumber"] = mrchHstVbvSercardNumber.Text.Trim();
            Session["transCvv"] = mrchHstVbvSercvv.Text.Trim();
            Session["transExpMM"] = mrchHstVbvSerexpmm.SelectedValue.ToString();
            Session["transExpYYYY"] = mrchHstVbvSerexpyy.SelectedValue.ToString();
            Session["transCardHolderName"] = mrchHstVbvSername.Text.Trim();

            Session["transUdf1"] = mrchHstVbvSerudf1.Text.Trim();
            Session["transUdf2"] = mrchHstVbvSerudf2.Text.Trim();
            Session["transUdf3"] = mrchHstVbvSerudf3.Text.Trim();
            Session["transUdf4"] = mrchHstVbvSerudf4.Text.Trim();
            Session["transUdf5"] = mrchHstVbvSerudf5.Text.Trim();
            Session["transTrackId"] = mrchHstVbvSertrackId.Text.Trim();
            Response.Redirect("paymentInfovbvServiceDetailsProcess.aspx", false);

        }
        catch (Exception ex)
        {
            Console.WriteLine(ex);
        }

        finally
        {

        }
    }

    </script>
 
<link rel="stylesheet" href="./css/bootstrap.min.css">
<script src="./css/jquery.min.js"></script>
<script src="./css/bootstrap.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

    <div class="container">
	<div class="panel panel-default">
		<div class="panel-body">
<form id="form1">

   

				<div class="form-group row">
					<label for="ActionLbl" class="col-sm-3 col-form-label">Amount</label>
					<div class="col-sm-3">
						<asp:TextBox runat="server" class="form-control" size="20"  id="mrchHstVbvSeramount" name="amount" value="0.100" />
					</div>
				</div>

				<div class="form-group row">
					<label for="cardNumberLbl" class="col-sm-3 col-form-label">Card Number</label>
					<div class="col-sm-3">
						<asp:TextBox runat="server" type="text" class="form-control" size="20"  id="mrchHstVbvSercardNumber" name="cardNumber" value="4012001037490006" />
					</div>
				</div>

				<div class="form-group row">
					<label for="cvvLbl" class="col-sm-3 col-form-label">CVV</label>
					<div class="col-sm-3">
						<asp:TextBox runat="server" type="text" class="form-control" size="20" id="mrchHstVbvSercvv" name="cvv" value="123" />
					</div>
				</div>

				<div class="form-group row">
					<label for="ActionLbl" class="col-sm-3 col-form-label">Expiry Date</label>
					<div class="col-sm-1">
                        <asp:DropDownList class="form-control" id="mrchHstVbvSerexpmm" runat="server">
                            <asp:ListItem Text="01" Value="1"></asp:ListItem>
                            <asp:ListItem Text="02" Value="2"></asp:ListItem>
                            <asp:ListItem Text="03" Value="3"></asp:ListItem>
                            <asp:ListItem Text="04" Value="4"></asp:ListItem>
                            <asp:ListItem Text="05" Value="5"></asp:ListItem>
                            <asp:ListItem Text="06" Value="6"></asp:ListItem>
                            <asp:ListItem Text="07" Value="7"></asp:ListItem>
                            <asp:ListItem Text="08" Value="8"></asp:ListItem>
                            <asp:ListItem Text="09" Value="9"></asp:ListItem>
                            <asp:ListItem Text="10" Value="10"></asp:ListItem>
                            <asp:ListItem Text="11" Value="11"></asp:ListItem>
                            <asp:ListItem Selected="True" Text="12" Value="12"></asp:ListItem>
                        </asp:DropDownList>
					</div>
					<div class="col-sm-2">
                        <asp:DropDownList class="form-control" id="mrchHstVbvSerexpyy" runat="server">
                            <asp:ListItem Text="2020" Value="2020"></asp:ListItem>
                            <asp:ListItem Selected="True" Text="2021" Value="2021"></asp:ListItem>
                            <asp:ListItem Text="2022" Value="2023"></asp:ListItem>
                            <asp:ListItem Text="2023" Value="2024"></asp:ListItem>
                            <asp:ListItem Text="2024" Value="2025"></asp:ListItem>
                            <asp:ListItem Text="2025" Value="2026"></asp:ListItem>
                        </asp:DropDownList>
					</div>
				</div>

				<div class="form-group row">
					<label for="cardHolderLbl" class="col-sm-3 col-form-label">Cardholder's Name</label>
					<div class="col-sm-3">
						<asp:TextBox runat="server"  type="text" class="form-control" size="20" id="mrchHstVbvSername" name="name" value="Cardholders Name" />
					</div>
				</div>


				<div class="form-group row">
					<label for="cardHolderLbl" class="col-sm-3 col-form-label">UDF 1</label>
					<div class="col-sm-3">
						<asp:TextBox runat="server" type="text" class="form-control" size="20" id="mrchHstVbvSerudf1" name="udf1" value="udf 111 value" />
					</div>
				</div>

				<div class="form-group row">
					<label for="cardHolderLbl" class="col-sm-3 col-form-label">UDF 2</label>
					<div class="col-sm-3">
						<asp:TextBox runat="server" type="text" class="form-control" size="20" id="mrchHstVbvSerudf2" name="udf2" value="udf 222 value" />
					</div>
				</div>

				<div class="form-group row">
					<label for="cardHolderLbl" class="col-sm-3 col-form-label">UDF 3</label>
					<div class="col-sm-3">
						<asp:TextBox runat="server" type="text" class="form-control" size="20" id="mrchHstVbvSerudf3" name="udf3" value="udf 333 value" />
					</div>
				</div>

				<div class="form-group row">
					<label for="cardHolderLbl" class="col-sm-3 col-form-label">UDF 4</label>
					<div class="col-sm-3">
						<asp:TextBox runat="server" type="text" class="form-control" size="20" id="mrchHstVbvSerudf4" name="udf4" value="udf 444 value" />
					</div>
				</div>

				<div class="form-group row">
					<label for="cardHolderLbl" class="col-sm-3 col-form-label">UDF 5</label>
					<div class="col-sm-3">
						<asp:TextBox runat="server" type="text" class="form-control" size="20" id="mrchHstVbvSerudf5" name="udf5" value="udf 555 value" />
					</div>
				</div>

				<div class="form-group row">
					<label for="cardHolderLbl" class="col-sm-3 col-form-label">Track Id</label>
					<div class="col-sm-3">
						<asp:TextBox runat="server" type="text" class="form-control" size="20" id="mrchHstVbvSertrackId" name="trckId" value="" />
					</div>
				</div>

                <div class="form-group row">
					<label for="expireDateLbl" class="col-sm-3 col-form-label"></label>
					<div class="col-sm-4">
						<asp:Button ID="SubmitService" runat="server" Text="Process" OnClick="Submit_Click" />
					</div>
				</div>




</form>
</div>
        </div></div>
        <script>
            document.getElementById("merchanthstd").className = "";
            document.getElementById("merchanthstdvbv").className = "active";
            document.getElementById("mercahnthostedinquiry").className = "";
            document.getElementById("bankhosted").className = "";
    </script>
</asp:Content>