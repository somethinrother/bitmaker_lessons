document.addEventListener("DOMContentLoaded", function() {
  $.ajax({
        url: 'http://bitkittens.herokuapp.com/cats.json',
        method: 'GET',
        dataType: 'JSON'
    }).done(function(data){
      cats = data.cats
      for (var i = 0; i < cats.length; i++) {
        imgTag = document.createElement('img');
        imgTag.src = cats[i].photo;
        imgTag.alt = cats[i].name;
        catBoxSelector = '#cat' + (i + 1).toString()
        catBox = document.querySelector(catBoxSelector);
        catBox.append(imgTag);
      }
    });
  });
