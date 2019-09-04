
difference(){
        // cubo externo da muralha do castelo
        cube(size = [300, 300, 45]); 
        
        // cubo interno (negativo) da muralha do castelo
        translate(v = [15,15,1])
        cube(size = [270, 270, 45]);
        
        // cubo da portas em x
        translate(v = [132.5,-1.5,1])
        cube(size = [25,302, 28]);
    
        // cilindro da portas em x
        translate(v = [145,305,30])
        rotate(a=[90,0,0])
        cylinder(r = 12.4, h =310);
        
        // corredor de x rotacionado 90º em z
        translate(v = [301,5,0]){
        rotate([0,0,90]){
           translate(v = [132.5,-1.5,1])
            cube(size = [25,305, 28]);
    
            translate(v = [145,305,30])
            rotate(a=[90,0,0])
            cylinder(r = 12.4, h =310);
        }
        }
        
}
// blocos externos
for (x= [0:10:295]){
    translate(v = [0+x,0, 45])
    cube(size = [5, 5, 5]);
}

for (x= [10:10:295]){
    translate(v = [0,0+x, 45])
    cube(size = [5, 5, 5]);
}

for (x= [5:10:295]){
    translate(v = [295,0+x, 45])
    cube(size = [5, 5, 5]);
}

for (x= [5:10:295]){
    translate(v = [0+x,295, 45])
    cube(size = [5, 5, 5]);
}

//blocos internos
for (x= [30:10:275]){
    translate(v = [10+x,10, 45])
    cube(size = [5, 5, 5]);
}

for (x= [0:10:255]){
    translate(v = [10,10+x, 45])
    cube(size = [5, 5, 5]);
}

for (x= [30:10:275]){
    translate(v = [285,10+x, 45])
    cube(size = [5, 5, 5]);
}

for (x= [0:10:255]){
    translate(v = [10+x,285, 45])
    cube(size = [5, 5, 5]);
}

//escadas
for (x= [0:3:44]){
    translate(v = [10+x,265,0])
    cube(size = [5, 20, 45-x]);
}

rotate(a=[0,0,-90])
for (x= [0:3:44]){
    translate(v = [-285+x,265,0])
    cube(size = [5, 20, 45-x]);
}

rotate(a=[0,0,-180])
for (x= [0:3:44]){
    translate(v = [-285+x,-35,0])
    cube(size = [5, 20, 45-x]);
}

rotate(a=[0,0,-270])
for (x= [0:3:44]){
    translate(v = [15+x,-35,0])
    cube(size = [5, 20, 45-x]);
}

for (x= [0:1:44]){
    translate(v = [150,150,-45-x])
    cylinder(r = 250+x, h = 45);
}
    
difference(){
    translate(v = [75,75,1])
    cube(size = [150, 150, 45]);
    
    translate(v = [77.5,77.5,1])
    cube(size = [145, 145, 45]);
            // cubo da portas em x
        translate(v = [132.5,-1.5,1])
        cube(size = [25,302, 28]);
    
        // cilindro da portas em x
        translate(v = [145,305,30])
        rotate(a=[90,0,0])
        cylinder(r = 12.4, h =310);
        
    for (x= [0:15:110]){
    translate(v = [30,95+x,30])
    cube(size = [250, 5, 10]);
        
}
    

}   


    translate(v = [150,225,95])
    scale([4,5,5])
    rotate(a=[0,-90,90])

    cylinder(h=30, r1=20,r2=20,$fn = 3);

//torres


translate([30,272,-140])
scale(4){
translate(v = [12,-12,65])
cylinder(r1 = 5, r2 =  0, h =20);

translate(v = [12,-12,55])
cylinder(r1 = 0, r2 =  5, h =10);

translate(v = [12,-12,40])
cylinder(r1 = 0, r2 =  3, h =5);

translate(v = [12,-12,45])
cylinder(r = 3, h =20);}

translate([170,272,-140])
scale(4){
translate(v = [12,-12,65])
cylinder(r1 = 5, r2 =  0, h =20);

translate(v = [12,-12,55])
cylinder(r1 = 0, r2 =  5, h =10);

translate(v = [12,-12,40])
cylinder(r1 = 0, r2 =  3, h =5);

translate(v = [12,-12,45])
cylinder(r = 3, h =20);}

//
translate([0,-150,0]){
translate([30,272,-140])
scale(4){
translate(v = [12,-12,65])
cylinder(r1 = 5, r2 =  0, h =20);

translate(v = [12,-12,55])
cylinder(r1 = 0, r2 =  5, h =10);

translate(v = [12,-12,40])
cylinder(r1 = 0, r2 =  3, h =5);

translate(v = [12,-12,45])
cylinder(r = 3, h =20);}

translate([170,272,-140])
scale(4){
translate(v = [12,-12,65])
cylinder(r1 = 5, r2 =  0, h =20);

translate(v = [12,-12,55])
cylinder(r1 = 0, r2 =  5, h =10);

translate(v = [12,-12,40])
cylinder(r1 = 0, r2 =  3, h =5);

translate(v = [12,-12,45])
cylinder(r = 3, h =20);}}