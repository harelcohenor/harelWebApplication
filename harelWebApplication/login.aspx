<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="harelWebApplication.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1>כניסה למנוי </h1>
    <link href="style/StyleSheet1.css" rel="stylesheet" />
     <form>
    <div id="LoginForm">
        מייל:
         <br />
        <input type="text" name="mail" id="mail" placeholder="enter email...">
        <br />
        סיסמה:
         <br />
        <input type="text" name="pass" id="pass" placeholder="enter password..." />
        <br />
     
        </div>
    </form>
    <%=st %>
</asp:Content>
