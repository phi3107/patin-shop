// Default styles
document.getElementsByTagName("html")[0].className = "pink";
document.getElementById("title").className = "pink";
document.getElementsByTagName("fieldset")[0].className = "pink";
var inputArray = document.getElementsByTagName("input");
for (var i = 0; i < inputArray.length; i++) {
  document.getElementsByTagName("input")[i].className = "pink";
}
document.getElementById("submit").className = "pink";

// Select event
document.getElementById("fav_color").onchange = function() {
  updateColors()
};

function updateColors() {
  var x = document.getElementById("fav_color");
  var xcolor = "pink";
  if (x.value != 'Select color...') {
    var xcolor = x.value.toLowerCase();
  } 
  // updating
  console.log(x.value, xcolor);
  document.getElementsByTagName("html")[0].className = xcolor;
  document.getElementById("title").className = xcolor;
  document.getElementsByTagName("fieldset")[0].className = xcolor;
  var inputArray = document.getElementsByTagName("input");
  for (var i = 0; i < inputArray.length; i++) {
    document.getElementsByTagName("input")[i].className = xcolor;
  }
  document.getElementById("submit").className = xcolor;

}