/*
CORAÇÃO EM 3D

ALUNA: Cryslene Coêlho de Oliveira
MATRÍCULA: 201533840036

*/
module coracao()
color("red"){
difference(){
    hull(){
        translate([0,10,0])
        sphere(d=20);
        translate([0,-10,0])
        sphere(d=20);
    }
    translate([-40,-40,125])
    cube([80,80,20]);
    translate([-40,-40,-145])
    cube([80,80,20]);
    rotate([0,0,45])
    translate([-20,-40,-250])
    cube([40,40,500]);
}}
rotate([0,0,45])
coracao();
mirror([1,0,0])
rotate([0,0,45])
coracao();
