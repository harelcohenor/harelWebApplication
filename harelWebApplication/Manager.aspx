<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Manager.aspx.cs" Inherits="harelWebApplication.Manager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form name="signupForm" method="post" runat="server">
        <center>
                    <label for="fname">:שם פרטי</label><br>
   <input type="text" id="fname" name="fname" value=""><br>
<label for="lname">:שם משפחה</label><br>
<input type="text" id="lname" name="lname" value=""><br><br>
              <input type="submit" value="Submit">
             </form>
    <center>
    <h1>טבלת משתמשים</h1>
    </center>
    <%=st %>
</asp:Content>
