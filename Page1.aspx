<!DOCTYPE html>

<html>
<head runat="server">
        <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-flatly.css" rel="stylesheet" />
        <script>
            function transition() {
                document.getElementById("textClass").style.transition = "all 1s";
            }            
            var ca = document.cookie.split(';');
            var cookiedata = [];
            function readcookies() {

                //gets cookie data
                for (i = 0; i <= ca.length; i++) {
                    //countermeasures
                    if (typeof ca[i] === "undefined") {
                        continue;
                    }
                    var tempstringvalue = ca[i];
                    var cookieExtractData = tempstringvalue.split('=');
                    cookiedata.push(cookieExtractData[1]);

                }
                //creates a div for the data
                if (ca.length !== 1) {
                    document.getElementById("cookietext").innerHTML = "<div class=\"textClass\" style=\"width:500px;display:inline-block\"> As you can see the developers have not come up with the booking form yet so instead they have linked you to their (unanimously) favourite page. Just to make sure your cookie works here it is. <br> Movie: " + cookiedata[0] + "<p></p> Day: " + cookiedata[1] + " <p> </p> Time: " + cookiedata[2] + " </div > "
                }
            }

            function nextpage() {
                if (ca.length !== 1){
                //delete the cookie by setting the expiry date in the past
                    var expires = ";expires=Thu, 01-Jan-70 00:00:01 GMT;";
                    document.cookie = "movie =" + expires;
                    document.cookie = "day =" + expires;
                    document.cookie = "time =" + expires;

                }
                window.location.href = 'Page2.aspx';
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
<body onload="readcookies()">
    <div style="margin:auto; width:500px; top:50%;margin-top: 200px;">
        <div class="row" id="cookietext">

        </div>

    </div>
 <div class="container-fluid" style="margin:auto; width:500px; top:50%;">
     <div class="row" >
         <div id="textClass" class="textClass" onclick="nextpage();" onmouseover="transition()">
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
