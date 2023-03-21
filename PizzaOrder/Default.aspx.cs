using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace PizzaOrder
{
    public partial class Default : System.Web.UI.Page
    {
        private String sessionFirstName;
        private String sessionID;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblName.Text = (string)Session["MySessionName"];
            txtID.Text = (string)Session["MySessionID"];
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtFirstName.Text.Trim().Length == 0)
            {
                sessionFirstName = "NULL";
            }
            else
            {
                sessionFirstName = txtFirstName.Text.Trim();
            }

            lblName.Text = sessionFirstName;
            Session["MySessionName"] = sessionFirstName;
            Response.Redirect("Page2.aspx");
        }

        protected void grdSelectedPerson_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtPizzaID.Text = grdSelectedPerson.SelectedValue.ToString();
            int idxx = 2;
            txtFirstName.Text = grdSelectedPerson.SelectedRow.Cells[idxx].Text;
            int idx = 3;
            txtPizzaPrice.Text = grdSelectedPerson.SelectedRow.Cells[idx].Text;
            int myNumber = int.Parse(grdSelectedPerson.SelectedRow.Cells[idxx].Text.ToString().Trim());
            grdSelectedHuman.SelectRow(myNumber - 1);
        }

        protected void btnShowSession_Click(object sender, EventArgs e)
        {
            if (txtFirstName.Text.Trim().Length == 0)
            {
                sessionFirstName = "NULL";
            }
            else
            {
                sessionFirstName = txtFirstName.Text.Trim();
            }

            lblName.Text = sessionFirstName;
            Session["MySessionName"] = sessionFirstName;
            Response.Write(sessionFirstName);
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnNewItem_Click(object sender, EventArgs e)
        {
            if (lblCheck.Text.Trim().Length == 0)
            {
                sessionID = "NULL";
            }
            else
            {
                sessionID = lblCheck.Text.Trim();
            }

            lblCheck.Text = sessionID;
            Session["MySessionID"] = sessionID;
            Response.Redirect("OrderItems.aspx");
        }

        protected void btnSaveNewItem_Click(object sender, EventArgs e)
        {
            PizzaDBEntities1 db = new PizzaDBEntities1();
            var person = new Person();
            person.FirstName = txtFirstName.Text.ToString();
            person.MyNumber = int.Parse(txtMyNumber.Text.ToString());

            db.SaveChanges();
            grdSelectedHuman.DataBind();
            grdSelectedHuman.DataBind();
        }

        protected void btnSaveEdit_Click(object sender, EventArgs e)
        {
            PizzaDBEntities1 db = new PizzaDBEntities1();
            var person = db.People.Find(grdSelectedHuman.SelectedValue);
            person.FirstName = txtFirstName.Text.ToString();
            person.MyNumber = int.Parse(txtMyNumber.Text.ToString());
            db.SaveChanges();
            grdSelectedHuman.DataBind();
            grdSelectedHuman.DataBind();
        }

        protected void btnDeleteItem_Click(object sender, EventArgs e)
        {
            PizzaDBEntities1 db = new PizzaDBEntities1();
            var person = db.People.Find(grdSelectedHuman.SelectedValue);
            db.Entry(person).State = System.Data.Entity.EntityState.Deleted;
            db.SaveChanges();
            grdSelectedHuman.DataBind();
            grdSelectedHuman.DataBind();
        }

        protected void grdSelectedHuman_SelectedIndexChanged(object sender, EventArgs e)
        {
            int idc = 1;
            txtID.Text = grdSelectedHuman.SelectedRow.Cells[idc].Text;
            lblCheck.Text = grdSelectedHuman.SelectedRow.Cells[idc].Text;

            int idx = 2;
            txtFirstName.Text = grdSelectedHuman.SelectedRow.Cells[idx].Text;
            int idxx = 3;
            txtMyNumber.Text = grdSelectedHuman.SelectedRow.Cells[idxx].Text;
        }

        protected void grdSelectedHuman_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
    }




