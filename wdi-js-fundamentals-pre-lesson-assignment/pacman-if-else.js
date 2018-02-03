var powerPelletEaten = false;
var ghosts = 4;

while (true) {
  console.log('Ghosts remaining: ' + ghosts);

  if (powerPelletEaten == false) {
    console.log('Pac-man eats the power pellet.');
    powerPelletEaten = true;
  } else if (ghosts > 0) {
    console.log('Pac-man eats a ghost.');
    ghosts--;
  } else {
    break;
  }
}

console.log('Pac-man returns home after a long day in the maze.' );
