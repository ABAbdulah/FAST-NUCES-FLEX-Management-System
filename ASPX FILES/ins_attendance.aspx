﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ins_attendance.aspx.cs" Inherits="ins_attendance2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Attendance</title>
    
     <link rel="stylesheet" type="text/css" href="StyleSheet.css">
    <style type="text/css">
        .auto-style1 {
            margin-left: 280px;
            margin-top:50px;
        }
        .auto-style2 {
            width: 137px;
            height: 25px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
          <nav>
        <div>
            <div class="navxx"> 
		  <ul>
			<div class="xx">
			  <li><a href="#" style=" border-radius:12px; margin-top:20px; color:black;">Home</a></li>
                        <li><a href="#" style="color:black;border-radius:12px">Evaluation</a></li>
                        <li><a href="#" style="color:black;border-radius:12px">Attendance</a></li>
                        <li><a href="#" style="color:black;border-radius:12px">Feedback</a></li>
                        <li><a href="#" style="color:black;border-radius:12px">Reports</a></li>

				</div>
				</ul>
			</div>
        </div>

      </nav>

          <div class ="EVhead">
        <h1><asp:Label ID="Label1" runat="server" Text="Manage Attendance"></asp:Label></h1>
            </div>

        <div class="auto-style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            <asp:DropDownList ID="DropDownList2" runat="server" Height="32px" Width="146px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                <asp:ListItem>Course</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" Height="32px" Width="146px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>Section</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
            <input type="date" id="date" name="date" class="auto-style2"></div>
    <p>
        &nbsp;</p>
       
         
       
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
              <Columns>
                  <asp:BoundField DataField="ATTEN_DATE" HeaderText="ATTEN_DATE" SortExpression="ATTEN_DATE" />
                  <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" SortExpression="STUDENT_ID" />
                  <asp:BoundField DataField="INS_ID" HeaderText="INS_ID" SortExpression="INS_ID" />
                  <asp:BoundField DataField="COURSE_ID" HeaderText="COURSE_ID" SortExpression="COURSE_ID" />
                  <asp:BoundField DataField="SECTION_ID" HeaderText="SECTION_ID" SortExpression="SECTION_ID" />
                  <asp:BoundField DataField="STATUS" HeaderText="STATUS" SortExpression="STATUS" />
              </Columns>
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:project23section_course %>" 
              SelectCommand="SELECT * FROM [attendance]"
              UpdateCommand =" UPDATE [attendance] SET [STATUS]= @STATUS where [STUDENT_ID]= @STUDENT_ID"
              DeleteCommand =" DELETE FROM [attendance] where [STUDENT_ID]= @STUDENT_ID"
          >

          </asp:SqlDataSource>
       
         
       
    </form>
                </body>
</html>
