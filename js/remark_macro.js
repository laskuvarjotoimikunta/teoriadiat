remark.macros.video = function (url) {
  var url = this;
  return '<video width="100%" controls><source src="' + url + '"/></source></video>';
};

remark.macros.ytvideo = function (token) {
  var token = this;
  return '<iframe width="100%" height="70%" src=https://www.youtube.com/embed/' + token +'?rel=0&showinfo=0"> </iframe>';
};

remark.macros.scale = function (percentage) {
  var url = this;
  return '<img src="' + url + '" style="width: ' + percentage + '" />';
};

remark.macros.include = function () {
  var url = this;
  var xmlhttp = new XMLHttpRequest();
  xmlhttp.open('GET', this, false);
  xmlhttp.send();
  // alert(xmlhttp.responseText);
  return xmlhttp.responseText;
};
