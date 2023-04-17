<%@ Page Title ="Employee Management System" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EmployeeCRUDApplicaton.Default" MasterPageFile="~/Site.Master" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style ="text-align:center;">
        <h1 ><%: Title %>.</h1>
        <p style ="font-size: 20px">Visit <a href ="\EmployeeDashboard">EmployeeManagementDashboard</a> to browse employees and <a href ="/AddEmployee"> Add Employee</a> to start adding employees.</p>
    </div>

</asp:Content>
