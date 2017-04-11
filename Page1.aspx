<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page1.aspx.cs" Inherits="Page1" %>

<!DOCTYPE html>

<html>
<head runat="server">
        <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-flatly.css" rel="stylesheet" />
        <script>
            function transition() {
                document.getElementsByClassName("textClass").style.transition = "all 2s 5s";
                document.getElementById("textClass").style.transition = "all 5s";
        }
    </script>
    <script src="Scripts/jquery-1.9.1.js"></script>
    <script src="Scripts/bootstrap.js"></script>

    <title>Amazing page of Awesome</title>
    <style>
        body {
            background-image: url("http://localhost:52802/Content/Page1BG.png");
            background-color: #0A3B4A;
        }
       
        .textClass{
        background-color: #0A3B4A;
        border-radius:10px;
        color: #FDDE87;
        opacity:0.1;
        padding: 10px;
        border: 10px;
        text-align: center; 
        display: inline-block;
        background: repeating-linear-gradient(45deg,rgba(10, 59, 74, 0.5),rgba(10, 59, 74, 0.5) 15px,rgba(15, 80, 107, 0.00) 15px,rgba(15, 80, 107, 0.00)  20px);
        }
        .textClass:hover{
        background-color: #0A3B4A;
        border-radius:10px;
        color: #FDDE87;
        opacity:1;
        padding: 10px;
        border: 10px;
        text-align: center; 
        display: inline-block;
               background: repeating-linear-gradient(45deg,rgba(10, 59, 74, 0.5),rgba(10, 59, 74, 0.5) 15px,rgba(15, 80, 107, 0.00) 15px,rgba(15, 80, 107, 0.00)  20px);

        }
    </style>
</head>
<body onload="transition">
 <div class="container-fluid" style="margin:auto; width:500px; top:50%;margin-top: 200px ;">
     <div class="row" >
         <div id="textClass" class="textClass" onclick="location.href='Page2.aspx';">
             Hello world, this is where your text about information about cinema could be.
             <br />
             I know that the background is irrelevant but its to signify the greatness of movies and mountains! 
             <br />
             <br />
             ...(but mainly mountains.)
             <br />
             Click this box to move on to the cinema, possibly(?)</div>
     </div>
 </div>
    
</body>

</html>
