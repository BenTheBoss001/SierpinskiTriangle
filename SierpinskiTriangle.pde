public void setup(){
  size(800,800);
  background(50);
  sierpinski(100,700,600, 75);
}

public void draw(){
  
}

void sierpinski(int x, int y, int len, int small){
  if (len <= small){
    triangle(x, y, x+len, y, x+len/2, y-len);
  }
  if (len >100){
    sierpinski(x, y, len/2, small);
    sierpinski(x+len/2, y, len/2, small);
    sierpinski(x+len/4, y-len/2, len/2, small);
  }
}
