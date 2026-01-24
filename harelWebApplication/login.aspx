<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="harelWebApplication.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1>כניסה למנוי </h1>
    <link href="style/StyleSheet1.css" rel="stylesheet" />
    <div id="LoginForm">
        שם:
        <br />
        <input type="text" name="name" id="name" placeholder="enter your name...">
        <br />
        מייל:
         <br />
        <input type="text" name="mail" id="mail" placeholder="enter email...">
        <br />
        סיסמה:
         <br />
        <input type="text" name="pass" id="pass" placeholder="enter password..." />
        <br />
        אימות סיסמה:
         <br />
        <input type="text" name="confirmpass" id="confirmpss" placeholder="confirm your password">
        <br />
        <input id="Submit1" type="submit" value="שלח" />
        </div>
</asp:Content>
