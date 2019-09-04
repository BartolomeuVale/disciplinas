
size = 22;
diametro_prego = 1;
rotate([90,90+45,0])
union () {
difference(){
  for (n = [1:size]){
    translate([n,n,0])
      sphere(n);
  }
  translate([size*2,size*2,0])
    rotate([360-90,0,90+45])
      cylinder(r=diametro_prego,h=size*3);
};
translate([size*2,size*2,0])
  rotate([360-90,0,90+45])
    difference(){
       cylinder(r=size*0.2,h=size);
       cylinder(r=size*0.1,h=size);
    };
}