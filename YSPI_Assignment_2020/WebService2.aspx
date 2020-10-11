<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebService2.aspx.cs" Inherits="WebService2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Υπηρεσία Ελέγχου Σφαλμάτων σε Μηχανήματα Fax (InterFax)</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-family: Arial, Helvetica, sans-serif; font-size: xx-large; font-weight: bold; text-align: center;">
        Υπηρεσία Ελέγχου Σφαλμάτων σε Μηχανήματα Fax <br />
        (InterFax)
        <br />
        <br />
    </div>
    <div style="background-color: #C0C0C0; border: thin solid #800000">

        

        <br />
&nbsp;<asp:Label ID="LabelErrorCodeMsg" runat="server" Height="40px" Text="1)Επιλέξτε έναν κωδικό σφάλματος, από την παρακάτω λίστα: " Width="236px"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;<asp:DropDownList ID="DropDownListErrorCodes" runat="server">
        </asp:DropDownList>
        <br />
        <br />
        &nbsp;<asp:Button ID="ButtonOK" runat="server" OnClick="ButtonOK_Click" Text="ΟΚ" ToolTip="Πατήστε το κουμπί για να εμφανιστεί η περιγραφή του επιλεγμένου σφάλματος" Width="33px" />
        <br />
        <br />
        &nbsp;<asp:Label ID="LabelErrorDescription" runat="server" Font-Italic="True" ForeColor="#CC0000"></asp:Label>
        <br />
        <br />
        <br />
        &nbsp;<asp:Label ID="LabelSuppTypesMsg" runat="server" Height="60px" Text="2) Εισάγετε έναν τύπο αρχείου κειμένου και ελέγξτε αν υποστηρίζεται από το μηχάνημα Fax:" Width="310px"></asp:Label>
        <br />
        &nbsp;<asp:TextBox ID="TextBoxSuppFileTypes" runat="server" Width="295px"></asp:TextBox>
        <br />
        <br />
        &nbsp;<asp:Button ID="ButtonCheck" runat="server" OnClick="ButtonCheck_Click" Text="Έλεγχος" />
        <br />
        <br />
        &nbsp;<asp:Label ID="LabelSuppFileTypes" runat="server"></asp:Label>
        <br />
        <br />
        &nbsp;<asp:Label ID="LabelAllFileTypes" runat="server" Font-Italic="True" ForeColor="Blue"></asp:Label>
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
