$fn = 100;

right();
//left();

module left(z=10){
    difference(){
        union(){
            translate([0,0,z/2])cube([10,40,z],center=true);
            translate([0,20,0])cylinder(r=5,h=z);
            translate([0,-20,0])cylinder(r=5,h=z);
            translate([16.25/2,20,z/2])cube([16.25,10,z],center=true);
            translate([2.5,-20-2.5,z/2])cube([5,5,z],center=true);
            
            translate([0,0,-1])cylinder(r=.9,h=1);
            translate([12.5,20,-1])cylinder(r=.9,h=1);
        } union(){
            translate([0,-20,-0.1])cylinder(d=3.1,h=z+0.2);
            translate([0,20,-0.1])cylinder(d=3.1,h=z+0.2);
        }
    }
}

module right(z=10){
    difference(){
        union(){
            translate([0,0,z/2])cube([10,40,z],center=true);
            translate([-2.5,-20-2.5,z/2])cube([5,5,z],center=true);
            translate([0,20,0])cylinder(r=5,h=z);
            translate([0,-20,0])cylinder(r=5,h=z);
            translate([-10.5/2,20,z/2])cube([10.5,10,z],center=true);
            translate([-10.925/2-10.5,20,z-(z-4)/2])cube([10.925,10,z-4],center=true);
            translate([-12.2/2-10.5-10.925,20,z-(z-2)/2])cube([12.2,10,z-2],center=true);
            translate([-4/2-10.5-10.925-12.2,20+1.5,z/2])cube([4,7,z],center=true);
            
            
            translate([0,0,-1])cylinder(r=.9,h=1);
            translate([-35.5,20,-1])cylinder(r=.9,h=1);
        } union(){
            translate([0,-20,-0.1])cylinder(d=3.1,h=z+0.2);
            translate([0,20,-0.1])cylinder(d=3.1,h=z+0.2);
        }
    }
}

module right_simple(z=8){
    difference(){
        union(){
            translate([0,0,z/2])cube([10,40,z],center=true);
            translate([0,20,0])cylinder(r=5,h=z);
            translate([0,-20,0])cylinder(r=5,h=z);
            translate([-10.5/2,20,z/2])cube([10.5,10,z],center=true);
            //translate([2.5,-20-2.5,z/2])cube([5,5,z],center=true);
            
            translate([0,0,-1])cylinder(r=.9,h=1);
            //translate([12.5,20,-1])cylinder(r=.9,h=1);
        } union(){
            translate([0,-20,-0.1])cylinder(d=3.1,h=z+0.2);
            translate([0,20,-0.1])cylinder(d=3.1,h=z+0.2);
        }
    }
}