document.addEventListener("DOMContentLoaded", function() {

  // Selects first button
  var step12Button = document.querySelector('#step12_button');

  // Creates a response when button is clicked
  step12Button.addEventListener( 'click', function () {
    var rootResponse = $.ajax({
      url: 'http://first-ajax-api.herokuapp.com/',
      method: 'GET',
      dataType: 'txt',
    });

    rootResponse.done( function(responseData) {
      console.log('hello world');
    } );
  } );

  // Selects the second button
  var pingButton = document.querySelector('#ping_button');

  // Creates a response when button is clicked
  pingButton.addEventListener( 'click', function () {
    var pingResponse = $.ajax({
      url: 'http://first-ajax-api.herokuapp.com/ping',
      method: 'GET',
      dataType: 'txt',
    });

    // When the event is complete, create a new p tag containing the response data from pingButton
    pingResponse.done( function(responseData) {
      var pingSection = document.querySelector('#step3456');
      var newParagraph = document.createElement('p');
      console.log(responseData);
      newParagraph.innerText = responseData;
      pingSection.appendChild(newParagraph);
    } ).fail( function(responseData) {
      console.log(responseData.responseText);
    } ).always( function() {
      console.log('Your request is finished');
    } );
  } );

  // Select the third button
  var countButton = document.querySelector('#count_button');

  countButton.addEventListener( 'click', function () {
    var countResponse = $.ajax({
      url: 'http://first-ajax-api.herokuapp.com/count',
      method: 'GET',
      dataType: 'txt',
    });

    countResponse.done( function(responseData) {
      console.log(responseData);
    } );
  });

  // Selects the fourth button
  var timeButton = document.querySelector('#time_button');

  timeButton.addEventListener( 'click', function () {
    var timeResponse = $.ajax({
      url: 'http://first-ajax-api.herokuapp.com/time',
      method: 'GET',
      data: {'timezone': 'Antarctica/Vostok'},
      dataType: 'txt',
    });

    timeResponse.done( function(responseData) {
      console.log(responseData);
    } );
  });

  // Selects the fifth button
  var carButton = document.querySelector('#car_button');


  carButton.addEventListener( 'click', function () {
    var carResponse = $.ajax({
      url: 'http://first-ajax-api.herokuapp.com/a_car',
      method: 'GET',
      dataType: 'html',
    });

    carResponse.done( function(responseData) {
      var carUL = document.querySelector('#car_ul');
      var newLI = document.createElement('LI');
      newLI.innerText = responseData;
      carUL.appendChild(newLI);
    } );
  });
});
