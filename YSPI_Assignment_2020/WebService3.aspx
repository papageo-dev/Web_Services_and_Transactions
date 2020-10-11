<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebService3.aspx.cs" Inherits="WebService3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-family: Arial, Helvetica, sans-serif; font-size: xx-large; font-weight: bold; text-align: center;">
        Υπηρεσία Αναζήτησης Χειμικών Δομών/Ιδιοτήτων (MassSpecAPI)<br />
        <br />
    </div>
    <div style="background-color: #C0C0C0; border: thin solid #800000">
    
        <br />
    
        Η ChemSpider είναι μια βάση δεδομένων χημικών δομών που παρέχει γρήγορη πρόσβαση σε πάνω από 30 εκατομμύρια δομές, ιδιότητες και σχετικές πληροφορίες.<br />
        Παρακάτω μπορείτε να κάνετε αναζήτηση στοιχείων στην ChemSPider, με βάση το πρόθεμα που θα επιλέξετε.<br />
        <br />
        <br />
    
        &nbsp;<asp:Label ID="LabelTip1" runat="server" Text="Επιλέξτε το αρχικό γράμμα των χημικών δομών/ιδιοτήτων που επιθυμείτε να αναζητήσετε:"></asp:Label>
        <br />
        &nbsp;<asp:DropDownList ID="DropDownListABC" runat="server">
        </asp:DropDownList>
        <br />
        <br />
        &nbsp;<asp:Button ID="ButtonSearch" runat="server" OnClick="ButtonSearch_Click" Text="Αναζήτηση" ToolTip="Αναζήτηση στη βάση δεδομένων χημικών δομών &quot;ChemSpider&quot;" />
        <br />
        <br />
&nbsp;<asp:Label ID="LabelTip2" runat="server"></asp:Label>
        <br />
        <asp:BulletedList ID="BulletedListResult" runat="server" Height="19px" Width="323px" AppendDataBoundItems="True" BulletStyle="Numbered">
        </asp:BulletedList>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>

    <div style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: normal">
                
        <br />
                
        <asp:HyperLink ID="HyperLinkBackHomePage" runat="server" NavigateUrl="~/HomePage.aspx" ToolTip="Return to Home Page">Επιστροφή στην αρχική σελίδα</asp:HyperLink>
        
    </div>
    </form>
    </body>
</html>
