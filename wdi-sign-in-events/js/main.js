document.addEventListener("DOMContentLoaded", function(event) {
  var modal   = document.querySelector('.modal');
  var button  = document.querySelector('.signin');
  var closeButton = document.querySelector('.modal > .getstarted > button');

  button.onclick = function() {
      modal.style.display = "block";
  }

  closeButton.onclick = function() {
      modal.style.display = "none";
  }

  window.onclick = function(event) {
      if (event.target == modal) {
          modal.style.display = "none";
      }
  }

  var submit = document.querySelector('.submit');
  var user   = document.querySelector('#user');
  var pass   = document.querySelector('#pass');

  submit.onclick = function() {
      if (user.innerText === "" || pass.innerText === "") {
        user.className += 'error';
        pass.className += 'error';
      }
  }

  user.onclick = function() {
    user.className -= 'error';
  }

  pass.onclick = function() {
    pass.className -= 'error';
  }

});
