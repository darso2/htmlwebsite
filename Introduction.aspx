<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Introduction.aspx.cs" Inherits="Introduction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 
    <script src="Scripts/bootstrap.js"></script>
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-flatly.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.js"></script>
    <title>Introduction</title>
    <style>body {
    background-image: url("http://localhost:52802/Content/HomePage.jpg");
    background-color: floralwhite;
    }
    .introduction {
       width:auto;
        position: absolute;
        border-radius: 15px;
        padding:5px;
        opacity:0.62;
        background-color:floralwhite;
        text-align:center;
        transform: translateY(+50%) translateX(+100%); 
    }
    </style>
</head>
<body>
    <div class="introduction container-fluid container" >
        <div class="row">
            <div class="center-block page-header ">
                <h1> Welcome </h1>
                <h1> To Tho's front-end Cinema.</h1>
                <a href="Page1.aspx">Click here to get started</a> 
            </div>
        </div>
    </div>

</body>
</html>