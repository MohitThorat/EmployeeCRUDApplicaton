<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="EmployeeCRUDApplicaton.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your contact page.</h3>
    <address>
        Mohit Thorat<br />
        Talav Chowk,Navi Mumbai 410218<br />
        <abbr title="Phone">P:</abbr>
        93214454**
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">mohit.thorat777@gmail.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
    </address>
</asp:Content>
