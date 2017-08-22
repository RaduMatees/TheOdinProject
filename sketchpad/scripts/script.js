$(document).ready(function() {
  takeUserInput();
  makeGrid();
});

function takeUserInput() {
  $('#button').click(function(){
    var userInput = $('input[name=inputButton]').val();
  return userInput;
  });
};

function makeGrid() {
  var gridWidth = $('.container').css('width');
  var squareSize = gridWidth / takeUserInput();
  var square = $("<div class='square'></div>");

  $('.container').append($(square).css('width', '20px').css('height', '20px'));
}
