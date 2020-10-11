using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebService1 : System.Web.UI.Page
{
    //Declaration of Web Services

    //www.dataaccess.com/webservicesserver/NumberConversion.wso
    com.dataaccess.www.NumberConversion myNumConv = new com.dataaccess.www.NumberConversion();

    protected void Page_Load(object sender, EventArgs e)
    {
        //If page is loading for first time...
        if (!IsPostBack)
        {
            String[] formats = { "Απλό Κείμενο", "Δολάριο" };

            //Initialize a dropdown list with a prompt message
            DropDownListConvertTo.Items.Add("- Επιλογή είδους μετατροπής -");

            //Fill DropDownListConvertTo with all available formats to convert
            for (int i = 0; i < formats.Length; i++)
            {
                DropDownListConvertTo.Items.Add(formats[i].ToString());
            }
        }           
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Identify if input String is Number
        if (TextBoxInput.Text.All(char.IsNumber) && !String.IsNullOrEmpty(TextBoxInput.Text))
        {
            if (DropDownListConvertTo.Text.Equals("Απλό Κείμενο")) {

                //Web Service Input(s)
                ulong inputNum = (ulong)Convert.ToInt64(TextBoxInput.Text);        //Convert input String to number(ulong)

                //Web Service Output(s)
                String outputText = myNumConv.NumberToWords(inputNum);             /*Call the operation "NumberToWords()" of Web Service
                                                                                   to convert input number to simple words*/
                //Show Output(s) in TextBox
                TextBoxOutput.Text = outputText;
            }
            else if (DropDownListConvertTo.Text.Equals("Δολάριο")) {

                //Web Service Input(s)
                Decimal inputNumDollars = Convert.ToDecimal(TextBoxInput.Text);    //Convert input String to number(Decimal)

                //Web Service Output(s)
                String outputText = myNumConv.NumberToDollars(inputNumDollars);    /*Call the operation "NumberToDollars()" of Web Service
                                                                                   to convert input number to dollars words*/
                //Show Output(s) in TextBox
                TextBoxOutput.Text = outputText;
            }    
        }
        else
        {
            //Print Warning Message in TextBox
            TextBoxOutput.Text = "Μη έγκυρη είσοδος! Παρακαλώ, εισάγετε αριθμό και δοκιμάστε ξανά.";
        } 
    }
}