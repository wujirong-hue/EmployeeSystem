<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DelEmployee.aspx.cs" Inherits="EmployeeSystem.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="员工代号："></asp:Label>
    <asp:TextBox ID="txtID" runat="server"></asp:TextBox>&nbsp;
    <asp:Button ID="DelBtn" runat="server" Text="删除" OnClick="DelBtn_Click" />
    <br /><br /><br />
    <asp:GridView ID="GridView1" runat="server"  CellPadding="4" ForeColor="#333333"></asp:GridView>
    </asp:Content>
