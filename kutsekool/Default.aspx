<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="kutsekool._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


        <h1>Noorem Tarkvaraarendaja õppeaine koos õpetajaga</h1>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ainedId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Width="521px">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="ainedId" HeaderText="ainedId" InsertVisible="False" ReadOnly="True" SortExpression="ainedId" />
                    <asp:BoundField DataField="aineNimetus" HeaderText="aineNimetus" SortExpression="aineNimetus" />
                    <asp:BoundField DataField="kirjeldus" HeaderText="kirjeldus" SortExpression="kirjeldus" />
                    <asp:BoundField DataField="perenimi" HeaderText="perenimi" SortExpression="perenimi" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kutsekoolRimitsenConnectionString1 %>" DeleteCommand="DELETE FROM [oppeaine] WHERE [ainedId] = @ainedId" InsertCommand="INSERT INTO [oppeaine] ([aineNimetus], [kirjeldus], [opetajaId]) VALUES (@aineNimetus, @kirjeldus, @opetajaId)" SelectCommand="SELECT oppeaine.ainedId, oppeaine.aineNimetus, oppeaine.kirjeldus, opetaja.perenimi FROM oppeaine INNER JOIN opetaja ON oppeaine.opetajaId = opetaja.opetajaId" UpdateCommand="UPDATE [oppeaine] SET [aineNimetus] = @aineNimetus, [kirjeldus] = @kirjeldus, [opetajaId] = @opetajaId WHERE [ainedId] = @ainedId">
                <DeleteParameters>
                    <asp:Parameter Name="ainedId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="aineNimetus" Type="String" />
                    <asp:Parameter Name="kirjeldus" Type="String" />
                    <asp:Parameter Name="opetajaId" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="aineNimetus" Type="String" />
                    <asp:Parameter Name="kirjeldus" Type="String" />
                    <asp:Parameter Name="opetajaId" Type="Int32" />
                    <asp:Parameter Name="ainedId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
   

    
        <div class="col-md-4">
           
            <h2>Uue õppaine lisamine</h2>
            <h3>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ainedId" DataSourceID="SqlDataSource_aine" DefaultMode="Insert" Height="50px" Width="125px">
                    <Fields>
                        <asp:BoundField DataField="ainedId" HeaderText="ainedId" InsertVisible="False" ReadOnly="True" SortExpression="ainedId" />
                        <asp:BoundField DataField="aineNimetus" HeaderText="aineNimetus" SortExpression="aineNimetus" />
                        <asp:BoundField DataField="kirjeldus" HeaderText="kirjeldus" SortExpression="kirjeldus" />
                        <asp:TemplateField HeaderText="opetajaId" SortExpression="opetajaId">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("opetajaId") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource_opetaja" DataTextField="perenimi" DataValueField="opetajaId" SelectedValue='<%# Bind("opetajaId") %>'>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource_opetaja" runat="server" ConnectionString="<%$ ConnectionStrings:kutsekoolRimitsenConnectionString1 %>" DeleteCommand="DELETE FROM [opetaja] WHERE [opetajaId] = @opetajaId" InsertCommand="INSERT INTO [opetaja] ([perenimi]) VALUES (@perenimi)" SelectCommand="SELECT [opetajaId], [perenimi] FROM [opetaja]" UpdateCommand="UPDATE [opetaja] SET [perenimi] = @perenimi WHERE [opetajaId] = @opetajaId">
                                    <DeleteParameters>
                                        <asp:Parameter Name="opetajaId" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="perenimi" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="perenimi" Type="String" />
                                        <asp:Parameter Name="opetajaId" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("opetajaId") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowInsertButton="True" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource_aine" runat="server" ConnectionString="<%$ ConnectionStrings:kutsekoolRimitsenConnectionString1 %>" DeleteCommand="DELETE FROM [oppeaine] WHERE [ainedId] = @ainedId" InsertCommand="INSERT INTO [oppeaine] ([aineNimetus], [kirjeldus], [opetajaId]) VALUES (@aineNimetus, @kirjeldus, @opetajaId)" SelectCommand="SELECT * FROM [oppeaine]" UpdateCommand="UPDATE [oppeaine] SET [aineNimetus] = @aineNimetus, [kirjeldus] = @kirjeldus, [opetajaId] = @opetajaId WHERE [ainedId] = @ainedId">
                    <DeleteParameters>
                        <asp:Parameter Name="ainedId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="aineNimetus" Type="String" />
                        <asp:Parameter Name="kirjeldus" Type="String" />
                        <asp:Parameter Name="opetajaId" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="aineNimetus" Type="String" />
                        <asp:Parameter Name="kirjeldus" Type="String" />
                        <asp:Parameter Name="opetajaId" Type="Int32" />
                        <asp:Parameter Name="ainedId" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </h3>
           
        </div>
        <div class="col-md-4">
            
            <p>
                &nbsp;</p>
            
        </div>
    </div>

</asp:Content>
