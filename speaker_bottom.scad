include <speaker_walls.scad>;

// bottom_kit();

module bottom_kit() {
difference(){
bottom();
holes();
}
}

module holes() {
    translate([90/2, 0, 25/2-1.5])
    cube([20, 40, 25], center=true);
    translate([90/2-20/2, 0, 0])
    cylinder(d=5, h=30, center=true);
}


module bottom() {
    difference() {
        cylinder(d = 90, h = 10, center = true);
        translate([0, 0, 150/2+10/4-4])
        walls(thickness = 12);
    }
}
