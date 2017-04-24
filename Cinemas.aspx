<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cinemas</title>
    <script src="Scripts/jquery-1.9.1.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-flatly.css" rel="stylesheet" />
    <style>
    .blockUnderNav {
        margin-top: -21px;
    }
    
    .whitebg {
        background: #fff;
        border: 1px #2f4993 thin;        
        margin:5px;

    }
</style>
    <script>
        function AlertedPop() {
            alert("This search bar has an error, please contact an administator (Tho). Good luck!");
        }

        function reset() {
            document.getElementById("dropdownMovie").selectedIndex = 0;
            document.getElementById("dropdownTime").selectedIndex = 0;
            document.getElementById("dropdownDay").selectedIndex = 0;
        }

        function details() {
            var eltMovie = document.getElementById("dropdownMovie");            
            var eltDay = document.getElementById("dropdownDay");
            var eltTime = document.getElementById("dropdownTime");
            if (eltMovie.selectedIndex == 0 || eltDay.selectedIndex == 0 || eltTime.selectedIndex == 0) {
               document.getElementById("popButton").setAttribute("data-content", "Please select all the values");
            }
            else {
                var chosenMovie = eltMovie.options[eltMovie.selectedIndex].text;
                var chosenDay = eltDay.options[eltDay.selectedIndex].text;
                var chosenTime = eltTime.options[eltTime.selectedIndex].text;
                var data = "The movie \"" + chosenMovie + "\" on " + chosenDay + " at " + chosenTime + " really sucks. Choose another.";
                document.getElementById("popButton").setAttribute("data-content", data);
            }
        }
        $(document).ready(function () {
            $secondbutton = ('#secondbutton');
            $('#secondButton')
                .on('click', function () {
                    var text = $('#textbox1').val();
                    switch (text) {
                        case "1":
                            $(this).attr("data-content", "2");
                            break;
                        case "2":
                            $(this).attr("data-content", "142312");
                            break;
                        default:
                            $(this).attr("data-content", "Please enter 1 or 2");
                            break;
                    };
                })
                .popover();

            $('#textbox1')
                .keypress(function (e) {
                if (e.keyCode == 13) {
                    e.preventDefault();
                    alert("Just press the damn submit button");
                    $('#secondButton').trigger('click');
                    }
                })

            $('#popButton').popover()
        })
            
    </script>
  <script>
        $(document).ready(function () {
            $('[data-toggle="popover"]').popover({
                trigger: 'focus'
            }); 
        });
</script>      
</head>
<body>

<div class="container-fluid">
    <div class="row">
            <div class="col-lg-6 gradl">         
       &nbsp;
    </div>
        <div class="col-lg-6 gradr">
              &nbsp;
        </div>


    </div>
</div>


<nav class="navbar navbar-default">
  <div class="container-fluid">
   <div class="col-lg-6 col-lg-offset-3">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="Page2.aspx" style="background:url(https://taustuff.files.wordpress.com/2014/11/tau.gif?w=300);background-size:60px;background-position:center;background-repeat: no-repeat;">Tho <br /> Cinemas </> </a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="#">Cinemas <span class="sr-only">(current)</span></a></li>
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
  </div>
</nav>
    <div class="blockUnderNav container-fluid" >
        <div class="col-sm-6 col-lg-offset-3" style="background: url('./Content/CinBack.jpg') no-repeat">
            <h2><u><i style="color:white">List of cinemas that Tho has picked out of the blue</i></u></h2>
            <div class="row">
                <div class="col-sm-8">
                    <div class="col-lg-12" style="background:white;border-radius:5px;margin-left:5px">
                 <form action="javascript:movieInfo">
                  <div class="row">
                   <div class="col-lg-4">
                       <div><p>I want to go see</p> </div>
                    <div class="form-group">
                            <select class="form-control" id="dropdownMovie">
                                <option hidden selected="selected">Select a movie</option>
                                <option value="movie1">Movie 1</option>
                                <option value="movie2">Movie 2</option>
                                <option value="movie3">Movie 3</option>
                                <option value="movie4">Movie 4</option>
                            </select>               
                    </div>
                   </div>

                   <div class="col-lg-4">
                      <div><p>on</p> </div>
                    <div class="form-group">
                            <select class="form-control" id="dropdownDay">
                                <option hidden selected="selected">Select a day</option>
                                <option value="th">Thursday</option>
                                <option value="fr">Friday</option>
                                <option value="sa">Saturday</option>
                                <option value="su">Sunday</option>
                            </select>   
                    </div>
                  </div>

                   <div class="col-lg-4">
                      <div><p>at</p> </div>
                    <div class="form-group">
                            <select class="form-control" id="dropdownTime">
                                <option hidden selected="selected">Select a time</option>
                                <option value="br">Breakfast time</option>
                                <option value="lu">Lunch time</option>
                                <option value="di">Dinner time</option>
                                <option value="be">Bedtime</option>
                            </select>   
                    </div>
                  </div>
                 <div style="margin-left:75%;">
                <button class="btn btn-success" type="button" data-container="body" data-toggle="popover" data-placement="left" data-content="Hello" id="popButton" onclick="details()">Lets go!</button>
                     <a href="#" onclick="javascript:reset()">Reset</a>
                     </div>
                      </div>
                     </form>
                    </div>
                    
                    <div class="col-lg-12">
                    <br />
                        <div class="tab-content">
                            <div class="tab-pane fade active">
                                <form id="cases">
                                    <div class="form-group">
                                        Please enter an integer between 1 - 10:
                                        <div class="input-group">
                                        <span class="input-group-addon">#</span>
                                        <input type="text" class="form-control" placeholder="1, 2,..., 10" id="textbox1"/>                                        
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-default" data-container="body" data-toggle="popover" data-placement="bottom" id="secondButton" data-content="">Submit</button>
                                        </span>
                                        </div>
                                        
                                    </div>
                                </form>
                            </div>
                            
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                                        <a class="twitter-timeline" style="margin-top:5px" data-lang="en" data-width="220" data-height="400" data-theme="light" href="https://twitter.com/AnnaKendrick47"><script async='async' src="//platform.twitter.com/widgets.js"  charset="utf-8"></script></a>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
