include <speaker_walls.scad>;
$fn = 640;



module bottom() {
    difference() {
        cylinder(d = 90, h = 10, center = true);
        translate([0, 0, 150/2+10/4-4])
        walls(thickness = 12);
    }
}
