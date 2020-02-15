using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineFlowerShopForm
{
    public partial class FrontPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void CancelClick(object sender,ImageClickEventArgs e)
        {
            Response.Redirect("BlankPage.aspx");
        }
        protected void StartAgainClick(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("FrontPage.aspx");
        }
        protected void PaymentClick(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("PaymentPage.aspx");
        }
    }
}