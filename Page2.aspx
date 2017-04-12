 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page2.aspx.cs" Inherits="Page2" %>

<html>

<head >
    <title>Tho's Cinema</title>
    <script src="Scripts/jquery-1.9.1.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-flatly.css" rel="stylesheet" />
    <script>
        function AlertedPop() {
            alert("This search bar has an error, please contact an administator (Tho). Good luck!");
        }

        function bad_idea() {
            var a = document.getElementById("goingonBox").value;
            alert("Wow that is absolutely horrible, here's a better suggestion, why dont you try contacting Tho instead? He's pretty lonely. Psh what a bad idea \"" + a +"\"");
        }
    </script>
<style>

</style>
</head>
<body>
    <div class="container-fluid" style="background-color:#354a5f;opacity:0.6">
        <div class="row">
           <div class="col-lg-2" style="background-color:#2c3e50;opacity:0.6">
               &nbsp;
           </div>
           <div class="col-lg-8">
                
               &nbsp;</div>
            <div class="col-lg-2" style="background-color:#2c3e50;opacity:0.6">
                &nbsp;
            </div>
        </div>
    </div>
    <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="Page2.aspx">Tho Cinemas</a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Cinemas <span class="sr-only">(current)</span></a></li>
        <li><a href="#">Movies</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Movie Types <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Maybe action-comedy</a></li>
            <li class="divider"></li>
            <li><a href="#">👻 Horror 👻</a></li>
            <li class="divider"></li>
            <li><a href="#">Romance 🌹🌹🌹🌹🌹</a></li>
          </ul>
        </li>
      </ul>
      <form class="navbar-form navbar-right" role="search" action="javascript:AlertedPop();">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
    </div>
  </div>
</nav>

<div id="blockUnderNav container-fluid" >
    <div class="col-sm-6 col-lg-offset-3" style="background: url('http://localhost:52802/Content/CinBack.jpg') no-repeat">
        <br />
            <div class="row">
                <div class="container text-center col-sm-9">
                    <div class="row">
                       <div class="col-lg-6">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title"> Movies that will never come 1</h3>
                            </div>
                            <div class="panel-body">
                                <div id="1stCarousel" class="carousel slide" data-ride="carousel">
                                    <div class="carousel-inner" role="listbox">
                                        <div class="item active ">
                                            <img src="http://www.amccinemas.co.uk/UserFiles/Films/Images/112x167_185691.jpg?t=636275213570533730" alt="Chania"> Going in Style
                                        </div>

                                        <div class="item">
                                            <img src="http://www.amccinemas.co.uk/UserFiles/Films/Images/112x167_149342.jpg?t=636275213570533730" alt="Boss Baby" /> Boss Baby
                                        </div>

                                    </div>
                                    <a class="left carousel-control" href="#1stCarousel" role="button" data-slide="prev">
                                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="false"></span>                            
                                    </a>
                                    <a class="right carousel-control" href="#1stCarousel" role="button" data-slide="next">
                                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                    </a>
                               </div>
                        
                           </div>
                      </div>
                </div>

                       <div class="col-xs-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title"> Movies that will never come 2</h3>
                        </div>
                        <div class="panel-body">
                            <div id="2ndCarousel" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner" role="listbox">
                                    <div class="item active">
                                        <img src="http://www.amccinemas.co.uk/UserFiles/Films/Images/112x167_178339.jpg?t=636275855839119375" alt="Chania"> Going in Style
                                    </div>

                                    <div class="item">
                                        <img src="http://www.amccinemas.co.uk/UserFiles/Films/Images/112x167_181845.jpg?t=636275855839431702" alt="Boss Baby" /> Boss Baby
                                    </div>

                                </div>
                                <a class="left carousel-control" href="#2ndCarousel" role="button" data-slide="prev">
                                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="false"></span>                            
                                </a>
                                <a class="right carousel-control" href="#2ndCarousel" role="button" data-slide="next">
                                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                </a>
                            </div>
                        </div>
                    </div>
               </div>
                                 
                       <div class="col-sm-12">
                        <ul class="nav nav-tabs">
                          <li class="active"><a href="#home" data-toggle="tab" aria-expanded="true">Home</a></li>
                          <li><a href="#goingon" data-toggle="tab" aria-expanded="true">What's going on?</a></li>
                        </ul>
                    <div id="tabContents" class="tab-content">
                        <div class="tab-pane fade active in" id="home">
                            <p> Here is some text to fill in some space. Did you know that it's relatively fun to dive into a volcano? Only fun if you long for death!</p>
                        </div>
                        <div class="tab-pane fade" id="goingon">
                            <p>Nothing much, what's going on with you?</p>
                            <form action="javascript:bad_idea();">
                            <div class="form-group">
                                <label class="control-label" for="inputDefault"></label>
                                <div class="input-group">
                                <input class="form-control" type="text" id="goingonBox" />
                                <span class="input-group-btn"><button class="btn btn-default" type="submit">submit</button></span>
                                </div>
                            </div>
                            </form>
                       </div>
                    </div>
                      <!--     <div class="col-sm-5 flex-wrap" style="background-color:#f39c12;border-top-left-radius:5px;border-bottom-right-radius:5px">

                Yes
            </div> -->
      </div>
                    </div>
                </div>
                 <div class="col-sm-3">
                    <a class="twitter-timeline" style="margin-top:5px" data-lang="en" data-width="220" data-height="360" data-theme="light" href="https://twitter.com/AnnaKendrick47"></a> <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
                </div>
           </div>

    </div>
</div>

</body>
</html>
