/*global $*/
/*global M*/
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree

//= require materialize
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
  

$(document).ready(function(){
  $(".dropdown-trigger").dropdown();
  $('select').formSelect();
  $('.slider').slider();
  $('.materialboxed').materialbox();
  $('.fixed-action-btn').floatingActionButton();
});
