public void setup() {
  size(600, 600);
  background(0, 0, 0);
  noLoop();
}

public void draw() {
  for (int i = 0; i <= 900; i += 100) {
    for (int j = 0; j <= 900; j += 100) {
      triforce(0+i, 50+i, 50+j, 100+j, 25+i);
    }
  }
}


void triangle(int leftXVertex, int rightXVertex, int topYVertex, int bottomYVertex, int topXVertex) {
  int xVertex = 0;
  int yVertex = 0;
  float y = 100;
  noFill();
  while (leftXVertex + xVertex != rightXVertex - xVertex && bottomYVertex + yVertex!= topYVertex - yVertex ) {
    stroke(y, y, 0);
    triangle(topXVertex, topYVertex+yVertex, leftXVertex+xVertex, bottomYVertex-yVertex, rightXVertex-xVertex, bottomYVertex-yVertex);
    if (leftXVertex + xVertex != rightXVertex - xVertex) {
      xVertex++;
    }
    if (leftXVertex + xVertex > rightXVertex - xVertex) {
      leftXVertex = rightXVertex;
    }
    if (topYVertex + yVertex != bottomYVertex - yVertex) {
      yVertex++;
    }
    if (topYVertex + yVertex > bottomYVertex - yVertex) {
      topYVertex = bottomYVertex;
    }
    y+=255/30.0;
  }
}

void triforce(int leftXVertex, int rightXVertex, int topYVertex, int bottomYVertex, int topXVertex) {
  for (int i = 0; i < 51; i += 50) {
    int xVertex = 0;
    int yVertex = 0;
    float y = 100;
    noFill();
    while (leftXVertex + xVertex!= rightXVertex - xVertex && bottomYVertex + yVertex!= topYVertex - yVertex ) {
      stroke(y, y, 0);
      triangle(topXVertex + i, topYVertex+yVertex, leftXVertex+xVertex + i, bottomYVertex-yVertex, rightXVertex-xVertex + i, bottomYVertex-yVertex);
      if (leftXVertex + xVertex != rightXVertex - xVertex) {
        xVertex++;
      }
      if (leftXVertex + xVertex > rightXVertex - xVertex) {
        leftXVertex = rightXVertex;
      }
      if (topYVertex + yVertex != bottomYVertex - yVertex) {
        yVertex++;
      }
      if (topYVertex + yVertex > bottomYVertex - yVertex) {
        topYVertex = bottomYVertex;
      }
      y+=255/30.0;
    }
  }
  triangle(leftXVertex+25, rightXVertex+25, topYVertex-50, bottomYVertex-50, topXVertex+25);
}
