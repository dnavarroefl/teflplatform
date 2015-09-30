// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function() {

	 $('button').hover(function() {
          $(this).css('background-color', 'rgb(73,203,214)')}); 

     $('button').click(function() {
          $(this).on('click');
          alert('Liked!');
     });
});