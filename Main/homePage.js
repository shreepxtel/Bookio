//This is the functionality behind the live time which appears on the home page at the top left.
function startTime() {
  var today = new Date();
  var h = today.getHours();
  var m = today.getMinutes();
  var s = today.getSeconds();
  m = checkTime(m);
  s = checkTime(s);
  document.getElementById('txt').innerHTML = h + ":" + m + ":" + s;
  var t = setTimeout(startTime, 500);
}

//This section is to calculate the minutes and seconds.
function checkTime(i) {
  if (i < 10) {
    i = "0" + i};
  return i;
}
