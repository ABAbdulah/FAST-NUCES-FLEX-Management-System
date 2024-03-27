<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="fac3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Feedback</title>
     <link rel="stylesheet" type="text/css" href="StyleSheet.css">
    <style type="text/css">
        .auto-style2 {
            width: 76%;
        }
        .auto-style3 {
            width: 72%;
            height: 37px;
        }
        .auto-style4 {
            width: 69%;
        }
        .auto-style5 {
            margin-left: 0px;
        }
        .auto-style6 {
            margin-left: 450px;
            height: 27px;
            margin-top: 60px;
            border-radius: 12px;
            width: 152px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <nav>
        <div>
            <div class="navxx"> 
		  <ul>
			<div class="xx">
			 <li><a href="#" style="border: thick solid #3f51b5; border-radius:12px; margin-top:20px; color:black;">Home</a></li>
                <li><a href="#" style="border: thick solid #3f51b5;color:black;border-radius:12px">Evaluation</a></li>
                <li><a href="#" style="border: thick solid #3f51b5;color:black;border-radius:12px">Attendance</a></li>
                <li><a href="#" style="border: thick solid #3f51b5;color:black;border-radius:12px">Feedback</a></li>
                <li><a href="#" style="border: thick solid #3f51b5;color:black;border-radius:12px">Reports</a></li>
			</div>
				</ul>
			</div>
        </div>
            </nav>
            
        </div>
        <div class ="EVhead">
          
            <h1>Feedback</h1>
                
        </div>
          <div class="auto-style6">
             <asp:DropDownList ID="Course" runat="server" CssClass="auto-style5"  Height="34px" Width="140px">
                <asp:ListItem>Courses</asp:ListItem>
                </asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </div>
        <div class="table1">		
            <table class="auto-style4">
                <thead>
                    <tr>
                        <th class="auto-style2">Reviewsiews</th>
                     </tr>
                 </thead>
                 <tbody>
                     <tr>
                         <td class="auto-style3">
                             <asp:TextBox ID="TextBox1" runat="server" Height="44px" Width="100%"></asp:TextBox>
                         </td>
                     </tr>
                 </tbody>
            </table>
        </div>

    </form>
</body>
</html>
