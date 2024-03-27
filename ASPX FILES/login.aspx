<%--<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginPage.aspx.cs" Inherits="_Default" %>--%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href ="E:\FAST NUCES\FAST NUCES\Semester 4\Data Base\NewProjectFlex\flex\file-lock-fill.svg" />
    <title>Flex</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css">

     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>
      
    <form id="form1" runat="server">
 <div class="login-wrapper">

     <div class="flee">
         <div class="box-behind"></div>  
         
         <div class="imgleft"></div>  
        
        <p>
            <asp:Label ID="Label1" runat="server"  Text="Flex Login"></asp:Label>
                
        </p>

       <div class="UserNameTextbox">           
            <asp:TextBox ID="username" runat="server" Width="270px" placeholder="Roll no. (e.g. i21-1234)" Font-Size="X-Large" OnTextChanged="username_TextChanged"></asp:TextBox>
        </div>
       <div class="Password">


            <asp:TextBox ID="Password" runat="server" Width="270px" placeholder="Password" type="password" Font-Size="X-Large"></asp:TextBox>
        </div>
       
        <div class="button">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Width="200px"  Text="Submit" Font-Size="20pt" Height="50px" BorderStyle="Groove" BorderWidth="5px" OnClientClick="return validate();" />
        </div>
        
       </form>
    </div>
    </div>

</body>
</html>

