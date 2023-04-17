<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EmployeeCRUDApplicaton.EmployeeDashboard" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h3>All Employees</h3>
    </div>
    <h4>
        <div class="text-danger">
            <asp:Literal ID="ltError" runat="server" Visible="false"></asp:Literal>
        </div>
    </h4>
    <div>
        <asp:GridView class="table table-hover" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EmployeeID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" AllowCustomPaging="True" AllowPaging="True" AllowSorting="True" PageSize="20">
            <Columns>
                <asp:CommandField HeaderText="Actions" ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" InsertVisible="False" ReadOnly="True" SortExpression="EmployeeID" />
                <asp:TemplateField HeaderText="FullName" SortExpression="FullName">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtName" runat="server" Text='<%# Bind("FullName") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name cannot be blank" ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("FullName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="City" SortExpression="City">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtCity" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="City cannot be blank" ControlToValidate="txtCity" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email" SortExpression="Email">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtEmail" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email cannot be blank" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter proper email format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Age" SortExpression="Age">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtAge" runat="server" Text='<%# Bind("Age") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Age cannot be blank" ControlToValidate="txtAge" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age must be between 18 to 60" ControlToValidate="txtAge" ForeColor="Red" MaximumValue="80" MinimumValue="18"></asp:RangeValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Age") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="MobileNo" SortExpression="MobileNo">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtMobile" runat="server" Text='<%# Bind("MobileNo") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Mobile cannot be blank" ControlToValidate="txtMobile" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtMobile" ErrorMessage="Mobile number must be 10 digit" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("MobileNo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="DateOfBirth" SortExpression="DateOfBirth">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtBirthday" runat="server" type="date" Text='<%# Bind("DateOfBirth", "{0:yyyy/MM/dd}") %>'></asp:TextBox>
                        <asp:RangeValidator ID="rvDate" runat="server" ControlToValidate="txtBirthday" ErrorMessage="Invalid Date" Type="Date" MinimumValue="01/01/1900" MaximumValue="01/01/2100" Display="Dynamic" ForeColor="Red"></asp:RangeValidator>
                        <asp:RequiredFieldValidator ID="birthdayValidate" runat="server" ErrorMessage="Birthday cannot be blank" ControlToValidate="txtBirthday" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("DateOfBirth", "{0:dd/MM/yyyy}") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connectionstring %>" SelectCommand="SELECT [EmployeeID], [FullName], [City], [Email], [Age], [MobileNo], [DateOfBirth] FROM [Employee] WHERE ([IsDeleted] = @IsDeleted) ORDER BY [EmployeeID]" DeleteCommand="Update Employee set Isdeleted = 1, modifiedtime = CURRENT_TIMESTAMP where Employeeid = @EmployeeId" InsertCommand="INSERT INTO [Employee] ([FullName], [City], [Email], [Age], [MobileNo], [DateOfBirth]) VALUES (@FullName, @City, @Email, @Age, @MobileNo, @DateOfBirth)" UpdateCommand="UPDATE [Employee] SET [FullName] = @FullName, [City] = @City, [Email] = @Email, [Age] = @Age, [MobileNo] = @MobileNo, [DateOfBirth] = @DateOfBirth,modifiedtime = CURRENT_TIMESTAMP WHERE [EmployeeID] = @EmployeeID">
            <DeleteParameters>
                <asp:Parameter Name="EmployeeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FullName" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Age" Type="Int32" />
                <asp:Parameter Name="MobileNo" Type="String" />
                <asp:Parameter DbType="Date" Name="DateOfBirth" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="False" Name="IsDeleted" Type="Boolean" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="FullName" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Age" Type="Int32" />
                <asp:Parameter Name="MobileNo" Type="String" />
                <asp:Parameter DbType="Date" Name="DateOfBirth" />
                <asp:Parameter Name="EmployeeID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>

</asp:Content>
