$fn=1000;
difference(){
union(){
cylinder(h=40,r1=15,r2=15);

difference() {  
translate([15,0,25])
rotate([90,0,0])
cylinder(h=5,r1=12,r2=12);

translate([15,5,25])
rotate([90,0,0])
cylinder(h=15,r1=8,r2=8);
}    
}

translate([0,0,6])
cylinder(h=35,r1=12,r2=12);
}