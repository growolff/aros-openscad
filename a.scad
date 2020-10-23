h = 2;
rad = 15;
text_size = 20;

translate([0, -8, 0])
{
linear_extrude(h)
    text("A",size=text_size,halign="center");
    
}

translate([0,rad+1,0])
{ 
    difference(){
        cylinder(h=h,r=2.5);
        $fn=100;
        cylinder(h=h,r=1.5);
    }
}

difference()
{
    cylinder(h=h,r=rad);
    $fn=100;
    cylinder(h=h,r=rad-1.5);
}

translate([-rad,-0.5,0])
    cube([rad*2,1,h]);