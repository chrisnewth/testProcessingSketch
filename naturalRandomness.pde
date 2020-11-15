
float minRadius = 5.0;
float alpha = 2.0;

void setup() {

  size(600, 600);

  for (int i = 0; i < 200; i++) { //a universe of 200 ellipses

    float ellipseWidth = hyperbolicPseudorandom (minRadius, alpha);//random ellipse width, using function to return value
    float ellipseHeight = hyperbolicPseudorandom (minRadius, alpha);//random ellipse height, using function to return value

    ellipse(random(0, width), random(0, height), ellipseWidth, ellipseHeight);//draw the ellipse (200 of them)
  }
}

void draw () {
}

float hyperbolicPseudorandom (float minRadius, float alpha) {

  return(minRadius * pow(1 - random(1), -1.0 / alpha));
}
