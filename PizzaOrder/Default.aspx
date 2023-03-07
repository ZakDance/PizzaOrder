<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PizzaOrder.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblID" runat="server" Text="ID:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblCheck" runat="server" Text="lblCheck"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblFirstName" runat="server" Text="First Name:"></asp:Label>
            <br />
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="txtMyNumber" runat="server" Text="My Number:"></asp:Label>
            <br />
            <asp:TextBox ID="txtFirstName0" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Person] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Person] ([FirstName], [MyNumber]) VALUES (@FirstName, @MyNumber)" SelectCommand="SELECT * FROM [Person]" UpdateCommand="UPDATE [Person] SET [FirstName] = @FirstName, [MyNumber] = @MyNumber WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="MyNumber" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="MyNumber" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="grdSelectedPerson" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataKeyNames="Id" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="MyNumber" HeaderText="MyNumber" SortExpression="MyNumber" />
                </Columns>
            </asp:GridView>
            <br />
&nbsp;
            <asp:Button ID="btnNewItem" runat="server" OnClick="btnNewItem_Click" Text="New Item" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnSaveNewItem" runat="server" Text="Save New Item" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnSaveEdit" runat="server" Text="Save Edit" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDeleteItem" runat="server" Text="Delete Item" />
            <br />
            <br />
            &nbsp; 
            <br />
            <br />
            <asp:GridView ID="grdSelectedHuman" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataKeyNames="Id" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="grdSelectedPerson_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="MyNumber" HeaderText="MyNumber" SortExpression="MyNumber" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource5">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Customer_ID" HeaderText="Customer_ID" SortExpression="Customer_ID" />
                    <asp:BoundField DataField="PizzaPrice" HeaderText="PizzaPrice" SortExpression="PizzaPrice" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Person] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Person] ([FirstName], [MyNumber]) VALUES (@FirstName, @MyNumber)" SelectCommand="SELECT * FROM [Person]" UpdateCommand="UPDATE [Person] SET [FirstName] = @FirstName, [MyNumber] = @MyNumber WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="MyNumber" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="MyNumber" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Label ID="lblPizza" runat="server" Text="Pizza ID:"></asp:Label>
            <asp:TextBox ID="txtPizzaID" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblCustomer" runat="server" Text="CustomerID:"></asp:Label>
            <asp:TextBox ID="txtCustomerID" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblPizzaPrice" runat="server" Text="Pizza Price:"></asp:Label>
            <asp:TextBox ID="txtPizzaPrice" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblName" runat="server" Text="SessionName"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnShowSession" runat="server" Text="ShowSession" />
            <br />
            <br />
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click1" Text="Submit" />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
