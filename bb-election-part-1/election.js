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
      li.innerHTML = '<p>Name: ' + candidate.name + '</p><p>Votes: ' + candidate.votes + '</p>'
      ul.appendChild(li);
    });
  });
});
