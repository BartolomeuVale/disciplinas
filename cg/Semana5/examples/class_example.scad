difference(){

difference(){
    translate([5,0,1])
    cylinder(h=5, r1=20, r2=20);    
    union(){
        cylinder(h=10, r1=5, r2=5);
        translate([0,-5,0])
        cube(10);
}
}
translate([5,-20,0])
cube(40);
}