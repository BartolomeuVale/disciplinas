//  Emblema EngComp

//  Victor Vinícius Eustáquio de Almeida
//  EngComp - 2014

//  Computação   Gráfica  - Turma 2015
//  Professor  Ms. Eng. Marcos Amaris González

//  28/06/2019



$fn = 100;

  
  
  
 //Fundo da engrenagem

rotate_extrude(convexity = 0)
translate([17, -0.6, 0]) 
circle(r = 0.6); 

translate([0,0, -1.2])
cylinder(r = 17 , h=1);




//Borda  da engrenagem

rotate_extrude(convexity = 0)
translate([16, 0, 1]) 
square([5, 2]); 



//Catracas  da engrenagem

for( dente = [0: 28:360]){
rotate ([0, 0, dente])

translate([19.9, 0, 0])
rotate([0, 0, 7])
cube([5,5,2]);
  
}   


difference(){


//Microchip
translate([-6, -6, 0])
cube([12, 12, 2]);



// "<"

translate([-17.5,  -17.5,  -1 ])
    {
translate([19.5, 15.6, 0])
rotate([90,0,45])
cube([3.5,4,0.8]);

translate([20,20,0])
rotate([90,0,-45])
cube([3.5,4,0.8]);

}


//">"

rotate([0, 0, 180]) 
translate([-17.5,  -17.5,  -1 ])
    {
translate([19.5, 15.6, 0])
rotate([90,0,45])
cube([3.5, 4 , 0.8]);

translate([20,20,0])
rotate([90,0,-45])
cube([3.5,4,0.8]);

}

translate([-1.2, -2.2 , -1])
rotate([90, 0, 70])
cube([5, 4, 0.8]);


}



//Pontos de Solda - conexão microcontrolador

for( pontosolda = [0: 90: 360]){
rotate ([0, 0, pontosolda])

translate([7, 5 , 0])
rotate([90, 0, 0])
cube([2, 1, 1.3]);

}   

for( pontosolda = [0: 90: 360]){
rotate ([0, 0, pontosolda])

translate([7, -4 , 0])
rotate([90, 0, 0])
cube([2, 1, 1.3]);
    
  
    
  
}   

for( pontosolda = [0: 90: 360]){
rotate ([0, 0, pontosolda])

translate([7, 0.7 , 0])
rotate([90, 0, 0])
cube([2, 1, 1.3]);
    
  
}   

//Trilhas Retas

for( pontosolda = [0: 90: 0]){
rotate ([0, 0, pontosolda])


translate([7, 2.8 , 0])
rotate([90, 0, 0])
cube([9, 1, 1.3]);
    
translate([7, -1.8 , 0])
rotate([90, 0, 0])
cube([9, 1, 1.3]);      
  
}   


//Trilhas Tortas



for( pontosolda = [0: 90: 360]){
rotate ([0, 0, pontosolda])


translate([7, -1.8 , 0])
rotate([90, 0, 0])
cube([2, 1, 0.9]); 

}


    //Circuito torto 1
    
    translate([-4.44, 11.02 , 0])
    rotate([0, 0, -55])
    cube([3.17, 1, 1]); 
    
    translate([-3.437, 11.02, 0])
    rotate([0, 0, 90])
    cube([5, 1, 1]); 
    
    
        
    //Circuito torto 2
    translate([4.603, 0, 0]){
        
    translate([-4.44, 10.89 , 0])
    rotate([0, 0, -55])
    cube([3, 1, 1]); 
    
    translate([-3.44, 10.89 , 0])
    rotate([0, 0, 90])
    cube([5, 1, 1]); 


    }









rotate([0,180,180])
translate([-0.,0,-1])
rotate([0,0,90])
{
        //Trilhas Retas
    
    for( pontosolda = [0: 90: 0]){
    rotate ([0, 0, pontosolda])
    
    
    translate([7, 2.8 , 0])
    rotate([90, 0, 0])
    cube([9, 1, 1.3]);
        
    translate([7, -1.8 , 0])
    rotate([90, 0, 0])
    cube([9, 1, 1.3]);      
      
    }   
    
    
    //Trilhas Tortas
    
        
    for( pontosolda = [0: 90: 360]){
    rotate ([0, 0, pontosolda])
    
    
    translate([7, -1.8 , 0])
    rotate([90, 0, 0])
    cube([2, 1, 0.9]); 
    
    }
    
    
    //Circuito torto 1
    
    translate([-4.44, 11.02 , 0])
    rotate([0, 0, -55])
    cube([3.17, 1, 1]); 
    
    translate([-3.437, 11.02, 0])
    rotate([0, 0, 90])
    cube([5, 1, 1]); 
    
    
        
    //Circuito torto 2
    translate([4.603, 0, 0]){
        
    translate([-4.44, 10.89 , 0])
    rotate([0, 0, -55])
    cube([3, 1, 1]); 
    
    translate([-3.44, 10.89 , 0])
    rotate([0, 0, 90])
    cube([5, 1, 1]); 
    
    }
}
    
    