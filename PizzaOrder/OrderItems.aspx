<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderItems.aspx.cs" Inherits="PizzaOrder.OrderItems" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblID" runat="server" Text="ID: "></asp:Label>
            <asp:TextBox ID="txtID" runat="server" ReadOnly="True"></asp:TextBox>
        </div>
        <asp:RadioButton ID="rdSmallPizza" runat="server" AutoPostBack="True" GroupName="grpSize" Text="Small Pizza (£1.50)" />
        <br />
        <br />
        <asp:RadioButton ID="rdLargePizza" runat="server" AutoPostBack="True" Checked="True" GroupName="grpSize" Text="Large Pizza (£2.20)" />
        <br />
        <br />
        <asp:RadioButton ID="rdThinBasePizza" runat="server" AutoPostBack="True" GroupName="grpBase" Text="Thin Base Pizza (+ £0.20)" />
        <br />
        <br />
        <asp:RadioButton ID="rdThickBasePizza" runat="server" AutoPostBack="True" Checked="True" GroupName="grpBase" Text="Thick Base Pizza (+ £0.90)" />
        <br />
        <br />
        <asp:CheckBox ID="cbSalami" runat="server" AutoPostBack="True" Text="Salami (+ £1.10)" />
        <br />
        <br />
        <asp:CheckBox ID="cbMushrooms" runat="server" AutoPostBack="True" Text="Mushrooms (+ £0.90)" />
        <br />
        <br />
        <asp:CheckBox ID="cbOnions" runat="server" AutoPostBack="True" Text="Onions (+ £0.80)" />
        <br />
        <br />
        <asp:CheckBox ID="cbGreenPeppers" runat="server" AutoPostBack="True" Text="Green Peppers (+ £0.70)" />
        <br />
        <br />
        <asp:CheckBox ID="cbExtraCheese" runat="server" AutoPostBack="True" Text="Extra Cheese (+ £0.60)" />
        <br />
        <br />
        <br />
        <asp:Button ID="btnTotal" runat="server" OnClick="btnTotal_Click" Text="Click to TOTAL" />
        <br />
        <br />
        <asp:Label ID="lblTotal" runat="server" Text="Total: £"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtTotal" runat="server" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="btnCommit" runat="server" OnClick="btnCommit_Click" Text="COMMIT to DB" />
        <br />
        <br />
        <br />
        <asp:GridView ID="grdSelectedPizza" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Customer_ID" HeaderText="Customer_ID" SortExpression="Customer_ID" />
                <asp:BoundField DataField="PizzaPrice" HeaderText="PizzaPrice" SortExpression="PizzaPrice" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <br />
        <asp:Button ID="btnReturn" runat="server" OnClick="btnReturn_Click" Text="Return to Default Page" />
    </form>
</body>
</html>
