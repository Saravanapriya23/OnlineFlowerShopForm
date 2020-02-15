<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BlankPage.aspx.cs" Inherits="OnlineFlowerShopForm.BlankPage" %>

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
                    var str = "Thank you For visiting our Page";
                    document.getElementById("Hidden1").value = str;
                }
            </script>
            <input id="Hidden1" type="hidden" runat="server" />
            <asp:Button ID="Button1" runat="server" OnClientClick="Hide()" Text="Click To Exit" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
