$(document).ready(function() {
  makeGrid();
  hoverEffect();
  clearScreen();
  takeUserInput();
});

function takeUserInput() {
  $('#button').on('click', function() {
    var size = prompt('Enter a number of squares/row/column between 2 and 40:')
    return size;
  });
};

function makeGrid() {

  for (var i = 0; i < 10; i++) {
    $('.container').append("<div class='row'></div>"); // Each grid gets 16 rows
  }
  for (var i = 0; i < 10; i++) {
    $('.row').append("<div class='square'></div>"); // Each row gets 16 squares
  }
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
