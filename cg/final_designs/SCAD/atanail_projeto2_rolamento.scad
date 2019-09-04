//aluno: atanail Gonçalves de Andrade
//Matricula: 201333840036
// Turma 2015
// projeto : Rolamento

sin = 50;
rotate_extrude(){
    difference(){
        union(){
        translate([10.5,0,0])square([5,7], center = true );
        translate([19.5,0,0])square([5,7], center = true);
        }
   translate([14.75,0,0]) circle(3.5, $fn = 120);   
   }
}

for(ball= [0:30:360] ) {    
rotate([0,0,ball] )
translate ([14.75,0,0])
sphere(r=3.25, $fn = 120 ); 
}