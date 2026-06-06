<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="harelWebApplication.register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script language="javascript">
        function chackAll() {
            fnErr.innerHTML = "";
            lnErr.innerHTML = "";


            result = true;


            if (checkFirstName == false)
                result = false;
            if (!checkLastName)
                result = false;




            return result;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="style/StyleSheet1.css" rel="stylesheet" />
    <h1>הרשמה למנוי </h1>
    <div id="RegisterForm">
    <form name="formPage" method="post" runat="server" onsumbit="return checkAll();">
        <div style="direction: rtl; text-align: right">       
        שם פרטי:
        <input type="text" name="name" id="name" placeholder="enter name...">
            <td id ="fnErr"></td>
        <br />
        שם משפחה:
        <input type="text" name="lastname" id="lastname" placeholder="enter last name...">
            <td id ="lnErr"></td>
        <br />
        מייל:
        <input type="text" name="email" id="mail" placeholder="enter mail...">
        <br />
        סיסמה:
        <input type="text" name="pass" id="pass" placeholder="enter password...">
        <br />
            בן כמה את/ה?:
    <select name="age" id="age">
    <option value="0">בחר גיל</option>
    <option value="9">9</option>
    <option value="10">10</option>
    <option value="11">11</option>
    <option value="12">12</option>
    <option value="13">13</option>
    <option value="14">14</option>
    <option value="15">15</option>
    <option value="16">16</option>
    <option value="17">17</option>   
    <option value="18">18</option>
    <option value="19">19</option>
    <option value="20">20</option>
</select>
<br />
             מין?: 
 <br />
 זכר<input type="radio" name="gender" checked value="זכר" id="boy"><br />
 נקבה<input type="radio" name="gender" value="נקבה" id="girl"><br />
 אחר<input type="radio" name="gender" value="אחר" id="other"><br />
 
           תפרט על עצמך :
       <br/>
            <textarea rows="5" cols="20" name="freechat" id="textarea1" placeholder="הכנס מלל חופשי"></textarea>
   <br />
                <input id="Submit1" type="submit" value="שלח" />
</div>
        
    </form>
        <%=st %>
</div>

</asp:Content>
