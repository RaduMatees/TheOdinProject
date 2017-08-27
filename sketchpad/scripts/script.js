$(document).ready(function() {
  takeUserInput();
  makeGrid();
  clearScreen();
});

function takeUserInput() {
  $('#button').on('click', function() {
    var gridWidth = parseInt($('.container').css('width'));
    var size = prompt('Enter a number of squares/row/column between 2 and 40:');
    var dimensions = gridWidth / size;

    // remove previous grid
    $('.row').remove();

    // create custom grid
    for (var i = 0; i < size; i++) {
      $('.container').append($("<div class='row'></div>").css('height', dimensions));
    }
    for (var i = 0; i < size; i++) {
      $('.row').append($("<div class='square'></div>").css('height', dimensions).css('width', dimensions));
    }
    hoverEffect();
  });
};

function makeGrid() {

  for (var i = 0; i < 10; i++) {
    $('.container').append("<div class='row'></div>") // Each grid gets 10 rows
  }
  for (var i = 0; i < 10; i++) {
    $('.row').append("<div class='square'></div>"); // Each row gets 10 squares
  }
  hoverEffect();
}

function hoverEffect() {
  $('.square').on('mouseover', function() {
    $(this).css('background-color', 'red');
  })
};

function clearScreen() {
  $('#clear-button').on('click', function() {
    $('.square').css('background-color', 'white');
  });
}
