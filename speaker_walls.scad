// Bluetooth speaker
$fn = 640;

//walls(thickness=14);

module walls(thickness) {
    difference() {
        cylinder(d = 80 + thickness/2, h = 150, center = true);
        color("red")
        cylinder(d = 80-thickness/2, h = 160, center = true);
    }
}
