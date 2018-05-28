Perceptron p;
Point[] points = new Point[100];

void setup()  {
  size(500,500);
  p = new Perceptron();
  
  for(int i = 0; i < points.length; i++){
    points[i] = new Point();
  }
  
}

void draw()  {
  background(255);
  stroke(0);
  line(0,0,width, height);
  for(Point pt : points){
    pt.show();
  }
  
  for(Point pt : points){
    float[] inputs = {pt.x, pt.y};
    int target = pt.label;
    
    int guess = p.guess(inputs);
    if(guess == target){
      fill(0,255,0);
    }else{
      fill(255,0,0);
    }
      noStroke();
      ellipse(pt.x, pt.y,16,16);
    }
      
}

void mousePressed(){
  for(Point pt : points){
    float[] inputs = {pt.x, pt.y};
    int target = pt.label;
    p.learn(inputs,target);
    
    int guess = p.guess(inputs);
    if(guess == target){
      fill(0,255,0);
    }else{
      fill(255,0,0);
    }
      noStroke();
      ellipse(pt.x, pt.y,16,16);
    }
}
