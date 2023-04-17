<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="AddEmployee.aspx.cs" Inherits="EmployeeCRUDApplicaton.AddEmployee" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Kindly Input Employee Details:</h3>
    <div class="form-group">
        <h4>
            <div class="text-danger">
                <asp:Literal ID="ltError" runat="server" Visible="false"></asp:Literal>
            </div>
            <div class="text-success">
                <asp:Literal ID="ltSuccess" runat="server" Visible="false"></asp:Literal>
            </div>
        </h4>
        <label for="txtName">Full Name :</label><asp:TextBox ID="txtName" class="form-control" placeholder="Enter Full Name" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name cannot be blank" ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
        <label for="birthday">Birthday:</label>
        <asp:TextBox class="form-control" type="date" ID="txtBirthday" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="rvDate" runat="server" ControlToValidate="txtBirthday" ErrorMessage="Invalid Date" Type="Date" MinimumValue="01/01/1900" MaximumValue="01/01/2100" Display="Dynamic" ForeColor="Red"></asp:RangeValidator>
        <asp:RequiredFieldValidator ID="birthdayValidate" runat="server" ErrorMessage="Birthday cannot be blank" ControlToValidate="txtBirthday" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">

        <label for="txtEmail">Email :</label><asp:TextBox class="form-control" ID="txtEmail" placeholder="Enter Email" runat="server"></asp:TextBox>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email cannot be blank" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>

        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter proper email format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </div>
    <div class="form-group">

        <label id="lbltxtMobile">Mobile :</label><asp:TextBox class="form-control" ID="txtMobile" placeholder="Enter Mobile" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Mobile cannot be blank" ControlToValidate="txtMobile" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtMobile" ErrorMessage="Mobile number must be 10 digit" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
    </div>
    <div class="form-group">
        <label for="txtAge">Age :</label><asp:TextBox ID="txtAge" class="form-control" placeholder="Enter Age" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Age cannot be blank" ControlToValidate="txtAge" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age must be between 18 to 60" ControlToValidate="txtAge" ForeColor="Red" MaximumValue="80" MinimumValue="18"></asp:RangeValidator>
    </div>
    <div class="form-group">
        <label for="TextCity">City :</label><asp:TextBox class="form-control" ID="txtCity" placeholder="Enter City" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="City cannot be blank" ControlToValidate="txtCity" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
    <asp:Button class="btn btn-primary" ID="btnSubmit" runat="server" Text="Submit"
        OnClick="btnSubmit_Click" />

</asp:Content>
