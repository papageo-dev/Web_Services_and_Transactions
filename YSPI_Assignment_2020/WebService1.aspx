<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebService1.aspx.cs" Inherits="WebService1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Υπηρεσία Μεταροπής Αριθμών σε Κείμενο (Number Conversion Service)</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-family: Arial, Helvetica, sans-serif; font-size: xx-large; font-weight: bold; text-align: center;">
        Υπηρεσία Μεταροπής Αριθμών σε Κείμενο <br />
        (Number Conversion Service)
        <br />
        <br />
    </div>
    <div style="background-color: #C0C0C0; border: thin solid #800000">
    
        <br />
&nbsp;<asp:Label ID="LabelInput" runat="server" Text="Εισαγωγή αριθμού για μετατροπή:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="LabelOutput" runat="server" Text="Αποτέλεσμα σε μορφή κειμένου:"></asp:Label>
        <br />
        &nbsp;<asp:TextBox ID="TextBoxInput" runat="server" Height="90px" TextMode="MultiLine" ToolTip="Παρακαλώ, εισάγετε αριθμό για μετατροπή σε μορφή κειμένου" Width="300px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBoxOutput" runat="server" Height="90px" TextMode="MultiLine" Width="300px" ForeColor="#666666">Εδώ θα εμφανιστεί ο αριθμός σε μορφή κειμένου, μετά την μετατροπή</asp:TextBox>
        <br />
        <br />
&nbsp;<asp:Label ID="LabelConvertTo" runat="server" Text="Μετατροπή σε:"></asp:Label>
        <asp:DropDownList ID="DropDownListConvertTo" runat="server">
        </asp:DropDownList>
        <br />
        <br />
        <br />
        &nbsp;<asp:Button ID="ButtonConvert" runat="server" OnClick="Button1_Click" Text="Μετατροπή" ToolTip="Μετατροπή σε μορφή κειμένου" />
        <br />
        <br />
    
        <br />
    
    </div>
    </form>
     <div style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: normal">
                
         <br />
                
        &nbsp;<asp:HyperLink ID="HyperLinkBackHomePage" runat="server" NavigateUrl="~/HomePage.aspx" ToolTip="Return to Home Page">Επιστροφή στην αρχική σελίδα</asp:HyperLink>
        
    </div>
</body>
</html>
