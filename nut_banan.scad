
//nut();

module nut() {
    color("pink")
difference() {
    cylinder(d=12, h=2, center=true, $fn=6);
    cylinder(d=5.5, h=3, center=true, $fn=64);
    }
}