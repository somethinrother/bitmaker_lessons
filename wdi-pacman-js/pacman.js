// Setup initial game stats
var score = 0;
var lives = 2;
var powerPellet = 4;
var totalDots = 240;
var level = 1;

// Define your ghosts here
var inky = {
  menuOption: '1',
  name:       'Inky',
  colour:     'Red',
  character:  'Shadow',
  edible:     'false',
};

var blinky = {
  menuOption: '2',
  name:       'Blinky',
  colour:     'Cyan',
  character:  'Speedy',
  edible:     'false',
};

var pinky = {
  menuOption: '3',
  name:       'Pinky',
  colour:     'Pink',
  character:  'Bashful',
  edible:     'false',
};

var clyde = {
  menuOption: '4',
  name:       'Clyde',
  colour:     'Orange',
  character:  'Pokey',
  edible:     'false',
};

var ghosts = [inky, blinky, pinky, clyde];

// Draw the screen functionality
function drawScreen() {
  clearScreen();
  setTimeout(function() {
    displayStats();
    displayMenu();
    displayPrompt();
  }, 10);
}

function clearScreen() {
  console.log('\x1Bc');
}

function displayStats() {
  console.log('Score: ' + score + '     Lives: ' + lives + '\nPower Pellets: ' + powerPellet + '\nRemaining dots:' + totalDots);
}

// Displays whether or not a ghost can currently be eaten
function displayEdible(ghost) {
  if (ghost.edible === true) {
    return 'Fleeing';
  } else {
    return 'Hunting';
  }
}

function displayMenu() {
  console.log('\n\nSelect Option:\n');  // each \n creates a new line
  console.log('(d) Eat Dot');
  if (powerPellet > 0) {
    console.log('(p) Power Pellet');
  }
  if (totalDots > 9) {
    console.log('(f) Eat Ten Dots');
  }
  if (totalDots > 99) {
    console.log('(g) Eat One Hundred Dots');
  }
  console.log('(a) Eat The Remaining Dots');
  displayGhost();
  console.log(`(q) Quit`);
}

// Displays each ghost in the menu
function displayGhost() {
  ghosts.forEach(function(item){
    console.log(`(${item.menuOption}) ${item.name} - ${displayEdible(item)}`)
  })
}

function displayPrompt() {
  // process.stdout.write is similar to console.log except it doesn't add a new line after the text
  process.stdout.write('\nWaka Waka :v '); // :v is the Pac-Man emoji.
}


// Menu Options
function gameOver() {
  if (lives <= 0) {
    console.log('You died.');
    process.exit();
  }
}

function eatDot() {
  if (totalDots > 0) {
    console.log('\nChomp!');
    score += 10;
    totalDots -= 1;
  } else {
    newLevel();
  }
}

function eatTenDots() {
  if (totalDots > 9) {
    console.log('\nCHOMP!');
    score += 100;
    totalDots -= 10;
  } else {
    newLevel();
  }
}

function eat100Dots() {
  if (totalDots > 99) {
    console.log('\nCHOMP!!');
    score += 1000;
    totalDots -= 100;
  } else {
    newLevel();
  }
}

function eatAllDots() {
  console.log('CHOMP!!!');
  bonus = (totalDots * 10);
  score += bonus;
  totalDots = 0;
  newLevel();
}

function eatGhost(ghost) {
  if (ghost.edible === true) {
    console.log(`\nYou ate ${ghost.name}`);
    score += 200;
    ghost.edible = false;
  } else {
    console.log('\nThe ghost ate you!');
    gameOver();
    lives -= 1;
  }
}

function eatPellet() {
  if (powerPellet > 0) {
    score += 50;
    powerPellet -= 1;
    ghosts.forEach(function(item) {
      item['edible'] = true;
    })
    console.log('\nTime to eat!');
  } else {
    console.log("\nYou're out of power pellets!");
  }
}

function newLevel() {
  console.log('You win!');
  baseDots = 240;
  newLevelDots = (40 * level);
  totalDots = baseDots + newLevelDots;
  level += 1;
  lives += 1;
}

// Process Player's Input
function processInput(key) {
  switch(key) {
    case '\u0003': // This makes it so CTRL-C will quit the program
    case 'q':
      process.exit();
      break;
    case 'd':
      eatDot();
      break;
    case 'f':
      eatTenDots();
      break;
    case 'g':
      eat100Dots();
      break;
    case 'a':
      eatAllDots();
      break;
    case 'p':
      eatPellet();
      break;
    case '1':
      eatGhost(ghosts[0]);
      break;
    case '2':
      eatGhost(ghosts[1]);
      break;
    case '3':
      eatGhost(ghosts[2]);
      break;
    case '4':
      eatGhost(ghosts[3]);
      break;
    default:
      console.log('\nInvalid Command!');
  }
}

//
// YOU PROBABLY DON'T WANT TO CHANGE CODE BELOW THIS LINE
//

// Setup Input and Output to work nicely in our Terminal
var stdin = process.stdin;
stdin.setRawMode(true);
stdin.resume();
stdin.setEncoding('utf8');

// Draw screen when game first starts
drawScreen();

// Process input and draw screen each time player enters a key
stdin.on('data', function(key) {
  process.stdout.write(key);
  processInput(key);
  setTimeout(drawScreen, 450); // The command prompt will flash a message for 300 milliseoncds before it re-draws the screen. You can adjust the 300 number to increase this.
});

// Player Quits
process.on('exit', function() {
  console.log('\n\nGame Over!\n');
});
