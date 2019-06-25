<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DelDepartment.aspx.cs" Inherits="EmployeeSystem.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="部门代号："></asp:Label>
    <asp:TextBox ID="txtDepartID" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label2" runat="server" Text="部门名称："></asp:Label>
    <asp:TextBox ID="txtDepartName" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Text="删除" OnClick="Button1_Click" />
    <br /><br /><br />
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
</asp:Content>
