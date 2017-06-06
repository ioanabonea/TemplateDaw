<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpdateItem.aspx.cs" Inherits="UpdateItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!-- copy-paste create -->
    <!-- Doar in cazul in care avem mai multe tabele : select de id pt dropdownlist  TextMode="Date"-->
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="" DataValueField=""></asp:DropDownList>
    <br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Acest parametru este necesar"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator5" runat="server" ControlToValidate="TextBox1" ErrorMessage="Tipul de date nu se potriveste"></asp:CompareValidator>
    <br />
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Acest parametru este necesar"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Tipul de date nu se potriveste" ControlToValidate="TextBox2"></asp:CompareValidator>
    <br />
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Acest parametru este necesar"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Tipul de date nu se potriveste" ControlToValidate="TextBox3"></asp:CompareValidator>
    <br />
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Acest parametru este necesar"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="Tipul de date nu se potriveste" ControlToValidate="TextBox4"></asp:CompareValidator>
    <br />
    <asp:TextBox ID="TextBox5" runat="server" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Acest parametru este necesar"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator4" runat="server" ErrorMessage="Tipul de date nu se potriveste" ControlToValidate="TextBox5"></asp:CompareValidator>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />

</asp:Content>

