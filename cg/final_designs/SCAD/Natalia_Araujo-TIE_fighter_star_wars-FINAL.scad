//autora: Natália Araújo
//desenho: nave star wars
//centro da nave
difference(){
    color("DarkSlateGray")
    sphere(12, $fn = 64);
    translate([8,0,0])
    color("SlateGray")
    sphere(8, $fn = 64);
}

//cilindro da ponta esquerda
rotate([90,0,0])
translate([0,0,10])
color("DarkSlateGray")
cylinder(h=20, r1=4, r2=2, $fn = 64);

//cilindro da ponta direita
rotate([-90,0,0])
translate([0,0,10])
color("DarkSlateGray")
cylinder(h=20, r1=4, r2=2, $fn = 64);

//ESQUERDA
//hexagono pequeno
rotate([90,0,0])
translate([0,0,29])
color("DarkSlateGray")
cylinder(h=2, r1=5, r2=5, $fn = 6);

//relevos
for(i=[1:24]){
rotate([90,i*15,0])
translate([2.5,0,17])
color("DarkSlateGray")
cylinder(h=15, r1=0.5, r2=0.5, $fn = 4);}

//hexagono grande
rotate([90,0,0])
translate([0,0,30])
color("SlateGray")
cylinder(h=0.15, r1=40, r2=40, $fn = 6);
//traços centrais
for(i=[1:6]){
    rotate([0,i*60,0])
    translate([0,-31,-0.5])
    color("DarkSlateGray")
    cube(size = [40, 2, 1]);
}

//traços finos
for(i=[1:24]){
    rotate([0,i*15,0])
    translate([0,-31,-0.5])
    color("DarkSlateGray")
    cube(size = [36, 2, 1]);
}

//arestas finas
for (i=[1:6]){
    difference(){
        rotate([90,0,0])
        translate([0,0,29])
        color("DarkSlateGray")
        cylinder(h=2, r1=7*i, r2=7*i, $fn = 6);
        
        rotate([90,0,0])
        translate([0,0,28])
        color("DarkSlateGray")
        cylinder(h=5, r1=6.5*i, r2=6.5*i, $fn = 6);
    
    }}
    
//arestas
difference(){
    rotate([90,0,0])
    translate([0,0,29])
    color("DarkSlateGray")
    cylinder(h=2, r1=42, r2=42, $fn = 6);
    
    rotate([90,0,0])
    translate([0,0,28])
    color("DarkSlateGray")
    cylinder(h=5, r1=40, r2=40, $fn = 6);
    
    }
    
//DIREITA
//hexagono pequeno 
rotate([-90,0,0])
translate([0,0,29])
color("DarkSlateGray")
cylinder(h=2, r1=5, r2=5, $fn = 6);
    
//relevos
for(i=[1:24]){
rotate([-90,i*15,0])
translate([2.5,0,17])
color("DarkSlateGray")
cylinder(h=15, r1=0.5, r2=0.5, $fn = 4);}

//hexagono grande 
rotate([-90,0,0])
translate([0,0,30])
color("SlateGray")
cylinder(h=0.15, r1=40, r2=40, $fn = 6);

//traços centrais
for(i=[1:6]){
    rotate([0,i*60,0])
    translate([0,29,-0.5])
    color("DarkSlateGray")
    cube(size = [40, 2, 1]);
}

//traços finos
for(i=[1:24]){
    rotate([0,i*15,0])
    translate([0,29,-0.5])
    color("DarkSlateGray")
    cube(size = [36, 2, 1]);
}

//arestas finas
for (i=[1:6]){
    difference(){
        rotate([-90,0,0])
        translate([0,0,29])
        color("DarkSlateGray")
        cylinder(h=2, r1=7*i, r2=7*i, $fn = 6);
        
        rotate([-90,0,0])
        translate([0,0,28])
        color("DarkSlateGray")
        cylinder(h=5, r1=6.5*i, r2=6.5*i, $fn = 6);
    
    }}
    
//arestas
difference(){
    rotate([-90,0,0])
    translate([0,0,29])
    color("DarkSlateGray")
    cylinder(h=2, r1=42, r2=42, $fn = 6);
    
    rotate([-90,0,0])
    translate([0,0,28])
    color("DarkSlateGray")
    cylinder(h=5, r1=40, r2=40, $fn = 6);
    
    }
    
//centro da nave
//pequeno
difference(){
    rotate([0,90,0])
    translate([0,0,8])
    color("DarkSlateGray")
    cylinder(h=3, r1=4, r2=4, $fn = 8);
    
    rotate([0,90,0])
    translate([0,0,7])
    color("DarkSlateGray")
    cylinder(h=6, r1=3.5, r2=3.5, $fn = 8);
    
    }

//grande
difference(){
    rotate([0,90,0])
    translate([0,0,8])
    color("DarkSlateGray")
    cylinder(h=2, r1=8, r2=8, $fn = 64);
    
    rotate([0,90,0])
    translate([0,0,7])
    color("DarkSlateGray")
    cylinder(h=5, r1=7.5, r2=7.5, $fn = 64);
    
    }

//tracos centrais
for (i=[1:8]){
rotate([i*45,0,0])
translate([9.5,0,3.5])
color("DarkSlateGray")
cylinder(h=4.5, r1=0.5, r2=0.5, $fn = 64);}

//parte superior
//pequeno
difference(){
    rotate([0,-180,0])
    translate([0,0,-10.75])
    color("DarkSlateGray")
    cylinder(h=3, r1=6, r2=6, $fn = 64);
    
    rotate([0,-180,0])
    translate([0,0,-12.75])
    color("DarkSlateGray")
    cylinder(h=6, r1=5.5, r2=5.5, $fn = 64);
    
    }
//marcaneta
rotate([0,-160,0])
translate([0,0,-12.5])
color("DarkSlateGray")
cylinder(h=3, r1=0.55, r2=0.5, $fn = 64);
    
//armas
//suporte
rotate([5,90,5])
translate([9.25,-4,5])
color("DarkSlateGray")
 scale([0.5,4,1])
cube(2);

//cilindro da ponta esquerda
rotate([0,90,0])
translate([9.75,-3,5.75])
color("DarkSlateGray")
cylinder(h=5, r1=0.5, r2=0.5, $fn = 64);
    
rotate([0,90,0])
translate([9.75,-3,6])
color("red")
cylinder(h=5, r1=0.25, r2=0.25, $fn = 64);
    
//cilindro da ponta esquerda
rotate([0,90,0])
translate([9.75,3,5.5])
color("DarkSlateGray")
cylinder(h=5, r1=0.5, r2=0.5, $fn = 64);
    
rotate([0,90,0])
translate([9.75,3,5.75])
color("red")
cylinder(h=5, r1=0.25, r2=0.25, $fn = 64);
