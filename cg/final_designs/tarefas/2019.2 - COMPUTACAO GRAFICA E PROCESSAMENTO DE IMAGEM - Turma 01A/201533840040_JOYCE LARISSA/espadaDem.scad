
$vpr = [60, 0, 360 * $t];



color([1,0,0]){
rotate([90,0,90]){
difference() {
  cylinder(r=40, h = 4);
  translate([0, 0, -1])
    cylinder( r = 30,h = 8);
}

translate([-5,-35,0]) cube([10, 135, 4]);
translate([-90,-5,0]) cube([180, 10, 4]);
translate([-7.5, 100,0]) cube([15, 5, 4]);

}
 }

   module prism(l, w, h){
   color([1,0,0])    polyhedron(
               points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
               faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
               );
       
   }
  
   
   
//ponta
tam = 260;
   
rotate([0,90,0]) translate([150,0,2]){

    translate([-115,-10,0]){
       prism(tam, 10, 1);
       mirror([0, 0, 1])
       prism(tam, 10, 1);
    }
    
    translate([145,10,0]){
       rotate([0,0,0180]){
       prism(tam, 10, 1);
       mirror([0, 0, 1])
       prism(tam, 10, 1);}}
 
   }
   
   
   
 color([1,0,0]){
rotate([0,0,90]) translate([ 0,-2 ,-295 ]){

    polyhedron(
                //1        2        3        4
      points=[ [10,0,0],[0,-1,0],[-10,0,0],[0,1,0],        [0,0,-10]  ],                              
      faces=[ [0,1,4],[1,2,4],[2,3,4],[3,0,4],   [1,0,3],[2,1,3] ]);
}
}


//chifre
$fn = 150;

resolution =  5;
s = 0.5/resolution; 

xmax = 20;

a = -0.03;

taper = 2;


color([1,0,0]){

translate([2,0,100]){
rotate([0, atan(1/(2*a*xmax)), 80]){
    for(t=[0:s:1]){
        u = t + s;
        hull(){
        translate( [t*xmax, 0, (a*pow((t - 1)*xmax,2) - a*pow(xmax,2))] ) rotate([ 0, atan(1/(2*a*((t - 1)*xmax))), 0]) cylinder(r =  taper*(1 - t), h = .1);

        translate( [u*xmax, 0, (a*pow((u - 1)*xmax,2) - a*pow(xmax,2))] ) rotate([ 0, atan(1/(2*a*(u - 1)*xmax)), 0]) cylinder(r =  taper*(1 - u), h = .1);
        }
    }
}
}

}

color([1,0,0]){

    rotate([0,90,0]) translate([10,90 ,0]){
    translate([-10,3,0])   cylinder(r=4, h = 4);
    translate([-5, 0, 0])   cylinder(r=4, h = 4);
    translate([-15,0,0])   cylinder(r=4, h = 4);  
        }


mirror([0, 1, 0])
    rotate([0,90,0]) translate([10,90 ,0]){
    translate([-10,3,0])   cylinder(r=4, h = 4);
    translate([-5, 0, 0])   cylinder(r=4, h = 4);
    translate([-15,0,0])   cylinder(r=4, h = 4);  
        }
    }






