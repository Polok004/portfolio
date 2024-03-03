<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Portfolio.WebForm1" enableEventValidation="false" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible"content="IE=edge"/>
    <meta name="viewport" content="width=device-width,initial-scale=1.0"/>
    <link rel="stylesheet" href="~/Code/style.css"/>
    <link rel="preconnect" href="https://fonts.gstatic.com"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Fredoka+One&family=Play&display=swap" rel="stylesheet"/> 
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'/>
   <script src="https://unpkg.com/typed.js@2.1.0/dist/typed.umd.js"></script>
</head>
<body>
    <form id="form1" runat="server">
         <button class="gotop" type="button">
    <img src="Images/icons8-chevron-24.png"/>
</button>


    <header class="header">
        <a href="#" class="logo">Portofolio</a>
        <input type="checkbox" id="check"/>
        <label for="check" class="icons">
            <i class="fa-solid fa-bars" id="menu-icon"></i>
            <i class="fa-solid fa-xmark" id="close-icon"></i>
        </label>
        <nav class = "navbar" id="mynavbar">
        
            
            <a href="#home" style="--i:0;" > Home </a>
            <a href="#extra" style="--i:1;"> About </a>
            <a href="#edu" style="--i:2;"> Education </a>
            <a href="#skill" style="--i:3;"> Skill </a>
            <a href="#email" style="--i:4;"> Contact </a>
            
       
        </nav>
    </header>

    <section class="home" id="home">
       
        <div class="home-content">
            <h3>Hello,Its Me</h3>
            <h1>SHOUMIK BARMAN POLOK</h1>
            <h3>And I'm a <span class="text"></span></h3>  
        </div>
        <span class="home-imghover"></span> 
    </section>
    
    
    
    
    <section class="about" id="about">
        <div class="about-text">
            <h1>About<span> Me</span></h1>
            <p>I am a very cheerful and honest person.I believe in hardwork</p><br />
            <div class="sm_border"></div>
        </div>

        <div class="aaaa">
        <div class="iiiiii">
        <div class="about-img">
            <img src="Images/63_00311.jpg"/>  
        </div>
        </div>
        <div class="about-topic">
     <h1>Hello,<br>Welcome to my portfolio</h1><br>
            <div class="xta">
     <p runat="server" id="About_extra"> </p><br>
        </div>
     <br>
     <div class="info-container">
         <h3 style="display: inline;">Name :</h3><h3 runat="server" id="About_name" style="display: inline;"></h3><br/>

     </div>
            <br />
            <br />

     <div class="info-container">
         <h3 style="display: inline;">Age :</h3><h3 runat="server" id="About_age" style="display: inline;"></h3><br/>

     </div>
            <br />
            <br />

     <div class="info-container">
        <h3 style="display: inline;">Phone Number :</h3><h3 runat="server" id="About_phone" style="display: inline;"></h3><br/>

     </div>
            <br />
            <br />
     <div class="info-container">
         <h3 style="display: inline;">Address :</h3><h3 runat="server" id="About_address" style="display: inline;"></h3><br/>

     </div>
            <br />
            <br />

     <div class="info-container">
         <h3 style="display: inline;">Email :</h3><h3 runat="server" id="About_email" style="display: inline;"></h3><br/>

     </div>
            <br />
            <br />
            <br />
            <div class="download-box">
          <a href="Code/MyCV.docx" class="download-link">Download CV</a>
  </div>
  <style>   
       .download-box {
  display: inline-block;
  border: 2px solid #f3bc17;
  border-radius: 5px;
  overflow: hidden; /* Ensure border radius is applied to children */
}

.download-link {
  display: block;
  padding: 10px 20px;
  background-color: #f3bc17;
  text-decoration: none;
  color: #333;
  transition: background-color 0.3s;
}

.download-link:hover {
  background-color: lightyellow;
}

</style>  
 </div>

    </div>
    </section> 

    <section class="education" id="edu">
        <div class="Education">
            <h1>My <span>Education</span></h1>
            <p>Most of my educational institutes situated in my Mymensingh</p>
            <br>
            <div class="sm_border"></div>
        </div>
        <br>
      <div class ="row">
        
        <div class="education-container">
            <img src="Images/graduation_11722631.png" width="60" height="60" alt="Graduation Logo">
            <h2>Education:</h2>
        </div>
        
    
        <br><br>
        <div class="slide">
            <div class="R1">
            <div class="edu edu1">
                <div class="cse">
                    <strong>2022 - continue</strong>
                    <h5>Computer Science And Engineering</h5>
                    <p>I am courrently completing my B.Sc in Computer Science And Enginnering in Khulna University of Engineering & Technology(KUET) located in khulna.This is a very popular univeristy in Bangladesh. </p>
                    <div class="sm_border"></div>
                </div>
            </div>
        
            <div class="edu edu2">
                <div class="hsc">
                    <strong>2018-2020</strong>
                    <h5>Higher Secondary Certificate </h5>
                    <p>I completed my H.S.C from Govt. Anandamohon University & College located in my beloved hometown Mymensingh.I got GPA 5.00 in the H.S.C exam also got scholarship in genaral catagory</p>
                    <div class="sm_border"></div>
                </div>
            </div>
        </div>
        <div class="R2">
            <div class="edu edu3">
                <div class="ssc">
                    <strong>2016-2018</strong>
                    <h5>Secondary School Certificate </h5>
                    <p>I completed my S.S.C from one of the most prestigious schools of Bangladesh Mymensingh Zilla School,Mymensingh.I got GPA 5.00 in the S.S.C exam also got scholarship in genaral catagory</p>
                    <div class="sm_border"></div>
                </div>
            </div>
        
            <div class="edu edu4">
                <div class="jsc">
                    <strong>2015</strong>
                    <h5>Junior School Certificate </h5>
                    <p>I completed my J.S.C from one of the most prestigious schools of Bangladesh Mymensingh Zilla School,Mymensingh.I got GPA 5.00 in the J.S.C exam also got scholarship in telentpull catagory</p>
                    <div class="sm_border"></div>
                </div>
            </div>
        </div>
    </div>
    </div>
     <div class="paper">
    <div class="paper-link-box">
        <a href="#" id="paperLink" onclick="toggleGridView(event)">Achievements</a>
    </div>
    <div class="gridview-container" id="gridviewContainer" style="display:none;">
        <asp:GridView ID="GridView2" runat="server" OnRowCommand="GridView1_RowCommand">
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
</div>

<script>
    function toggleGridView(event) {
        event.preventDefault(); 
        var gridViewContainer = document.getElementById("gridviewContainer");
        if (gridViewContainer.style.display === "none") {
            gridViewContainer.style.display = "block";
        } else {
            gridViewContainer.style.display = "none";
        }
    }
</script>


    </section>

   <section class ="skill" id="skill">
    <div class="Skill">
        <h1>My <span>Skills</span></h1>
        <p>My Skills are basically from Computer Science as I am a CS student</p>
        <br>
        <div class="sm_border"></div>
    </div>
    <br>
     
    <div class="parallel">
        <div class="t">
            <h2>Programing Skills</h2>
        <div class="skill2">
            <div class="first">
            <div class="ROW">
            <div class="circle-icon">
                <i class="fa-brands fa-java"></i>
            </div>
            <div class="circle-icon">
                <i class="fa-brands fa-js" style="color: #B197FC;"></i>
            </div>
            <div class="circle-icon">
                <img src="Images/html.png" width="40px" height="40px">
            </div>
            </div>
            
            <div class="ROW">
            <div class="circle-icon">
                <img src="Images/c-sharp.png" width="40px" height="40px">
            </div>
            <div class="circle-icon">
                <img src="Images/php.png" width="40px" height="40px">
            </div>
            <div class="circle-icon">
                <img src="Images/css.png" width="40px" height="40px">
            </div>
            </div>
        </div>
            <div class="second">
            <div class="ROW">
                <div class="circle-icon">
                    <img src="Images/database-storage.png" width="40px" height="40px">
                </div>
                <div class="circle-icon">
                    <img src="Images/c-.png" width="40px" height="40px">
                </div>
                <div class="circle-icon">
                    <img src="Images/android.png" width="40px" height="40px">
                </div>
                </div>
            </div>
        </div>
       </div>
       <div class="tt">
        <h2>Projects</h2>
        <br>
        <div class="container">
           
            <br>
            <div class="row1">
           <div class="phonebook">
        <a class="box-link" href="https://github.com/Polok004/OOP-Project.git" target="_blank" rel="noopener noreferrer">
            <div class="content-box1">
                <img src="Images/phone-book.png" width="50" height="50">
                <h4>Phonebook Management System</h4><br>
                <p>This is a console project where a simple phonebook is created where users can add numbers, search them, etc. This project demonstrates my knowledge of OOP concepts using C++.</p>
            </div>
        </a>
    </div>
            <div class="Real-estate" >
                <a class="box-link" href="https://github.com/Polok004/Real-Estate-Management.git" target="_blank" rel="noopener noreferrer">
                <div class="content-box2">
                    <img src="Images/icons8-real-estate-50.png" width="50" height="50">
                    <h4>Real-Estate Management System</h4><br>
                    <p>This is a desktop project application where a real-estate company can store their data and do perform almost all kinds of activies.This project is done by java language</p>
                </div>
                </a>
            </div>
        </div>
        <div class="row1">
            <div class="Library" >
                 <a class="box-link" href="https://github.com/Polok004/Library-management-system.git" target="_blank" rel="noopener noreferrer">
                <div class="content-box3">
                    <img src="Images/online-library.png" width="50" height="50">
                    <h4>Library Management System</h4><br>
                    <p>This is a database project where all kinds of library functions will be performed according to the user.Mostly focuses on the database activities.This project is under development.Coming soon..</p>
                </div>
                 </a>
            </div>
            <div class="Portfolio" >
                <a class="box-link" href="https://github.com/Polok004/My-portfolio.git" target="_blank" rel="noopener noreferrer">
                <div class="content-box4">
                    <i class="fa-solid fa-user-tie" style="color: #11c92a;" ></i>
                    <br/>
                    <br />
                    <h4>Portfolio </h4><br/>
                    <p>This a personal website created using html,css,javascript for fronted and asp.net for backend .This project will show all kinds of information of user with dynamically modified</p>
                </div>
                </a>
            </div>
        </div>
    </div>
    </div>
</div>
   </section>

   <section class="Email" id="email">
    <div class="contact">
        <h1>Contact<span> ME</span></h1>
        <p>Contact me for any kind of help</p>
        <br>
        <div class="sm_border"></div>
    </div>

    <div class="container-e">
        <div class="content-e">
          <div class="left-side">
            <div class="address details">
              <img src="Images/icons8-location-50.png" width="30" height="30"></img>
              <div class="topic-e">Address</div>
              <div class="text-one">Moutri tower,Mymensingh</div>
            </div>
            <div class="phone details">
            <img src="Images/icons8-phone-50.png" width="30" height="30"></img>
              <div class="topic-e">Phone</div>
              <div class="text-one">01948405024</div>
            </div>
            <div class="email details">
                <img src="Images/icons8-email-50.png" width="30" height="30"></img>
              <div class="topic-e">Email</div>
              <div class="text-one">shoumikbarman87@gmail.com</div>
            </div>
          </div>
           <asp:ScriptManager runat="server"></asp:ScriptManager>
<div class="right-side">
    <asp:UpdatePanel ID="updatePanel" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="true">
        <ContentTemplate>
            <div class="topic-text">Send me a message</div>
            <br /><br />
            <p>If you have any work from me or any types of queries, you can send me a message from here. It's my pleasure to help you.</p><br />
            <form action="#">
                <div class="input-box">
                    <asp:TextBox runat="server" ID="txtName" placeholder="Enter your name"></asp:TextBox>
                </div>
                <br />
                <div class="input-box">
                    <asp:TextBox runat="server" ID="txtEmail" placeholder="Enter your email"></asp:TextBox>
                </div>
                <br />
                <div class="input-box message-box">
                    <asp:TextBox runat="server" ID="txtMessage" TextMode="MultiLine" placeholder="Enter your message"></asp:TextBox>
                </div>
                <div class="button">
                    <asp:Button runat="server" ID="btnSend" Text="Send Now" OnClick="btnSend_Click" 
                        style="background-color: #007bff; 
                        border: none;
                        color: white;
                        padding: 15px 32px;
                        text-align: center;
                        text-decoration: none;
                        display: inline-block;
                        font-size: 16px;
                        margin: 4px 2px;
                        cursor: pointer;
                        transition: background-color 0.3s;" />
                </div>
                <br />
                <asp:Label runat="server" ID="lblSuccessMessage" Text="" style="color: green;"></asp:Label>
            </form>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btnSend" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>
</div>

   

   </section>

      

   <footer>
    <div class="footer">
    <div class="row">
    <a href="https://www.facebook.com/profile.php?id=100075370719738&mibextid=ZbWKwL"><i class="fa fa-facebook"></i></a>
    <a href="https://www.instagram.com/shoumikbarman/"><i class="fa fa-instagram"></i></a>
    <a href="https://wa.me//+8801948405024"><i class="fa fa-whatsapp"></i></a>
    <a href="https://t.me/polok004"><i class="fa fa-telegram"></i></a>
    </div>
    
    <div class="row">
    <ul>
    <li><a href="Login.aspx">Admin Login</a></li>
    </ul>
    </div>
    
    <div class="row">
    INFERNO Copyright © 2024 Inferno - All rights reserved || Designed By: Shoumik Barman Polok
    </div>
    </div>
    </footer>
    

    <script src="Code/main.js"></script>
    </form>
</body>
</html>


