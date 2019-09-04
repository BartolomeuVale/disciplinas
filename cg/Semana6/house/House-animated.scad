/*****************************************************************************
** OpenSCAD Example Code by Michal Altair Valasek - https://www.rider.cz    **
** Licensed under terms of Creative Commons Attribution License (cc-by)     **
** https://creativecommons.org/licenses/by/4.0/                             **
*****************************************************************************/

base_width = 40;    // X
base_depth = 30;    // Y
base_height = 20;   // Z
wall = 1;
roof_height = 15;   // Z
door_width = 9;     // X
door_height = 16;   // Z
window_width = 15;  // X
window_height = 10; // Z
window_bottom = 6;  // Z offset
chimney_size = 6;   // X, Y
grass_offset = 8;   // X, Y offset
grass_height = 5;   // Z

$vpt = [4, 2, 12];
$vpr = [60, 0, 360 * $t];
$vpd = 180;

offset = [-base_width / 2 - grass_offset, -base_depth / 2 - grass_offset];
translate(offset) house();

module house() {
    grass();
    translate([grass_offset, grass_offset, grass_height]) {
        base();
        translate([0, 0, base_height]) roof();
        translate([base_width * .8, base_depth * .7, base_height + 1]) chimney();
    }
}

module base() {
    difference() {
        // Home shell
        color("yellow") cube([base_width, base_depth, base_height]);
        translate([wall, wall, -1]) cube([base_width - 2 * wall, base_depth - 2 * wall, base_height + 2]);

        // Door hole
        translate([base_width / 5, -1, -1]) cube([door_width, wall + 2, door_height + 1]);

        // Window hole
        translate([base_width / 2, -1, window_bottom]) cube([window_width, wall + 2, window_height]);
    }

    // Door
    color("brown") translate([base_width / 5, 0, 0]) cube([door_width, wall, door_height]);

    // Window
    color("blue", .25) translate([base_width / 2, 0, window_bottom]) cube([window_width, wall, window_height]);
}

module roof() {
    points = [ 
        [0, 0, 0], [base_width, 0, 0], [base_width, base_depth, 0], [0, base_depth, 0], // base corners
        [base_width / 2, 0, roof_height], [base_width / 2, base_depth, roof_height]      // roof corners
    ];
    faces = [ 
        [0, 1, 2, 3],   // base
        [3, 4, 0],      // left triangle
        [1, 5, 2],      // right triangle
        [4, 5, 1, 0],   // front side,
        [5, 4, 3, 2]    // back side
    ];
    color("red") polyhedron(points, faces, convexity = 10);
}

module chimney() {
    color("black") cube([chimney_size, chimney_size, roof_height * .75]);
}

module grass(){
    color("green") rcube([base_width + 2 * grass_offset, base_depth + 2 * grass_offset, grass_height], grass_offset);
}

module rcube(size, radius) {
    if(radius < 1){
        cube(size);
    } else {
        hull() {
            translate([radius, radius]) cylinder(r = radius, h = size[2]);
            translate([size[0] - radius, radius]) cylinder(r = radius, h = size[2]);
            translate([size[0] - radius, size[1] - radius]) cylinder(r = radius, h = size[2]);
            translate([radius, size[1] - radius]) cylinder(r = radius, h = size[2]);
        }
    }
}