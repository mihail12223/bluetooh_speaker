include <nut_banan.scad>


$fn = 64;
diam_hole = 5.4 + 0.5;

//support();

banan();
mini_support_link();
//mini_support();


module mini_support_link(); { 
difference() {
    translate ([-90/2-3, 0, -11.61])
    ring();
    translate ([-90/2-10.1, 0, 0])
    cube ([90, 90, 90], center = true);
    translate([-1, -20/2-20-0.5, -4])    
    cube ([20, 20,20], center = true);

    mirror([0, 1, 0])
    translate([-1, -20/2-20-0.5, -4])    
    cube ([20, 20,20], center = true);
    
//    translate([-20/2-0.5, 0, -4])    
//    cube ([20, 40-6, 20], center = true);
    }
}
    

module ring() {
    difference () {
        cylinder(d = 90, h = 1.75, center = true);
        cylinder(d = 90-5.5, h = 5, center = true); 
}
}

module mini_support() {
    translate ([-8.5, 18.5, -11.5])
    rotate ([0, 0, 25])
    cube ([3, 3, 2.5], center=true);
    
    mirror ([0, 1, 0])
    translate ([-8.5, 18.5, -11.5])
    rotate ([0, 0, 25])
    cube ([3, 3, 2.5], center=true);
}
//difference() {
//    banan();
//    translate([0, -40/2, 0])
//    cube([20+1, 40+1, 25+1], center = true);
//}


module support() {
    difference() {
    translate([-2, 0, -2])
    cube([20-3-1, 40-6-1, 25-3-1], center = true);
    translate ([-85/2-4, 0, 0])
    cylinder(d = 80+5/2+1, h = 150, center=true);
   
    translate ([-85/2-5, 0, -15])
    cylinder(d = 90+1, h = 10, center = true);
        
    translate([-47, 0, 15-0.1])
     cylinder (d1=90, d2=0, h=50, center = true);
  }       
}



//translate([0, 0, -25/2-0.5])
//banan();
//
//translate([0,20/2,-5])
//rotate([0,0,90])
//nut();
//
//translate([0,-20/2,-5])
//rotate([0,0,90])
//nut();
//color("red")
//translate([-3, 0, 0])
//cube([20,40-6,25-6], center = true);

module banan() {
    difference() {
        base();
        holes_banan();
    }
    color("red")
    support();
}
    
//difference() {    
//color ("red")
//support();
//translate([-47, 0, 15-0.1])
//cylinder (d1=90, d2=0, h=50, center = true);
//}
//    

module base() {
    cube([20, 40, 25], center = true);
}


module holes_banan() {
    translate([0, 20/2, 0])
    cylinder(d=diam_hole, h = 50, center = true);

    translate([0, -20/2, 0])
    cylinder(d=diam_hole, h = 50, center = true);
    
    translate([-3, 0, -3])
    cube([20,40-6,25], center = true);
    
    translate ([-85/2-4, 0, 0])
    cylinder(d = 80 + 5/2, h = 150, center=true);
    
    translate ([-85/2-5, 0, -15])
    cylinder(d = 90, h = 10, center = true);

}
