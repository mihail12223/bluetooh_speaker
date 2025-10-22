include <nut_banan.scad>

$fn = 640;
diam_hole = 5.4 + 0.5;

//translate([0, 0, -25/2-0.5])
//banana();
//translate([0, 20/2, -5])
//rotate([0, 0, 90])
//nut();

//translate([0, -20/2, -5])
//rotate([0, 0, 90])
//nut();
////color("red")
////translate([-3, 0, 0])
////cube([20, 40-6, 25-6], center=true);

module banana() {
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
    cube([20, 40-6, 25], center=true);
}
