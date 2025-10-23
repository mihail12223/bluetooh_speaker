include <speaker_walls.scad>
include <speaker_bottom.scad>
use <banan.scad>

bottom_kit();

translate([90/2 + 20/2-8, 0, 25/2-5])
banan();
//translate([0, 0, 150/2+10/4-4])
//walls(thickness = 5); 

//difference(){
//    bottom_kit();
//    translate([-90/2, 0, 0])
//    cube(90, center = true);
//}