document.addEventListener("DOMContentLoaded", function() {
  // Imagination!
  $.ajax({
    url: 'https://bb-election-api.herokuapp.com/',
    method: 'GET',
    dataType: 'JSON'
  }).done(function(data){
    var ul = document.querySelector('#candidates');
    data.candidates.forEach(function(candidate){
      li = document.createElement('li');
      li.className = 'candidate'
      li.innerHTML = '<p>Name: ' + candidate.name + '</p><p>Votes: ' + candidate.votes + '</p>'
      ul.appendChild(li);
      var voteForm = document.createElement('form');
      voteForm.className = 'vote';
      ul.appendChild(voteForm)

      voteForm.setAttribute('method', 'post')
      voteForm.setAttribute('action', 'https://bb-election-api.herokuapp.com/vote')

      var submitButton = document.createElement('button')
      submitButton.setAttribute('type', 'submit')
      submitButton.innerText = 'Vote for ' + candidate.name
      voteForm.insertAdjacentElement('beforeend', submitButton)

      var hiddenField = document.createElement('input')
      hiddenField.setAttribute('type', 'hidden')
      hiddenField.setAttribute('name', 'name')
      hiddenField.setAttribute('value', candidate.name)
      voteForm.insertAdjacentElement('beforeend', hiddenField)
    });
  });
});
