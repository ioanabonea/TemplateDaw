<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Operatie1.aspx.cs" Inherits="Operatie1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

    <!-- eventual afisarea ca in read 
        
        
        
        <asp:SqlDataSource 
   
        SelectCommand="SELECT Eveniment.IDLocatie, Eveniment.Titlu, Eveniment.Descriere, Eveniment.Data, Eveniment.NrLocuri, 
        Locatie.DenumireLoc FROM Eveniment INNER JOIN Locatie ON Eveniment.IDLocatie = Locatie.IDLocatie WHERE Eveniment.Titlu LIKE @q OR Locatie.DenumireLoc LIKE @q" 
        >
        <SelectParameters>
            <asp:Parameter Name="q" Type="String" DefaultValue="" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    -->
</asp:Content>

