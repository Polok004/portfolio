<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="Portfolio.edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <link rel="stylesheet" href="~/Code/Style2.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="About">
            <div class="tittle">
                <asp:Label ID="Label1" CssClass="label" runat="server" Text="ABOUT-SECTION"></asp:Label><br />
            </div>
                <asp:Label ID="lblName" CssClass="label" runat="server" Text="Name:"></asp:Label>
                <asp:TextBox ID="txtName" CssClass="input" runat="server"></asp:TextBox><br />
                
                <asp:Label ID="lblAge" CssClass="label" runat="server" Text="Age:"></asp:Label>
                <asp:TextBox ID="txtAge" CssClass="input" runat="server"></asp:TextBox><br />
                
                <asp:Label ID="lblPhoneNumber" CssClass="label" runat="server" Text="Phone Number:"></asp:Label>
                <asp:TextBox ID="txtPhoneNumber" CssClass="input" runat="server"></asp:TextBox><br />
                
                <asp:Label ID="lblAddress" CssClass="label" runat="server" Text="Address:"></asp:Label>
                <asp:TextBox ID="txtAddress" CssClass="input" runat="server"></asp:TextBox><br />
                
                <asp:Label ID="lblEmail" CssClass="label" runat="server" Text="Email:"></asp:Label>
                <asp:TextBox ID="txtEmail" CssClass="input" runat="server"></asp:TextBox><br />
                
                <asp:Label ID="lblAdditionalInfo" CssClass="label" runat="server" Text="Additional Information:"></asp:Label>
                <asp:TextBox ID="txtAdditionalInfo" CssClass="input textarea" TextMode="MultiLine" runat="server"></asp:TextBox><br />

                <asp:Button ID="Edit" runat="server" OnClick="About_edit" Text="Update" CssClass="btn" />

            </div>
        <br />
        <br />
                <div class="container">
          
            <div class="tittle">
    <asp:Label ID="Label2" CssClass="label" runat="server" Text="EDUCATION"></asp:Label><br />
</div>

         
            <div class="form-container">
                <asp:FileUpload ID="fileUpload" runat="server" />
               
            </div>
            <br />
            
           
            <div class="form-container">
                <label for="txtabout">About:</label>
                <asp:TextBox ID="Textabout" runat="server"></asp:TextBox>
            </div>
            <br />
        
           
            <div class="button-container">
                <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
               
            </div>
            <br />
              <div class="form-container">
           <label for="id">ID:</label>
             <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </div>
            <div class="button-container">
                 <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                </div>
                    <br />
                    <br />
                     <div class="button-container">
      <asp:Button ID="Button1" runat="server" Text="Log Out" OnClick="logout" />
     </div>
</div>
        <br />
        <br />
            
            <div class="gridview-container">
                <asp:GridView ID="GridView1" runat="server"  OnRowCommand="GridView1_RowCommand">
                 
    <HeaderStyle BackColor="#cc6600" />
    <Columns>
        <asp:TemplateField HeaderText="Link">
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="DownloadFile" CommandArgument='<%# Eval("id") %>' Text='<%# Eval("filename") %>'></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>

            </div>

        
    </form>
</body>
</html>
