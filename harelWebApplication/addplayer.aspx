<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="addplayer.aspx.cs" Inherits="harelWebApplication.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form name="addPlayerForm" method="post" runat="server">
    <label for="playerName">:שם השחקן</label><br>
<input type="text" name="playerName" value=""><br>
            <label for="height">:גובה</label><br>
<input type="text" name="height" value=""><br>
                             <label for="number">:מספר</label><br>
<input type="number" name="number" value=""><br>
                    <label for="description">:תיאור על השחקן</label><br>
<input type="text" name="description" value=""><br>
         <input type="submit" value="הוסף שחקן">
        </form>
</asp:Content>
