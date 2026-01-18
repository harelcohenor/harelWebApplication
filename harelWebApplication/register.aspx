<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="harelWebApplication.register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>הרשמה</h2>
    <form name="formPage" method="post" runat="server">
        שם פרטי:
        <input type="text" name="name" id="name" placeholder="enter name...">
        <br />
        שם משפחה:
        <input type="text" name="lastname" id="lastname" placeholder="enter last name...">
        <br />
        מייל:
        <input type="text" name="mail" id="mail" placeholder="enter email...">
        <br />
        סיסמה:
        <input type="text" name="pass" id="pass" placeholder="enter password...">
        <br />
        אימות סיסמה:
        <input type="text" name="confirmpass" id="confirmpss" placeholder="confirm your password">
        <br />
                <input id="Submit1" type="submit" value="שלח" />

        
    </form>
</asp:Content>
