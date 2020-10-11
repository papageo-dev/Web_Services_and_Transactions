<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Υπηρεσίες και Συναλλαγές Παγκόσμιου Ιστού - Αρχική Σελίδα</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-family: Arial, Helvetica, sans-serif; font-size: xx-large; font-weight: bold; text-decoration: underline overline; text-align: center;">
    
        Υπηρεσίες και Συναλλαγές Παγκόσμιου Ιστού
    
        <br />
    
    </div>
     <div style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bold; text-align: center;">
    
         <br />
    
        Άσκηση: Υπηρεσίες Ιστού σε περιβάλλον .NET<br />
         <br />
         Απρίλιος 2020
    
         <br />
    
    </div>
    <div style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bold; text-align: center; text-decoration: underline overline; color: #800000;">
    
        <br />
    
        ΠΑΠΑΓΕΩΡΓΙΟΥ ΓΕΩΡΓΙΟΣ (dai17233)
    
        <br />
    
        <br />
    
    </div>
    <div style="background-color: #C0C0C0; border: thin solid #800000">
        <p style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: normal; text-decoration: underline">
            Υπηρεσίες Ιστού (Web Services):</p>
        <p>
            1) <asp:HyperLink ID="HyperLinkWebService1" runat="server" NavigateUrl="~/WebService1.aspx">Υπηρεσία Μεταροπής Αριθμών σε Κείμενο (Number Conversion Service)</asp:HyperLink>
        </p>
        <p>
            2) <asp:HyperLink ID="HyperLinkWebService2" runat="server" NavigateUrl="~/WebService2.aspx">Υπηρεσία Ελέγχου Σφαλμάτων σε Μηχανήματα Fax (InterFax)</asp:HyperLink>
        </p>
        <p>
            3)
            <asp:HyperLink ID="HyperLinkWebService3" runat="server" NavigateUrl="~/WebService3.aspx">Υπηρεσία Αναζήτησης Χειμικών Δομών/Ιδιοτήτων (MassSpecAPI)</asp:HyperLink>
        </p>
    </div>
    </form>
</body>
</html>
