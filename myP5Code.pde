//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400); 
}

//🎯Variable Declarations Go Here
var frankX = 98;
var frankY=336;
var eyeswidth = 20;
var eyesheight = 20;


//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);
  
   if(mousePressed){
    showXYPositions();
    
  }

  
  //🎯Animation Code Goes Here
  //frank head 
  fill(0,0,0) 
  noStroke()
  ellipse(frankX,frankY,100,100);
  triangle(frankX - 53,frankY-66,frankX-40,frankY-21,frankX-16,frankY-46)
  triangle(frankX + 57,frankY-58,frankX+20,frankY-41,frankX+43,frankY-17)
  //frank eyes
  fill(0,255,0)
  ellipse(frankX - 21,frankY-9,eyeswidth,eyesheight)
  ellipse(frankX + 17,frankY-9,eyeswidth,eyesheight)
  //frank pupil
  fill(0,0,0)
  ellipse(frankX-21,frankY-9,eyeswidth - 15,eyesheight)
  ellipse(frankX+17,frankY-9,eyeswidth - 15,eyesheight)
  //frank nose
  fill(frankX+137, 174, 213 )
  triangle(frankX-3,frankY+20,frankX-9,frankY+11,frankX+9,frankY+11)
  //frank whiskers
  fill(255,255,255)
  strokeWeight(2)
  stroke(255,255,255)
  line(frankX-15,frankY+14,frankX-71,frankY+4)
  line(frankX-11,frankY+16,frankX-64,frankY+28)
  line(frankX+12,frankY+14,frankX+59,frankY+4)
  line(frankX+8,frankY+16,frankX+56,frankY+28)
  
  
  frankX += 1;
  frankY -= 1;
  eyeswidth += 1;
  eyesheight += 1;
  
if (frankX > width + 50 || frankY < -50 || eyeswidth > 80 || eyesheight > 80) {
        frankX = 98;      
        frankY = 336;     
        eyeswidth = 20;   
        eyesheight = 20;  
    }
}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255)
    rect(270,300,150,100)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 290, 350)
    fill(255,0,255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
