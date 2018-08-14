int[][] cycles = {
  {0},
  {1, 0, 0},
  {1, 0},
  {1},
  {2, 1},
  {2},
  {0, 2}
};

int count = 0;
boolean animating = true;

void setup() {
  size(350, 50);
}

void draw() {
  background(255);
  for (int i = 0; i < cycles.length; i++) {
    int col = cycles[i][count % cycles[i].length];
    if (col == 0) {
      fill(255, 0, 0);
    } else if (col == 1) {
      fill(0, 255, 0);
    } else {
      fill(0, 0, 255);
    }
    noStroke();
    rect(i*50, 0, 50, 50);
  }
  
  if (animating) {
    count++;
  }
}

void mousePressed() {
  animating = !animating;
}