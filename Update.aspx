<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Update.aspx.cs" Inherits="Update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <!-- copy-paste din read dar sa am grija sa selectez si id-ul tabelului pt a-l putea transmite mai departe si sa il modific in butonul de update-->
    <asp:SqlDataSource ID="SqlDataSource1" 
        runat="server" >
    </asp:SqlDataSource>

    <table>
        <thead>
            <tr>
                <td>Nume</td>
                <td>Lungime</td>
                <td>Lagime</td>
                <td>Cost</td>
                <td>Data</td>
            </tr>

        </thead>
        <tbody>

            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("nume") %></td>
                        <td><%# Eval("lungime") %></td>
                        <td><%# Eval("latime") %></td>
                        <td><%# Eval("cost") %></td>
                        <td><%# Eval("data") %></td>
                        <td><asp:Button runat="server" Text="Update" CommandArgument='<%#Eval("id") %>' OnClick="Update_Click"/></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>

        </tbody>
    </table>
</asp:Content>

