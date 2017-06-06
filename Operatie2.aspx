<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Operatie2.aspx.cs" Inherits="Operatie2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />

    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    <br />
    
   <!--    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 

        SelectCommand="SELECT Planificari.IDDrum, Planificari.Data, Drumuri.Nume, Drumuri.Lungime, Drumuri.Latime FROM Planificari 
        INNER JOIN Drumuri ON Planificari.IDDrum = Drumuri.ID WHERE (Planificari.Data &gt;= @p) AND (Planificari.Data &lt;= @q)">
        <SelectParameters>
            <asp:Parameter Name="p" />
            <asp:Parameter Name="q" />
        </SelectParameters>

    </asp:SqlDataSource>

    <table>
        <thead>
            <tr>
                <td>IDDrum</td>
                <td>Data</td>
                <td>Nume</td>
                <td>Lungime</td>
                <td>Latime</td>
            </tr>

        </thead>
        <tbody>

            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("IDDrum") %></td>
                        <td><%# Eval("Data") %></td>
                        <td><%# Eval("Nume") %></td>
                        <td><%# Eval("Lungime") %></td>
                        <td><%# Eval("Latime") %></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>

        </tbody>
    </table>
    -->
</asp:Content>

