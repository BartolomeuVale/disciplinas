$fn=50;
    
start = 5;
stop = 15;
step = 2;
    
for(size = [start:step:stop]){
    
    difference(){
        
        cube(size, center = true);
        cylinder(r=(size-1)/2, h= size+2, center =true);
        rotate([90,0,0]) cylinder(r=(size-1)/2, h= size+2, center =true);
        rotate([0,90,0]) cylinder(r=(size-1)/2, h= size+2, center =true);
        
    }
    
 }