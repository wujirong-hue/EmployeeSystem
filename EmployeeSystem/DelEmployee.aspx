<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DelEmployee.aspx.cs" Inherits="EmployeeSystem.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="员工代号："></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>&nbsp;
    <asp:Button ID="Button1" runat="server" Text="删除" />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" DataSourceID="SqlDataSource1"></asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</asp:Content>
