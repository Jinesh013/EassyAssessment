<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/nav.css">
    <style>

a:link, a:visited {
  background-color: #f44336;
  color: white;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  background-color: red;
}

    </style>
</head>
<body onclick="openFullscreen();" ondblclick="openFullscreen();"  id="body">
    <script src="JS/index.js"></script>
    <header class="header">
    
        <nav class="navbar">
            <div class="logo">
                <img src="img/logo.png" alt="LOGO" width="150px">
            </div>
            <div class="title">
                <h1 class="titleOne">Eassy Assess </h1>
                <h2 class=" titleTwo">Eassy Place to Asses student</h2>
                
            </div>
            <div class="list">
                <ul>
                <li class="listItem">
                <a href="index.php" onclick="openFullscreen();">HOME</a>
            </li>
            <li>
            </li>
            <li class="listItem">
                <a href="about.php" onclick="openFullscreen();">ABOUT US</a>
            </li>
            <li class="listItem">
                <a href="contact.php" onclick="openFullscreen();">CONTACT</a>
            </li>

                </ul>
            </div>
        </nav>
    </header>

    <h1 style="color:wheat">
        21cs041@charusat.edu.in
        <button class="contactMail" ><a href = "mailto: 21cs041@charusat.edu.in">Send Email</a></button>

    </h1>
    <h1 style="color:wheat">
        21cs037@charusat.edu.in
        <button class="contactMail"><a href = "mailto: 21cs037@charusat.edu.in">Send Email</a></button>
    </h1>
    <h1 style="color:wheat">
        21cs036@charusat.edu.in
        <button class="contactMail"><a href = "mailto: 21cs046@charusat.edu.in">Send Email</a></button>
    </h1>
    
</body>
</html>