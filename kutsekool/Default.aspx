<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="kutsekool._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


        <h1>Noorem Tarkvaraarendaja õppeained</h1>
   

    
        <div class="col-md-4">
           
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="ainedId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="Black" Width="429px">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="aineNimetus" HeaderText="aineNimetus" SortExpression="aineNimetus" />
                    <asp:BoundField DataField="kirjeldus" HeaderText="kirjeldus" SortExpression="kirjeldus" />
                    <asp:BoundField DataField="ainedId" HeaderText="ainedId" InsertVisible="False" ReadOnly="True" SortExpression="ainedId" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kutsekoolRimitsenConnectionString1 %>" DeleteCommand="DELETE FROM [oppeaine] WHERE [ainedId] = @ainedId" InsertCommand="INSERT INTO [oppeaine] ([aineNimetus], [kirjeldus]) VALUES (@aineNimetus, @kirjeldus)" SelectCommand="SELECT [aineNimetus], [kirjeldus], [ainedId] FROM [oppeaine]" UpdateCommand="UPDATE [oppeaine] SET [aineNimetus] = @aineNimetus, [kirjeldus] = @kirjeldus WHERE [ainedId] = @ainedId">
                <DeleteParameters>
                    <asp:Parameter Name="ainedId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="aineNimetus" Type="String" />
                    <asp:Parameter Name="kirjeldus" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="aineNimetus" Type="String" />
                    <asp:Parameter Name="kirjeldus" Type="String" />
                    <asp:Parameter Name="ainedId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <h2>Uue õppaine lisamine</h2>
            <h3>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ainedId" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="137px">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="aineNimetus" HeaderText="aineNimetus" SortExpression="aineNimetus" />
                        <asp:BoundField DataField="kirjeldus" HeaderText="kirjeldus" SortExpression="kirjeldus" />
                        <asp:BoundField DataField="ainedId" HeaderText="ainedId" InsertVisible="False" ReadOnly="True" SortExpression="ainedId" Visible="False" />
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                </asp:DetailsView>
            </h3>
            <p>
                &nbsp;</p>
           
        </div>
        <div class="col-md-4">
            
            <p>
                &nbsp;</p>
            
        </div>
    </div>

</asp:Content>
