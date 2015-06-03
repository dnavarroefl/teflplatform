// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

button = document.getElementById('like-button')
button.addEventListener('click', likePost, false)

function likePost() {
  button.classList.add('liked');
  button.innerHTML = "Liked!";
  document.querySelector('h3').style.color = "red";
}