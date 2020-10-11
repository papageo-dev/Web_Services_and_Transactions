using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class WebService3 : System.Web.UI.Page
{
    //Declaration of Web Services

    //www.chemspider.com/MassSpecAPI.asmx
    com.chemspider.www.MassSpecAPI chemWS = new com.chemspider.www.MassSpecAPI();

    protected void Page_Load(object sender, EventArgs e)
    {
        //If page is loading for first time...
        if (!IsPostBack)
        {
            //Initialize a dropdown list with a prompt message
            DropDownListABC.Items.Add("- Επιλέξτε αρχικό γράμμα -");

            //Initialize an Array with all alphabet letters in English
            string[] abc = { "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S","T","U","V","W","X","Y","Z"};

            //Fill DropDownListABC with all alphabet from abc[]
            for (int i=0; i<abc.Length; i++)
            {
                DropDownListABC.Items.Add(abc[i]);
            }
        }
    }

    protected void ButtonSearch_Click(object sender, EventArgs e)
    {
        //Declaration of an array of Strings
        string[] allChem = chemWS.GetDatabases(); /*Call the operation "GetDatabases()" of Web Service,
                                                    to GET the list of all datasources in ChemSpider*/
        
        //Clear all items of BulletedListResult
        BulletedListResult.Items.Clear();

        //Fill the BulletedListResult
        for (int i=0; i<allChem.Length; i++)
        {
            //Check for elements, which starts with the selected prefix fro DropDownListABC
            if (allChem[i].StartsWith(DropDownListABC.Text))
            {
                //Display an info message
                LabelTip2.Text = "Χειμικές Δομές/Ιδιότητες από " + "'" + DropDownListABC.Text + "'" + ":";
                //Add these elements to BulletedListResult and display them
                BulletedListResult.Items.Add(allChem[i]);
            }
        }
    }
}