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

    .containerblock {
        margin:5px;
        margin-bottom:-5px;
        background-color: aliceblue !important;
        border-top-left-radius: 5px;
        border-top-right-radius: 5px; 
        border-bottom: 2px solid #246d9f;
        border-bottom-left-radius: 5px;
        border-bottom-right-radius: 5px;
        -webkit-box-shadow: 0px 0.5px 0.5px rgba(0, 0, 0, 0.55);
        -moz-box-shadow: 0px 0.5px 0.5px rgba(0, 0, 0, 0.55);
        box-shadow: 0px 0.5px 0.5px rgba(0, 0, 0, 0.55);
    }


</style>
    <script>
        //search bar usage
        function AlertedPop() {
            alert("This search bar has an error, please contact an administator (Tho). Good luck!");
        }
        // reset values in drop down
        function reset() {
            document.getElementById("dropdownMovie").selectedIndex = 0;
            document.getElementById("dropdownTime").selectedIndex = 0;
            document.getElementById("dropdownDay").selectedIndex = 0;
            document.getElementById("popButton").setAttribute("data-content", "");
        }
        //makes sure user selects all the entries
        function details() {
            var eltMovie = document.getElementById("dropdownMovie");            
            var eltDay = document.getElementById("dropdownDay");
            var eltTime = document.getElementById("dropdownTime");
            if (eltMovie.selectedIndex == 0 || eltDay.selectedIndex == 0 || eltTime.selectedIndex == 0) {
                document.getElementById("popButton").setAttribute("data-content", "Please select all the values");
                $('#popButton')
                    .popover()
                    .on('blur', function () {
                        $(this).popover('hide').data('bs.popover').inState.click = false
                    })
            }
            else {
                var chosenMovie = eltMovie.options[eltMovie.selectedIndex].text;
                var chosenDay = eltDay.options[eltDay.selectedIndex].text;
                var chosenTime = eltTime.options[eltTime.selectedIndex].text;
                var data = "The movie \"" + chosenMovie + "\" on " + chosenDay + " at " + chosenTime + " really sucks. If you want to watch it that badly, solve the radio button puzzle!";
                document.getElementById("popButton").setAttribute("data-content", data);
                $('#popButton')
                    .popover()
                    .on('blur', function () {
                        $(this).popover('hide').data('bs.popover').inState.click = false 
                    })
             
              
            }
        }
        $(document).ready(function () {
            $secondbutton = $('#secondButton');
            $popbutton = $('#popButton');
            //clicks the buttons to activate the popovers on the buttons doesnt work due to the focus
          //  $(window).load(function () {
          //      $popbutton.trigger("click");
          //      $("body").trigger("click");
                $popbutton.popover()
          //  })

            $secondbutton              
                .on('mousedown', function () {
                    var text = $('#textbox1').val();
                    switch (text) {
                        case "1":
                            $(this).attr("data-content", "did you mean 2? ;)")                               
                            break;
                        case "2":
                            $(this).attr("data-content", "You pressed this button.");
                            break;
                        case "12":
                            $(this).attr("data-content", "I OBVIOUSLY MEANT THE EXCLUSIVE OR");
                            break;
                        default:
                            $(this).attr("data-content", "Please enter 1 or 2");
                            break;
                    };
                })
                .popover({trigger:'focus'})

            //prevents the enter key from submitting the data and the tab key to go to the button
            $('#textbox1')
                .keydown(function (e) {
                    if (e.keyCode == 13 || e.which == 9) {
                        e.preventDefault();
                    }
                })



            // configures the checkboxes, THERE HAS TO BE A NICER WAY
            var $cNo = [0,$('#check1'), $('#check2'), $('#check3'), $('#check4'), $('#check5'), $('#check6'), $('#check7'), $('#check8'), $('#check9')];
            
            $cNo[1].on('click', function (e) {
                $cNo[2].prop('checked', !$cNo[2].prop('checked'));
                $cNo[4].prop('checked', !$cNo[4].prop('checked'));
                if ($(":checkbox:not(:checked)").length == 0)
                    $('#theButton').removeClass('disabled')
            })

            $cNo[2].on('click', function (e) {
                $cNo[1].prop('checked', !$cNo[1].prop('checked'));
                $cNo[3].prop('checked', !$cNo[3].prop('checked'));
                $cNo[5].prop('checked', !$cNo[5].prop('checked'));
            })

            $cNo[3].on('click', function (e) {
                $cNo[2].prop('checked', !$cNo[2].prop('checked'));
                $cNo[6].prop('checked', !$cNo[6].prop('checked'));
                if ($(":checkbox:not(:checked)").length == 0)
                    $('#theButton').removeClass('disabled')
            })

            $cNo[4].on('click', function (e) {
                $cNo[1].prop('checked', !$cNo[1].prop('checked'));
                $cNo[5].prop('checked', !$cNo[5].prop('checked'));
                $cNo[7].prop('checked', !$cNo[7].prop('checked'));
            })

            $cNo[5].on('click', function (e) {
                $cNo[2].prop('checked', !$cNo[2].prop('checked'));
                $cNo[4].prop('checked', !$cNo[4].prop('checked'));
                $cNo[6].prop('checked', !$cNo[6].prop('checked'));
                $cNo[8].prop('checked', !$cNo[8].prop('checked'));
                if ($(":checkbox:not(:checked)").length == 0)
                    $('#theButton').removeClass('disabled')
            })

            $cNo[6].on('click', function (e) {
                $cNo[3].prop('checked', !$cNo[3].prop('checked'));
                $cNo[5].prop('checked', !$cNo[5].prop('checked'));
                $cNo[9].prop('checked', !$cNo[9].prop('checked'));
            })

            $cNo[7].on('click', function (e) {               
                $cNo[4].prop('checked', !$cNo[4].prop('checked'));                
                $cNo[8].prop('checked', !$cNo[8].prop('checked'));
                if ($(":checkbox:not(:checked)").length == 0)
                    $('#theButton').removeClass('disabled')
            })

            $cNo[9].on('click', function (e) {           
                $cNo[6].prop('checked', !$cNo[6].prop('checked'));
                $cNo[8].prop('checked', !$cNo[8].prop('checked'));
                if ($(":checkbox:not(:checked)").length == 0)
                    $('#theButton').removeClass('disabled')
            })

            $cNo[8].on('click', function (e) {
                $cNo[9].prop('checked', !$cNo[9].prop('checked'));
                $cNo[5].prop('checked', !$cNo[5].prop('checked'));
                $cNo[7].prop('checked', !$cNo[7].prop('checked'));
            })

            $('#resetbox').on('click', function () {
                $(":checkbox").prop("checked", false);
                $("#theButton").addClass('disabled');
            })

        })
            
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
                    <div class="col-lg-12 containerblock" style="background:white;border-radius:5px;margin:5px">
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
                <button class="btn btn-success" type="button" data-container="body" data-toggle="popover" data-placement="left" data-content="" id="popButton" onclick="details()" >Lets go!</button>
                     <a href="#" onclick="javascript:reset()">Reset</a>
                     </div>
                      </div>
                     </form>

                    </div>  
                    
                    <div class=" containerblock col-lg-8 " id="checkPlayground">
                        Check all the radio buttons to activate the button!
                        <div class="form-group">
                            <div class="form-control" style="height:100px">
                                <input type="checkbox" class="radiostyle1" id="check1" />
                                <input type="checkbox" id="check2" class="radiostyle2" />
                                <input type="checkbox" class="radiostyle3" id="check3"> <br />
                                <input type="checkbox" id="check4" class="radiostyle1"/>
                                <input type="checkbox" id="check5" class="radiostyle2"/>
                                <input type="checkbox" id="check6" class="radiostyle3"/> <br />
                                <input type="checkbox" id="check7" class="radiostyle1"/>
                                <input type="checkbox" id="check8" class="radiostyle2"/>
                                <input type="checkbox" id="check9" class="radiostyle3"/>
                            </div>
                            <span style="position:relative; left:44%" id="resetbox"><a href='#'>Reset? </a></span>
                        </div>
                    </div>

                    <div class="containerblock col-lg-3" >
                        <u>The button! </u>
                        <div style="width:50%">
                            <br />
                            <input type="button" class="btn btn-group-lg btn-danger disabled" id="theButton" style="position:relative;left:40%" value="Click me!"/>                            
                        </div>
                        <br />
                    </div>
                    <div class="col-lg-12">
                    <br />
                        <div class="tab-content">
                            <div class="tab-pane fade active">
                                <form id="cases">
                                    <div class="form-group">
                                        Please enter an integer:
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
                <div class="col-sm-4">
                                        <a class="twitter-timeline" style="margin-top:5px" data-lang="en" data-width="220" data-height="450" data-theme="light" href="https://twitter.com/AnnaKendrick47"><script async='async' src="//platform.twitter.com/widgets.js"  charset="utf-8"></script></a>
                </div>
            </div>
            <br />
        </div>
        
    </div>

</body>
</html>
