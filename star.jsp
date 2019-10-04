<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

    <html>
    <head>
    <meta charset="UTF-8" />
    <link href="css/style.css" rel="stylesheet" type="text/css">

    <title>sTAR RATING</title>
 

<style>
body {
font-family: Verdana, arial;
 }

.notation-text {
color: #000000;
font-size: 18px;
text-align: center;
margin: 18px;
}

.notation-block-star {
display: table;
margin: 0 auto;
width: inherit;
}

/* https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Empty_Star.svg/2000px-Empty_Star.svg.png */
.notation-star {
background-image: url("Free_Blue_Star.jpg");
background-repeat: no-repeat;
cursor: pointer;
display: table-cell;
float: right;
height: 20px;
width: 20px;
padding: 10 5px;
background-size: cover;
}


.notation-star:hover,
.notation-star:hover ~ .notation-star {
/* http://findicons.com/files/icons/1035/human_o2/128/bookmark_new.png  */
background-image: url(" 2000px-Red_star.svg.png");
}

.notation-star-selected {
background-image: url("Free_Blue_Star.jpg");
background-repeat: no-repeat;
cursor: pointer;
display: table-cell;
float: right;
height: 64px;
width: 64px;
padding: 0 5px;
}

.notation-star-selected  ~ .notation-star {
background-image: url("Free_Blue_Star.jpg");
}

#star0{visibility: hidden; }

</style>

       </head>
<body>
         <div class="notation-text">this is rating module for each product </div>


   <form method="post" action="voting">
   <div id="star5" class="notation-star" onClick="notation(this.id);"></div>
   <div id="star4" class="notation-star" onClick="notation(this.id);"></div>
   <div id="star3" class="notation-star" onClick="notation(this.id);"></div>
   <div id="star2" class="notation-star" onClick="notation(this.id);"></div>
   <div id="star1" class="notation-star" onClick="notation(this.id);"></div>
   <div id="star0" class="notation-star"   onClick="notation(this.id);"></div>
   <input type="hidden" id="notationNote" name="notation_note" value="0">
   <input type="submit" value="ok"></form>  <br>

   <p id="vote"></p>
   
   <script type="text/javascript">
   
        function notation(starId) {

            var elements = document.getElementsByClassName("notation-star-selected");

            for (i = 0; i < elements.length; i++) {
                elements[i].className = "notation-star";
                //document.getElementById(starId).style.display = "block";
            }


            document.getElementById(starId).className = "notation-star-selected";


            document.getElementById("notationNote").value = starId.substr(4,  4);

            var note = document.getElementById("notationNote").value = starId.substr(4, 4);

            document.getElementById("vote").innerHTML = note.valueOf();



           }
        </script>
   
</body>
              </html>