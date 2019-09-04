//aluno: atanail Gonçalves de Andrade
//Matricula: 201333840036
// Turma 2015
// projeto : Rolamento




difference(){
union(){
   cylinder(h=4,r=65,center=true);
   cylinder(h=4,r=57,center=true);
   cylinder(h=13,r=27 , $fn = 120);
}
for(i=[0:36])
{
  rotate(i*360/35,[0,0,1])
  translate([64,0,0])
  cylinder(h=4,r=6.5/2,center=true);
}

for(i=[0:36])
{
  rotate(i*360/35,[0,0,1])
  translate([61,0,0])
  cylinder(h=4,r=6.5/2,center=true);
}
 cylinder(h=40,r=9,center=true);
}