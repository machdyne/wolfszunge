/*
 * Wolfszunge Case
 * Copyright (c) 2025 Lone Dynamics Corporation. All rights reserved.
 *
 * required hardware:
 *  - 4 x M3 x 20mm countersunk bolts
 *  - 4 x M3 nuts
 *
 */
 
W = 84;
H = 52;
D = 16;
WALL = 5;
HD = 7.5;

translate([0,0,20]) wolfszunge_lid();
wolfszunge_base();
 
// translate([-15.5,0,14.5]) wolfszunge_pcb();

 
 module wolfszunge_pcb() {
     color([0,1,0]) cube([48,26,6.75], center=true);
 }
 
 module wolfszunge_base() {

     
     difference() {
        
        union() {
            rcube(W,H,D,2.5);
            translate([0,0,16]) rcube(W-WALL,H-WALL,2,2.5);
        }
                 
        translate([-15.5,0,10]) cube([48,22,15], center=true);
        translate([-15.5,0,14.625]) cube([48,26,6.75], center=true);
         
        // antenna wire channel
        translate([20,0,10.5]) cube([30,20,16], center=true);
        translate([20,0,10.5]) cube([15,45,16], center=true);
         
        // usb cutout
        translate([-35,0,15]) cube([20,9,10], center=true);
 
        // antenna cutout
        rotate([90,0,0]) translate([20,10,-100]) cylinder(h=100, d=6.5, $fn=36);
        
        // bolt holes
        translate([-(W/2)+HD,-(H/2)+HD,-5]) cylinder(d=3.2, h=100, $fn=36);
        translate([(W/2)-HD,-(H/2)+HD,-5]) cylinder(d=3.2, h=100, $fn=36);
        translate([-(W/2)+HD,(H/2)-HD,-5]) cylinder(d=3.2, h=100, $fn=36);
        translate([(W/2)-HD,(H/2)-HD,-5]) cylinder(d=3.2, h=100, $fn=36);

        // nut holes
        translate([-(W/2)+HD,-(H/2)+HD,0]) cylinder(d=7, h=3, $fn=6);
        translate([(W/2)-HD,-(H/2)+HD,0]) cylinder(d=7, h=3, $fn=6);
        translate([-(W/2)+HD,(H/2)-HD,0]) cylinder(d=7, h=3, $fn=6);
        translate([(W/2)-HD,(H/2)-HD,0]) cylinder(d=7, h=3, $fn=6);
      
     }
     
          
 }
 
 module wolfszunge_lid() {
     
    difference() {
        
        union() {
            
            translate([0,0,10]) rcube(W,H,4,2.5);
            
            // top grip        
            translate([0,18,13.5]) rcube(55,2,1,1);

            // left grip
            translate([-(W/2)+4,0,13.5]) rcube(2,20,1,1);
            translate([-(W/2)+8,0,13.5]) rcube(2,20,1,1);
            translate([-(W/2)+12,0,13.5]) rcube(2,20,1,1);
            translate([-(W/2)+16,0,13.5]) rcube(2,20,1,1);

            // right grip
            translate([(W/2)-4,0,13.5]) rcube(2,20,1,1);
            translate([(W/2)-8,0,13.5]) rcube(2,20,1,1);
            translate([(W/2)-12,0,13.5]) rcube(2,20,1,1);
            translate([(W/2)-16,0,13.5]) rcube(2,20,1,1);
            translate([(W/2)-20,0,13.5]) rcube(2,20,1,1);
            translate([(W/2)-24,0,13.5]) rcube(2,20,1,1);
            translate([(W/2)-28,0,13.5]) rcube(2,20,1,1);
            translate([(W/2)-32,0,13.5]) rcube(2,20,1,1);
            
            
            translate([0,-20,13.5])
                linear_extrude(1)
                    text("W O L F S Z U N G E", size=4, halign="center", font="Lato Black");
               

        }
        
        translate([0,0,10]) rcube(W-WALL+0.25,H-WALL+0.25,2,2.5);
 
        // display cutout
        translate([-(W/2)+34,2,10]) rcube(29,15,50,2.5);


        
        // bolt sink holes
        translate([-(W/2)+HD,-(H/2)+HD,13.5]) cylinder(d=6, h=6, $fn=36);
        translate([(W/2)-HD,-(H/2)+HD,13.5]) cylinder(d=6, h=6, $fn=36);
        translate([-(W/2)+HD,(H/2)-HD,13.5]) cylinder(d=6, h=2, $fn=36);
        translate([(W/2)-HD,(H/2)-HD,13.5]) cylinder(d=6, h=2, $fn=36);        
        
        // bolt holes
        translate([-(W/2)+HD,-(H/2)+HD,-5]) cylinder(d=3.2, h=100, $fn=36);
        translate([(W/2)-HD,-(H/2)+HD,-5]) cylinder(d=3.2, h=100, $fn=36);
        translate([-(W/2)+HD,(H/2)-HD,-5]) cylinder(d=3.2, h=100, $fn=36);
        translate([(W/2)-HD,(H/2)-HD,-5]) cylinder(d=3.2, h=100, $fn=36);

    }

 }
 
 module rcube(xx, yy, height, radius)
{
    translate([-xx/2,-yy/2,height/2])
    hull()
    {
        translate([radius,radius,0])
        cylinder(height,radius,radius,true);

        translate([xx-radius,radius,0])
        cylinder(height,radius,radius,true);

        translate([xx-radius,yy-radius,0])
        cylinder(height,radius,radius,true);

        translate([radius,yy-radius,0])
        cylinder(height,radius,radius,true);
    }
}
