var currentPlayer = 1;

function createBoard() {
  var rowNum = 0;
  var container = document.querySelector('.container');
  for (var slotCount = 0; slotCount < 9; slotCount++) {
    newSlot = document.createElement('div');
    if (slotCount % 3 === 0 && slotCount != 0) {
      rowNum++;
    };

    newSlot.setAttribute("data-row", `${rowNum}`);
    newSlot.setAttribute("data-column", `${(slotCount) % 3}`);

    if (slotCount % 2 === 0 || slotCount === 0) {
      newSlot.setAttribute("data-diagonal", true);
    };
    container.appendChild(newSlot);
    newSlot.className = `slot${slotCount} slot`;
  };
};

function switchPlayer() {
  if (currentPlayer === 1) {
    currentPlayer = 2;
  } else if (currentPlayer === 2) {
    currentPlayer = 1;
  };
};

function lineChecker(slotArray) {
  let streak = 0;
  var previousSymbol;
  if (currentSymbol !== null) {
    var currentSymbol = null;
  };

  if (slotArray.length > 1) {
    slotArray.forEach(function(slot) {
      if (slot.hasChildNodes()) {
        currentSymbol = slot.children[0].className;
      } else {
        currentSymbol = null;
      };

      streak++;
      if (currentSymbol !== null && currentSymbol === previousSymbol) {
        streak++;
      } else {
        streak = 0;
      };
      previousSymbol = currentSymbol;

      if (streak >= 3) {
        alert(`Player ${currentPlayer} Wins!`);
        document.location.reload();
      };
    });
  };
};

function rowChecker() {
  var row0 = document.querySelectorAll(`[data-row='0']`)
  var row1 = document.querySelectorAll(`[data-row='1']`)
  var row2 = document.querySelectorAll(`[data-row='2']`)

  var rows = [row0, row1, row2];
  rows.forEach(function(row) {
    lineChecker(row);
  });
};

function columnChecker() {
  var column0 = document.querySelectorAll(`[data-column='0']`)
  var column1 = document.querySelectorAll(`[data-column='1']`)
  var column2 = document.querySelectorAll(`[data-column='2']`)

  var columns = [column0, column1, column2];
  columns.forEach(function(column) {
    lineChecker(column);
  });
};

function diagonalChecker() {

  var allDiagonalSlots = document.querySelectorAll(`[data-diagonal=true]`);
  var diagonalLine0 = [allDiagonalSlots[0], allDiagonalSlots[2], allDiagonalSlots[4]]
  var diagonalLine1 = [allDiagonalSlots[1], allDiagonalSlots[2], allDiagonalSlots[3]]
  var diagonalLines = [diagonalLine0, diagonalLine1]

  diagonalLines.forEach(function(line){
    lineChecker(line);
  });
};

function winChecker() {
  rowChecker();
  columnChecker();
  diagonalChecker();
};

function makeMove(cell) {
  var newCell = document.createElement('div');
  if (currentPlayer === 1) {
    newCell.classList = 'x'
  } else if (currentPlayer === 2) {
    newCell.classList = 'o'
  };
  cell.appendChild(newCell);
  winChecker();
  switchPlayer();
};

document.addEventListener('DOMContentLoaded', function() {
  var container = document.querySelector('.container');
  createBoard();

  container.addEventListener('click', function(e) {
    var clickedCell = e.target;

    if (!clickedCell.hasChildNodes() && clickedCell.className.includes('slot')) {
      makeMove(clickedCell);
    };
  });
}, false);
