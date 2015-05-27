<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Web_Validation._default" %>

<!DOCTYPE html>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <div class="container">
    <form id="form1" runat="server" class="form-horizontal">
        <h1>Tip Calculator</h1>
        <h4>Bill Details</h4>
        <div class="form-group">
            <label for="txtAmount">Amount:</label>
            <asp:TextBox ID="txtAmount" runat="server" required />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ErrorMessage="Required" ControlToValidate="txtAmount" Display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server"
                ErrorMessage="Enter a number greater than 0" ControlToValidate="txtAmount"
                Type="Double" MinimumValue="0.01" MaximumValue="1000" Display="Dynamic" CssClass="label label-danger"></asp:RangeValidator>
        </div>
        <div class="form-group">
            <label for="ddlPercent">Tip %:</label>
            <asp:DropDownList ID="ddlPercent" runat="server">
                <asp:ListItem Value=".1" Text="10%"></asp:ListItem>
                <asp:ListItem Value=".15" Text="15%" Selected="True"></asp:ListItem>
                <asp:ListItem Value=".2" Text="20%"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <asp:Button ID="btnCalculate" runat="server" Text="Calculate Tip" OnClick="btnCalculate_Click" CssClass="btn btn-primary" />
        <asp:Panel ID="pnlResults" runat="server" Visible="false">
            <h4>Totals</h4>
            <div>
                <label for="lblTip">Tip Amount:</label>
                <asp:Label ID="lblTip" runat="server"></asp:Label>
            </div>
            <div>
                <label for="lblTotal">Total:</label>
                <asp:Label ID="lblTotal" runat="server"></asp:Label>
            </div>
        </asp:Panel>
    </form>
        </div>
</body>
</html>
