<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentPage.aspx.cs" Inherits="OnlineFlowerShopForm.PaymentPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <script type="text/javascript">
                function Hide() {
                    var str = "Payment completed successfully";
                    document.getElementById("Hidden1").value = str;
                }
            </script>
            <input id="Hidden1" type="hidden" runat="server" />
            <asp:Button ID="Button1" runat="server" OnClientClick="Hide()" Text="Click To Pay" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
