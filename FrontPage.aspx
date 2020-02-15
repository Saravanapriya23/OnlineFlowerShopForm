<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrontPage.aspx.cs" Inherits="OnlineFlowerShopForm.FrontPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"><title>FrontPage</title>
    <link href="StyleForm.css" rel="stylesheet" type="text/css" />
    <script src="Validation.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="center">
            <div>
                <header class="top"><h1>FLOWER SHOP ONLINE</h1></header>
            </div>
            <div class="empty"></div>
            <div>
                <div class="row">
        <div class="column">
            <asp:Image ImageUrl="~/Images/img.png" runat="server" CssClass="flower-image" />
        </div>
        <div class="column_content">
            <div>
                <h2>Secure Payment Page</h2>
                <table style="width: 75%">
                    <tr>
                        <td>
                            <a><b>Select Language</b></a>
                        </td>
                        <td>
                            <asp:DropDownList runat="server">
                                <asp:ListItem Text="English" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="Hindi"></asp:ListItem>
                                <asp:ListItem Text="French"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td><a>Payment method</a></td>
                        <td><b>Visa</b></td>
                    </tr>
                    <tr>
                        <td>Description</td>
                        <td><b>Item ordered</b></td>
                        <td rowspan="2">
                            <asp:Image ImageUrl="~/Images/VisaLogo.png" runat="server" CssClass="logo-image" /></td>
                    </tr>
                    <tr>
                        <td>Amount</td>
                        <td><b>£100.00</b></td>
                    </tr>
                </table>
                </div>
            <div class="table_bottom">
                <h3 class="heading">Card Details</h3>
                <p>You must fill in fields marked with *</p>
                <table class="table_design">
                    <tr>
                        <td style="width: 30%">*Card number</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtcardNumber" onchange="validateCardNumber()" required=" " Width="90%"></asp:TextBox> />
                        </td>
                    </tr>
                    <tr>
                        <td>*<ins>Security code</ins></td>
                        <td>
                            <asp:TextBox runat="server" ID="txtSecurityCode" onchange="validateSecurityCode()" MaxLength="3" Width="20%" required=" "/>
                        </td>
                    </tr>
                    <tr>
                        <td>*Expiry date</td>
                        <td>
                            <asp:DropDownList runat="server" ItemType="Month" Width="10%" required=" ">
                                <asp:ListItem Value="1" Selected="False" />
                                <asp:ListItem Value="2" />
                                <asp:ListItem Value="3" />
                                <asp:ListItem Value="4" />
                                <asp:ListItem Value="5" />
                                <asp:ListItem Value="6" />
                                <asp:ListItem Value="7" />
                                <asp:ListItem Value="8" />
                                <asp:ListItem Value="9" />
                                <asp:ListItem Value="10" />
                                <asp:ListItem Value="11" />
                                <asp:ListItem Value="12" />
                            </asp:DropDownList>
                            <asp:DropDownList runat="server" ItemType="Year" Width="10%" required=" ">
                                <asp:ListItem Value="2021" Selected="False" />
                                <asp:ListItem Value="2022" />
                                <asp:ListItem Value="2023" />
                                <asp:ListItem Value="2024" />
                                <asp:ListItem Value="2025" />
                                <asp:ListItem Value="2026" />
                                <asp:ListItem Value="2027" />
                                <asp:ListItem Value="2028" />
                                <asp:ListItem Value="2029" />
                                <asp:ListItem Value="2030" />
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>*Cardholder's name</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtName" onchange="validateName()" required=" " Width="90%" />
                        </td>
                    </tr>
                </table>
            <div class="table_bottom">
                <h3 class="heading">Cardholder details</h3>
                <p>You must fill in fields marked with *</p>
                <table class="table_design">
                    <tr>
                        <td style="width: 30%">*Address 1</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtFirstAddress" onchange="validateAddress()" required=" " Width="90%" /></td>
                    </tr>
                    <tr>
                        <td><a>&nbsp;&nbsp;Address 2</a></td>
                        <td>
                            <asp:TextBox runat="server" ID="txtAddress2" Width="90%" /></td>
                    </tr>
                    <tr>
                        <td>&nbsp;&nbsp;Address 3</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtAddress3" Width="90%" /></td>
                    </tr>
                    <tr>
                        <td>*Town/City</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtCity" Width="90%" required=" "/></td>
                    </tr>
                    <tr>
                        <td>&nbsp;&nbsp;Region</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtRegion" Width="90%" /></td>
                    </tr>
                    <tr>
                        <td>*Postcode/Zip code</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtPostcode" Width="40%" required=" " /></td>
                    </tr>
                    <tr>
                        <td>*Country</td>
                        <td>
                            <asp:DropDownList runat="server" Width="50%" required=" ">
                                <asp:ListItem Text="United Kingdom" />
                                <asp:ListItem Text="India" />
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td>&nbsp;&nbsp;Telephone</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtTelephone" onchange="validatePhoneNo()" Width="40%" /></td>
                    </tr>
                    <tr>
                        <td>&nbsp;&nbsp;Fax</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtFax" onchange="validateFax()" Width="40%"/></td>
                    </tr>
                    <tr>
                        <td>*Email address</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtEmail" onchange="validateEmail()" Width="90%" required=" "/></td>
                    </tr>
                </table>
            </div>
                </div>
            <div>
                <table style="width: 100%">
                    <tr>
                        <td>
                            <asp:ImageButton ImageUrl="~/Images/startAgain.png" runat="server" Width="25px" Height="25px" OnClick="StartAgainClick"
/>
                            <input type="button" name="startAgain" value="START AGAIN" class="button" />
                        </td>
                        <td style="text-align: right">
                            <input type="submit" name="makePayment" value="MAKE PAYMENT" class="button" />
                            <asp:ImageButton ImageUrl="~/Images/Payment.png" runat="server" Width="25px" Height="25px" OnClick="PaymentClick" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:ImageButton ImageUrl="~/Images/cancel.png" runat="server" Width="25px" Height="25px" OnClick="CancelClick" />
                            <input type="reset" name="cancel" value="CANCEL" class="button" />
                            <!--<asp:HyperLink NavigateUrl="https://www.termsfeed.com/blog/sample-return-policy-ecommerce-stores/" runat="server" Value="CANCEL" />-->
                        </td>
                    </tr>
                </table>
            </div>
            <hr />
            <div>
                <h2>Refunds and Returns</h2>
                <p>
                    For more information vist our
                    <asp:HyperLink NavigateUrl="https://www.termsfeed.com/blog/sample-return-policy-ecommerce-stores/" runat="server" Text="Refunds and Returns Policy" />
                    <br />
                    <asp:Image ImageUrl="~/Images/pay.png" runat="server" />
                    <a>For help with your payment visit the </a>
                    <asp:HyperLink NavigateUrl="https://www.worldpay.com/en-gb/index" runat="server" Text="WorldPay Help" ForeColor="Black" />
                </p>
            </div>
        </div>
    </div>
            </div>
            <div>
                <h2 class="bottom">&nbsp;&nbsp;Thank you for shopping at Flowershop. Have a nice day
                </h2>
            </div>
        </div>
    </form>
</body>
</html>
