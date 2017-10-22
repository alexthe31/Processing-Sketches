static final int TOTAL_BALLS = 100;
static final int VEL_RANGE = 10;

long startTime;
long endTime;
long frameTime;
float deltaTime;
float totalTime;
int totalFrames;
int frames;
int fps;

Ball[] balls = new Ball[TOTAL_BALLS];
void settings() {
  size(1920, 1080, P3D);
}

void setup() {
  noStroke();
  for (int i = 0; i < balls.length; i++) {
    balls[i] = new Ball(new PVector(random(width), random(height), random(-width)), new PVector(random(-VEL_RANGE, VEL_RANGE), random(-VEL_RANGE, VEL_RANGE), random(-VEL_RANGE, VEL_RANGE)), random(1, 25), random(1, 15));
  }
  frameTime = System.currentTimeMillis();
}

void draw() {
  startTime = System.currentTimeMillis();
  background(225);

  directionalLight(255, 255, 255, -1, -1, -1);

  for (int i = 0; i < balls.length; i++) {
    for (int j = i + 1; j < balls.length; j++) {
      handleCollision(balls[i], balls[j]);
    }
  }

  drawArea();
  for (int i = 0; i < balls.length; i++) {
    moveBall(balls[i]);
    drawBall(balls[i]);
  }

  text(fps, 100, 100);

  endTime = System.currentTimeMillis();
  deltaTime = (endTime - startTime) / 1000.0f;

  if (System.currentTimeMillis() - frameTime >= 1000) {
    println(fps);
    fps = frames;
    frames = 0;
    totalTime = 0;
    frameTime = System.currentTimeMillis();
  }

  totalTime += deltaTime;
  totalFrames++;
  frames++;
}

void moveBall(Ball b) {
  b.position.add(new PVector(b.velocity.x, b.velocity.y, b.velocity.z));
  if (b.position.x <= 0 + b.radius) {
    b.position.x = b.radius + 1;
    applyForce(b, new PVector(1, 0, 0).mult(b.velocity.x * b.mass * -2));
  } else if (b.position.x >= width - b.radius) {
    b.position.x = width - b.radius - 1;
    applyForce(b, new PVector(-1, 0, 0).mult(b.velocity.x * b.mass * 2));
  }

  if (b.position.y <= b.radius) {
    b.position.y = b.radius + 1;
    applyForce(b, new PVector(0, 1, 0).mult(b.velocity.y * b.mass * -2));
  } else if (b.position.y >= height - b.radius) {
    b.position.y = height - b.radius - 1;
    applyForce(b, new PVector(0, -1, 0).mult(b.velocity.y * b.mass * 2));
  }

  if (b.position.z >= width / 3) {
    b.position.z = width / 3 - 1;
    applyForce(b, new PVector(0, 0, -1).mult(b.velocity.z * b.mass * 2));
  }else if(b.position.z <= -width + b.radius){
    b.position.z = -width + b.radius + 1;
    applyForce(b, new PVector(0, 0, -1).mult(b.velocity.z * b.mass * 2));
  }
}

void applyForce(Ball b, PVector force) {
  b.velocity.add(force.div(b.mass));
}

void handleCollision(Ball b1, Ball b2) {
  float dist = b1.radius + b2.radius;
  float pos = PVector.dist(b1.position, b2.position);
  pos -= dist;
  if (pos <= 0) {
    PVector b1onb2 = PVector.sub(b2.position, b1.position).normalize();
    PVector b2onb1 = PVector.sub(b1.position, b2.position).normalize();
    b1.position.sub(PVector.mult(b2onb1, pos));
    b2.position.sub(PVector.mult(b1onb2, pos));
    float scale = PVector.dist(b1.velocity, b2.velocity);
    applyForce(b1, b2onb1.mult(scale));
    applyForce(b2, b1onb2.mult(scale));
  }
}

void drawBall(Ball b) {
  fill(b.col.x, b.col.y, b.col.z);
  pushMatrix();
  translate(b.position.x, b.position.y, b.position.z);
  sphere(b.radius);
  popMatrix();
}

void drawArea(){
 stroke(1);
 noFill();
 pushMatrix();
 
 rotateY(PI / 2);
 rect(0, 0, width, height);
 translate(0, 0, width);
 rect(0, 0, width, height);
 rotateX(-PI / 2);
 rect(0, 0, width, width);
 translate(0, 0, height);
 rect(0, 0, width, width);
 
 popMatrix();
 noStroke();
}

class Ball {

  PVector position = new PVector(0, 0, 0);
  PVector velocity = new PVector(0, 0, 0);
  PVector col = new PVector(random(256), random(256), random(256));
  float mass = 0;
  float radius = 0;

  public Ball(PVector pos, PVector vel, float mass, float radius) {
    this.position = pos;
    this.velocity = vel;
    this.mass = mass;
    this.radius = radius;
  }
}
