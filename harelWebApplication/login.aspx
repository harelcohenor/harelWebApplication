<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="harelWebApplication.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>הרשמה למנוי</h2>
        שם:
        <input type="text" name="name" id="name" placeholder="enter your name...">
        <br />
        מייל:
        <input type="text" name="mail" id="mail" placeholder="enter email...">
        <br />
        סיסמה:
        <input type="text" name="pass" id="pass" placeholder="enter password..." />
        <br />
        <input id="Submit1" type="submit" value="שלח" />
</asp:Content>
