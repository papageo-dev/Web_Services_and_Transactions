using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebService2 : System.Web.UI.Page
{
    //Declaration of Web Services

    //ws.interfax.net/dfs.asmx
    net.interfax.ws.InterFax faxWS = new net.interfax.ws.InterFax();

    protected void Page_Load(object sender, EventArgs e)
    {
        //If page is loading for first time...
        if (!IsPostBack)
        {
            //Initialize a dropdown list with a prompt message
            DropDownListErrorCodes.Items.Add("- Επιλογή κωδικού σφάλματος -");

            //Declaration of an array, that contains all error codes and their descriptions
            net.interfax.ws.ErrorMessage[] allErrorCodes = faxWS.GetAllErrorCodes();         /*Call the operation "GetAllErrorCodes()"
                                                                                               of Web Service, to GET all error 
                                                                                               Codes & Descriptions*/
            //Fill DropDownListErrorCodes with all error codes 
            for (int i=0; i<allErrorCodes.Length; i++)
            {
                //Convert Code to String and add it to DropDownListErrorCodes
                DropDownListErrorCodes.Items.Add((allErrorCodes[i].Code).ToString());
            }
        }
    }


    protected void ButtonOK_Click(object sender, EventArgs e)
    {
        //Convert selected element(Code) from Dropdownlist to int
        int selectedErrorCode = 0;
        Int32.TryParse(DropDownListErrorCodes.Text, out selectedErrorCode);

        /*Call the operation "GetErrorCodeDescription()" of Web Service,
          to GET the description of selected error code and show it with a Label*/
        LabelErrorDescription.Text = "Περιγρασή Σφάλματος: " + selectedErrorCode +" " + faxWS.GetErrorDescription(selectedErrorCode);
    }


    protected void ButtonCheck_Click(object sender, EventArgs e)
    {
        //Call the opertion "IsSupportedFileType()" of Web Service and check the input file's type
        if (faxWS.IsSupportedFileType(TextBoxSuppFileTypes.Text))
        {
            LabelAllFileTypes.Text = "";
            LabelSuppFileTypes.Text = "Ο τύπος αρχείων κειμένου " + TextBoxSuppFileTypes.Text + " υποστηρίζεται!";
        }
        else
        {
            LabelSuppFileTypes.Text = "Ο τύπος αρχείων κειμένου " + TextBoxSuppFileTypes.Text + " ΔΕΝ υποστηρίζεται!";

            //Call the operation "GetSupportedFileTypes()" of Web Service, to GET all supported file types and display them with a Label
            string allSuppFileTypes = faxWS.GetSupportedFileTypes();
            LabelAllFileTypes.Text = "Οι υποστηριζόμενοι τύποι αρχείων κειμένου είναι: \n" + allSuppFileTypes;
        }    
    }
}