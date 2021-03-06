/*global $*/
/*global M*/
//= require jquery
//= require jquery_ujs
//= require materialize
//= require_tree .

document.addEventListener('DOMContentLoaded', function() {
  var elems = document.querySelectorAll('.sidenav');
  var instances = M.Sidenav.init(elems, {});
});

document.addEventListener('DOMContentLoaded', function() {
  var elems = document.querySelectorAll('.autocomplete');
　var instances = M.Autocomplete.init(elems);
});

document.addEventListener('DOMContentLoaded', function() {
  var elems = document.querySelectorAll('.dropdown-trigger');
  var instances = M.Dropdown.init(elems);
});
document.addEventListener('DOMContentLoaded', function() {
  var elems = document.querySelectorAll('.collapsible');
  var instances = M.Collapsible.init(elems);
});
document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('.materialboxed');
    var instances = M.Materialbox.init(elems);
});

$(document).ready(function(){
  $(".dropdown-trigger").dropdown();
  $('select').formSelect();
  $('.slider').slider();
  $('.fixed-action-btn').floatingActionButton();
  $('.materialboxed').materialbox();
});
