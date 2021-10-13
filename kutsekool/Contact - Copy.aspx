<%@ Page Title="Õpilane" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="kutsekool.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="oppilaneId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="Black" Width="440px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="eesnimi" HeaderText="eesnimi" SortExpression="eesnimi" />
                <asp:BoundField DataField="perenimi" HeaderText="perenimi" SortExpression="perenimi" />
                <asp:BoundField DataField="sunniaeg" HeaderText="sunniaeg" SortExpression="sunniaeg" />
                <asp:BoundField DataField="oppilaneId" HeaderText="oppilaneId" InsertVisible="False" ReadOnly="True" SortExpression="oppilaneId" Visible="False" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kutsekoolRimitsenConnectionString1 %>" DeleteCommand="DELETE FROM [opilane] WHERE [oppilaneId] = @oppilaneId" InsertCommand="INSERT INTO [opilane] ([eesnimi], [perenimi], [sunniaeg]) VALUES (@eesnimi, @perenimi, @sunniaeg)" SelectCommand="SELECT [eesnimi], [perenimi], [sunniaeg], [oppilaneId] FROM [opilane]" UpdateCommand="UPDATE [opilane] SET [eesnimi] = @eesnimi, [perenimi] = @perenimi, [sunniaeg] = @sunniaeg WHERE [oppilaneId] = @oppilaneId">
            <DeleteParameters>
                <asp:Parameter Name="oppilaneId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="eesnimi" Type="String" />
                <asp:Parameter Name="perenimi" Type="String" />
                <asp:Parameter DbType="Date" Name="sunniaeg" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="eesnimi" Type="String" />
                <asp:Parameter Name="perenimi" Type="String" />
                <asp:Parameter DbType="Date" Name="sunniaeg" />
                <asp:Parameter Name="oppilaneId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </h2>
    <h2>Uue õpilane lisamine<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="oppilaneId" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
        <EditRowStyle BackColor="#7C6F57" />
        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="eesnimi" HeaderText="eesnimi" SortExpression="eesnimi" />
            <asp:BoundField DataField="perenimi" HeaderText="perenimi" SortExpression="perenimi" />
            <asp:BoundField DataField="sunniaeg" HeaderText="sunniaeg" SortExpression="sunniaeg" />
            <asp:BoundField DataField="oppilaneId" HeaderText="oppilaneId" InsertVisible="False" ReadOnly="True" SortExpression="oppilaneId" Visible="False" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        </asp:DetailsView>
    </h2>
    <p>&nbsp;</p>
    <p>&nbsp;</p>




</asp:Content>
