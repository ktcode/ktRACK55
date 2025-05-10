//
// ktRACK54
//
//

gap1 = 0.001;
gap2 = 0.002;

th = 2;

//TOP();
BOTTOM();




module BOTTOM()
{
difference()
{
    union()
    {
        translate([0-50, 0, -(5+th)]) cube([50+19*4+th+50, 50, 5+th]);
    }
    translate([th, th, -(5)+gap1]) cube([(50+19*4+th)-th*2, (50)-th*2, 5]);

    translate([4, 4, 0]) NEJI_BOTTOM2();
    translate([4, 50-4, 0]) rotate([0, 0, 180]) NEJI_BOTTOM2();
    translate([45, 4, 0]) NEJI_BOTTOM2();
    translate([45, 50-4, 0]) rotate([0, 0, 180]) NEJI_BOTTOM2();
    translate([(50+19*4+th)-4, 4, 0]) NEJI_BOTTOM2();
    translate([(50+19*4+th)-4, 50-4, 0]) rotate([0, 0, 180]) NEJI_BOTTOM2();

    translate([20, 50-5, -3]) cube([10, 5, 3]);
    translate([50+19*4+th-10, 50-20, -5+th]) rotate([90, 0, 90]) cylinder(h=15, r=5/2, $fn=100);
    translate([50+19*4+th-10, 50-20, -5+th]) rotate([90, 0, 90]) cylinder(h=8, r=6/2, $fn=100);
    
    translate([-50+50/2, 50/2, -12.5+11]) SWBT_UNIT();
}
    translate([4, 4, 0]) NEJI_BOTTOM();
    translate([4, 50-4, 0]) rotate([0, 0, 180]) NEJI_BOTTOM();
    translate([45, 4, 0]) NEJI_BOTTOM();
    translate([45, 50-4, 0]) rotate([0, 0, 180]) NEJI_BOTTOM();
    translate([(50+19*4+th)-4, 4, 0]) NEJI_BOTTOM();
    translate([(50+19*4+th)-4, 50-4, 0]) rotate([0, 0, 180]) NEJI_BOTTOM();
}


module TOP()
{
difference()
{
    union()
    {
        translate([0-50, 0, 0]) cube([50+19*4+th+50, 50, 11]);
    }
    translate([50, 50/2-(18*2)/2, 4.5-gap1]) cube([19*4, 18*2, 11]);
    
    translate([45/2+th, 40/2+th, th]) BUTTON_UNIT();
    translate([50+19/2,      50/2+18/2, 4.5]) SW_UNIT();
    translate([50+19/2,      50/2-18/2, 4.5]) SW_UNIT();
    translate([50+19/2+19,   50/2+18/2, 4.5]) SW_UNIT();
    translate([50+19/2+19,   50/2-18/2, 4.5]) SW_UNIT();
    translate([50+19/2+19*2, 50/2+18/2, 4.5]) SW_UNIT();
    translate([50+19/2+19*2, 50/2-18/2, 4.5]) SW_UNIT();
    translate([50+19/2+19*3, 50/2+18/2, 4.5]) SW_UNIT();
    translate([50+19/2+19*3, 50/2-18/2, 4.5]) SW_UNIT();
    
    translate([4, 4, 0]) NEJI_TOP();
    translate([4, 50-4, 0]) NEJI_TOP();
    translate([45, 4, 0]) NEJI_TOP();
    translate([45, 50-4, 0]) NEJI_TOP();
    translate([(50+19*4+th)-4, 4, 0]) NEJI_TOP();
    translate([(50+19*4+th)-4, 50-4, 0]) NEJI_TOP();
    
    translate([-50+50/2, 50/2, -12.5+11]) SWBT_UNIT();
}
}

module BUTTON_UNIT()
{
difference()
{
    union()
    {
        translate([-13/2, 0, 0]) cube([13, 8+41/2, 11]);
        translate([-25/2, 0, 0]) cube([25, 8+35/2, 11]);
        translate([0, 0, 0]) resize([45, 41, 11]) cylinder(h=1, r=1, $fn=100);
    }
    translate([ 21, 29, 0]) cylinder(h=11, r=30/2, $fn=100);
    translate([-21, 29, 0]) cylinder(h=11, r=30/2, $fn=100);
}
}

module SW_UNIT()
{
translate([-(14-0.25)/2, -14/2, 0])
difference()
{
    union()
    {
        translate([0, 0, -50]) cube([14-0.25, 14, 50]);
        translate([14, 14, -1.5]) rotate([90, 0, 0]) cylinder(h=14, r=1, $fn=3);
        translate([0, 0, -1.5]) rotate([90, 0, 180]) cylinder(h=14, r=1, $fn=3);
    }
}
}

module SWBT_UNIT(RR=6)
{
difference()
{
    union()
    {
        $fn=100;
        translate([-(37.5-RR*2)/2, -(43.5-RR*2)/2, 0])
        minkowski()
        {
            cube([37.5-RR*2, 43.5-RR*2, 12.5-1+gap1]);
            cylinder(r=RR, h=1);
        }
        translate([-27/2, -27/2, -50+gap1]) cube([27, 27, 50]);
    }
}
}

module NEJI_TOP()
{
difference()
{
    union()
    {
        translate([0, 0, 1]) cylinder(h=20, r=6/2, $fn=100);
        translate([0, 0, -(20-1)+gap1]) cylinder(h=20, r=3.5/2, $fn=100);
    }
}
}
module NEJI_BOTTOM(H=5)
{
difference()
{
    union()
    {
        translate([-6/2, -6/2, -H]) cube([6, 6, H]);
    }
    translate([-5/2, -5/2, -3-1]) cube([5.75, 5.75, 2.5]);
    
    translate([0, 0, -(H-1)+gap1]) cylinder(h=H-1, r=3.5/2, $fn=100);
}
}
module NEJI_BOTTOM2(H=5)
{
difference()
{
    translate([-5/2, -5/2, -3-1]) cube([5.75, 5.75, 2.5]);
}
}