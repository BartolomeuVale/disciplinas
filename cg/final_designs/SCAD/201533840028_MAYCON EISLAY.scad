union() {
  // cabeca
  translate([0, 0, 120])
    difference() {
      union() {
        // gota 
        sphere(r = 20,$fn=100);
        translate([0, 0, 20 * 0.5])
          cylinder(h = 30, r1 = 20 * 0.86, r2 = 0);

        // esfera cortada
        translate([0, 0, 30 + 20 * 0.5])
          sphere(r = 6);
      }
      //eixo de cima cortado
      rotate([45, 0, 0])
        translate([-20, 0, 0])
          cube([40, 5, 40]);
    }
  // cilindro meio
  cylinder(h = 120, r1 = 18, r2 = 12, $fn=50);

  // base
  cylinder(h = 20, r1 = 35, r2 = 25);

  // colar
  translate([0, 0, 90])
    intersection() {
      cylinder(h = 20, r1 = 20, r2 = 0);
      translate([0, 0, 7])
        mirror([0, 0, 1])
          cylinder(h = 20, r1 = 20, r2 = 0);
    }
}