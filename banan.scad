include <nut_banan.scad>


$fn = 64;
diam_hole = 5.4 + 0.5;

banan();




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
}

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
    cylinder(d = 80 + thickness/2, h = 150, center = true);
    
    translate ([-85/2-5, 0, -15])
    cylinder(d = 90, h = 10, center = true);

}
