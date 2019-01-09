Video references:
Ghetto	
https://www.youtube.com/watch?v=8nGYkEBDjX8

Tree falling
https://www.youtube.com/watch?v=Ec1uy4AR5qc

Market eindhoven
https://www.youtube.com/watch?v=VVh33VgZOqM

hiking
https://www.youtube.com/watch?v=wqvcHV5_bT0

litter
https://www.youtube.com/watch?v=EMPxr0X6cX8

Amstel 3
https://www.youtube.com/watch?v=zeGzgZXLfkM&t=73s

newyork
https://www.youtube.com/watch?v=zZlMxHQCApw&t=655s

crash
https://www.youtube.com/watch?v=57GwullsBv0

No crash
https://www.youtube.com/watch?v=CoN37VCZ9Jc




import processing.video.*;
Movie movie1;
Movie movie2;
Movie movie3;
Movie movie4;
Movie movie5;
Movie movie6;
Movie movie7;
Movie movie8;
Movie movie9;
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage img7;
PImage img8;
PImage img9;
int x=1;
int cloud=0;          //if cloud image is on
int cloudthoughts=0;          //if cloud image is on
int speech=0;          //if on
int like=0;          //if on
int dislike=0;          //if on
int heart=0;          //if on
int surp=0;          //if on
int happy=0;          //if on
int sad=0;          //if on
////////////////////////////////////////////
int cloudy;
int cloudx;
int cloudthoughtsy;
int cloudthoughtsx;
int speechx;          //if on
int likex;          //if on
int dislikex;          //if on
int heartx;          //if on
int surpx;          //if on
int happyx;          //if on
int sadx;          //if on

int speechy;          //if on
int likey;          //if on
int dislikey;          //if on
int hearty;          //if on
int surpy;          //if on
int happyy;          //if on
int sady;          //if on
//int cloudy;
//int cloudx;
//int cloudy;
//int cloudx;
//int cloudy;
//int cloudx;
//int cloudy;
//int cloudx;
/////////////////////////////////////////// levels from 1 to 9
int level=0;

void setup() {
  size(1920, 1000);
  movie1 = new Movie(this, "video8.avi");
  movie2 = new Movie(this, "video9.avi");
  movie3 = new Movie(this, "video3.avi");
  movie4 = new Movie(this, "video4.avi");
  movie5 = new Movie(this, "video5.avi");
  movie6 = new Movie(this, "video6.avi");
  movie7 = new Movie(this, "video7.avi");
  movie8 = new Movie(this, "video1.avi");
  movie9 = new Movie(this, "video2.avi");

  movie1.loop();
  movie2.loop();
  movie3.loop();
  movie4.loop();
  movie5.loop();
  movie6.loop();
  movie7.loop();
  movie8.loop();
  movie9.loop();
  img1 = loadImage("cloud.png");
  img2 = loadImage("cloudthought.png");
  img3 = loadImage("speech.png");
  img4 = loadImage("like.png");
  img5 = loadImage("dislike.png");
  img6 = loadImage("heart.png");
  img7 = loadImage("surp.png");
  img8 = loadImage("happy.png");
  img9 = loadImage("sad.png");
}
///////////////////////////////////////////////////////////////////////////////////
void mousePressed() {

  if (x==1) {                // PAUSING / UNPAUSING
    if (level==1) {
      movie1.pause();
    }
    if (level==2) {
      movie2.pause();
    }
    if (level==3) {
      movie3.pause();
    }
    if (level==4) {
      movie4.pause();
    }
    if (level==5) {
      movie5.pause();
    }
    if (level==6) {
      movie6.pause();
    }
    if (level==7) {
      movie7.pause();
    }
    if (level==8) {
      movie8.pause();
    }
    if (level==9) {
      movie9.pause();
    }
    x=0;
  }           //x=0 is paused

  else {
    if (mouseY<800) {
      if (level==1) {
        movie1.play();
      }
      if (level==2) {
        movie2.play();
      }
      if (level==3) {
        movie3.play();
      }
      if (level==4) {
        movie4.play();
      }
      if (level==5) {
        movie5.play();
      }
      if (level==6) {
        movie6.play();
      }
      if (level==7) {
        movie7.play();
      }
      if (level==8) {
        movie8.play();
      }
      if (level==9) {
        movie9.play();
      }

      x=1;
    }
  }
}

//////////////////////////////////////////////////////////////////////////////////////////
void mouseDragged() {
  if (x==0) {                                ///if the bar is open
    if ((mouseY<950)&&(mouseY>850)) {          // if its in the height
      if ((mouseX<200)&&(mouseX>50)) {            // if its in the X of cloud
        cloud=1;                                        // if this image is being dragged
      }
    }
    if ((mouseY<950)&&(mouseY>850)) {          // if its in the height
      if ((mouseX<400)&&(mouseX>250)) {            // if its in the X of cloud
        cloudthoughts=1;                                        // if this image is being dragged
      }
    }
    if ((mouseY<950)&&(mouseY>850)) {          // if its in the height
      if ((mouseX<600)&&(mouseX>450)) {            // if its in the X of cloud
        speech=1;                                        // if this image is being dragged
      }
    }
    if ((mouseY<950)&&(mouseY>850)) {          // if its in the height
      if ((mouseX<800)&&(mouseX>650)) {            // if its in the X of cloud
        like=1;                                        // if this image is being dragged
      }
    }
    if ((mouseY<950)&&(mouseY>850)) {          // if its in the height
      if ((mouseX<1000)&&(mouseX>850)) {            // if its in the X of cloud
        dislike=1;                                        // if this image is being dragged
      }
    }
    if ((mouseY<950)&&(mouseY>850)) {          // if its in the height
      if ((mouseX<1200)&&(mouseX>1050)) {            // if its in the X of cloud
        heart=1;                                        // if this image is being dragged
      }
    }
    if ((mouseY<950)&&(mouseY>850)) {          // if its in the height
      if ((mouseX<1400)&&(mouseX>1250)) {            // if its in the X of cloud
        surp=1;                                        // if this image is being dragged
      }
    }
    if ((mouseY<950)&&(mouseY>850)) {          // if its in the height
      if ((mouseX<1600)&&(mouseX>1450)) {            // if its in the X of cloud
        happy=1;                                        // if this image is being dragged
      }
    }
    if ((mouseY<950)&&(mouseY>850)) {          // if its in the height
      if ((mouseX<1800)&&(mouseX>1650)) {            // if its in the X of cloud
        sad=1;                                        // if this image is being dragged
      }
    }
  }
}
/////////////////////////////////////////////////////////////////////////////////////
void mouseReleased() {
  if (cloud==1) {
    cloud=3; 
    cloudy= mouseY;
    cloudx= mouseX;
  }
  if (cloudthoughts==1) {
    cloudthoughts=3; 
    cloudthoughtsy= mouseY;
    cloudthoughtsx= mouseX;
  }
  if (speech==1) {
    speech=3; 
    speechy= mouseY;
    speechx= mouseX;
  }
  if (like==1) {
    like=3; 
    likey= mouseY;
    likex= mouseX;
  }
  if (dislike==1) {
    dislike=3; 
    dislikey= mouseY;
    dislikex= mouseX;
  }
  if (heart==1) {
    heart=3; 
    hearty= mouseY;
    heartx= mouseX;
  }
  if (surp==1) {
    surp=3; 
    surpy= mouseY;
    surpx= mouseX;
  }
  if (happy==1) {
    happy=3; 
    happyy= mouseY;
    happyx= mouseX;
  }
  if (sad==1) {
    sad=3; 
    sady= mouseY;
    sadx= mouseX;
  }
}
////////////////////////////////////////////////////////////////////////////////////
void draw() {
  rect(0, 0, width, height);

  if (level==1) {
    image(movie1, 0, 0, width, height);
  }
  if (level==2) {
    image(movie2, 0, 0, width, height);
  }
  if (level==3) {
    image(movie3, 0, 0, width, height);
  }
  if (level==4) {
    image(movie4, 0, 0, width, height);
  }
  if (level==5) {
    image(movie5, 0, 0, width, height);
  }
  if (level==6) {
    image(movie6, 0, 0, width, height);
  }
  if (level==7) {
    image(movie7, 0, 0, width, height);
  }
  if (level==8) {
    image(movie8, 0, 0, width, height);
  }
  if (level==9) {
    image(movie9, 0, 0, width, height);
  }


  if (x==0) {        ///////////////////////////// when video is paused
    rect(0, 800, 1920, 1000); 
    imageMode(CORNERS);
    image(img1, 50, 850, 200, 950);              // cloud
    image(img2, 250, 850, 400, 950);              // thought cloud
    image(img3, 450, 850, 600, 950);              // speech
    image(img4, 650, 850, 800, 950);              // like
    image(img5, 850, 850, 1000, 950);              // dislike
    image(img6, 1050, 850, 1200, 950);              // heart
    image(img7, 1250, 850, 1400, 950);              // like
    image(img8, 1450, 850, 1600, 950);              // dislike
    image(img9, 1650, 850, 1800, 950);              // heart
  }

  ////////////////////////////////////////////////////
  if (cloud==1) {
    image(img1, mouseX, mouseY, mouseX+150, mouseY+100);              // cloud
  } else if (cloud==3) {
    image(img1, cloudx, cloudy, cloudx+150, cloudy+100);              // cloud
  }

  if (cloudthoughts==1) {
    image(img2, mouseX, mouseY, mouseX+150, mouseY+100);              // cloud
  } else if (cloudthoughts==3) {
    image(img2, cloudthoughtsx, cloudthoughtsy, cloudthoughtsx+150, cloudthoughtsy+100);              // cloud
  }

  if (speech==1) {
    image(img3, mouseX, mouseY, mouseX+150, mouseY+100);              // cloud
  } else if (speech==3) {
    image(img3, speechx, speechy, speechx+150, speechy+100);              // cloud
  }

  if (like==1) {
    image(img4, mouseX, mouseY, mouseX+150, mouseY+100);              // cloud
  } else if (like==3) {
    image(img4, likex, likey, likex+150, likey+100);              // cloud
  }

  if (dislike==1) {
    image(img5, mouseX, mouseY, mouseX+150, mouseY+100);              // cloud
  } else if (dislike==3) {
    image(img5, dislikex, dislikey, dislikex+150, dislikey+100);              // cloud
  }

  if (heart==1) {
    image(img6, mouseX, mouseY, mouseX+150, mouseY+100);              // cloud
  } else if (heart==3) {
    image(img6, heartx, hearty, heartx+150, hearty+100);              // cloud
  }

  if (surp==1) {
    image(img7, mouseX, mouseY, mouseX+150, mouseY+100);              // cloud
  } else if (surp==3) {
    image(img7, surpx, surpy, surpx+150, surpy+100);              // cloud
  }

  if (happy==1) {
    image(img8, mouseX, mouseY, mouseX+150, mouseY+100);              // cloud
  } else if (happy==3) {
    image(img8, happyx, happyy, happyx+150, happyy+100);              // cloud
  }

  if (sad==1) {
    image(img9, mouseX, mouseY, mouseX+150, mouseY+100);              // cloud
  } else if (sad==3) {
    image(img9, sadx, sady, sadx+150, sady+100);              // cloud
  }

  /////////////////////////////////////////////////// LEVELS
  if (keyPressed) {
    if (key == '0') {
      cloud=0;
      cloudthoughts=0;
      speech=0;          //if on
      like=0;          //if on
      dislike=0;          //if on
      heart=0;          //if on
      surp=0;          //if on
      happy=0;          //if on
      sad=0;          //if on
      level=0;
      movie1.stop();
      movie2.stop();
      movie3.stop();
      movie4.stop();
      movie5.stop();
      movie6.stop();
      movie7.stop();
      movie8.stop();
      movie9.stop();
      movie1.play();
            x=1;
    }
    if (key == '1') {
        cloud=0;
      cloudthoughts=0;
      speech=0;          //if on
      like=0;          //if on
      dislike=0;          //if on
      heart=0;          //if on
      surp=0;          //if on
      happy=0;          //if on
      sad=0;          //if on
      level=1;
      movie2.stop();
      movie3.stop();
      movie4.stop();
      movie5.stop();
      movie6.stop();
      movie7.stop();
      movie8.stop();
      movie9.stop();
      movie1.play();
            x=1;

    }
    if (key == '2') {
           cloud=0;
      cloudthoughts=0;
      speech=0;          //if on
      like=0;          //if on
      dislike=0;          //if on
      heart=0;          //if on
      surp=0;          //if on
      happy=0;          //if on
      sad=0;          //if on
      level=2;
      movie1.stop();
      movie3.stop();
      movie4.stop();
      movie5.stop();
      movie6.stop();
      movie7.stop();
      movie8.stop();
      movie9.stop();
      movie2.play();
            x=1;

    }
    if (key == '3') {
            cloud=0;
      cloudthoughts=0;
      speech=0;          //if on
      like=0;          //if on
      dislike=0;          //if on
      heart=0;          //if on
      surp=0;          //if on
      happy=0;          //if on
      sad=0;          //if on
      level=3;
      movie2.stop();
      movie1.stop();
      movie4.stop();
      movie5.stop();
      movie6.stop();
      movie7.stop();
      movie8.stop();
      movie9.stop();
      movie3.play();
            x=1;

    }
    if (key == '4') {
         cloud=0;
      cloudthoughts=0;
      speech=0;          //if on
      like=0;          //if on
      dislike=0;          //if on
      heart=0;          //if on
      surp=0;          //if on
      happy=0;          //if on
      sad=0;          //if on
      level=4;
      movie2.stop();
      movie3.stop();
      movie1.stop();
      movie5.stop();
      movie6.stop();
      movie7.stop();
      movie8.stop();
      movie9.stop();
      movie4.play();
            x=1;

    }
    if (key == '5') {
         cloud=0;
      cloudthoughts=0;
      speech=0;          //if on
      like=0;          //if on
      dislike=0;          //if on
      heart=0;          //if on
      surp=0;          //if on
      happy=0;          //if on
      sad=0;          //if on
      level=5;
      movie2.stop();
      movie3.stop();
      movie4.stop();
      movie1.stop();
      movie6.stop();
      movie7.stop();
      movie8.stop();
      movie9.stop();
      movie5.play();
            x=1;

    }
    if (key == '6') {
          cloud=0;
      cloudthoughts=0;
      speech=0;          //if on
      like=0;          //if on
      dislike=0;          //if on
      heart=0;          //if on
      surp=0;          //if on
      happy=0;          //if on
      sad=0;          //if on
      level=6;
      movie2.stop();
      movie3.stop();
      movie4.stop();
      movie5.stop();
      movie1.stop();
      movie7.stop();
      movie8.stop();
      movie9.stop();
      movie6.play();
            x=1;

    }
    if (key == '7') {
            cloud=0;
      cloudthoughts=0;
      speech=0;          //if on
      like=0;          //if on
      dislike=0;          //if on
      heart=0;          //if on
      surp=0;          //if on
      happy=0;          //if on
      sad=0;          //if on
      level=7;
      movie2.stop();
      movie3.stop();
      movie4.stop();
      movie5.stop();
      movie6.stop();
      movie1.stop();
      movie8.stop();
      movie9.stop();
      movie7.play();
            x=1;

    }
    if (key == '8') {
         cloud=0;
      cloudthoughts=0;
      speech=0;          //if on
      like=0;          //if on
      dislike=0;          //if on
      heart=0;          //if on
      surp=0;          //if on
      happy=0;          //if on
      sad=0;          //if on
      level=8;
      movie2.stop();
      movie3.stop();
      movie4.stop();
      movie5.stop();
      movie6.stop();
      movie7.stop();
      movie1.stop();
      movie9.stop();
      movie8.play();
            x=1;

    }
    if (key == '9') {
        cloud=0;
      cloudthoughts=0;
      speech=0;          //if on
      like=0;          //if on
      dislike=0;          //if on
      heart=0;          //if on
      surp=0;          //if on
      happy=0;          //if on
      sad=0;          //if on
      level=9;
      movie2.stop();
      movie3.stop();
      movie4.stop();
      movie5.stop();
      movie6.stop();
      movie7.stop();
      movie8.stop();
      movie1.stop();
      movie9.play();
      x=1;
    }
  }
}

/////////////////////////////////////////////////// Called every time a new frame is available to read
void movieEvent(Movie m) {
  m.read();
}
