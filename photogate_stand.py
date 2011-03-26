""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""

import sys
import scipy
from py2scad import *
from tricapped_rectangle_2d import tricapped_rectangle_2d

# Units below are in mm
INCH2MM = 25.4
INCH2CM = 2.54
#output_type = 'assembly'
output_type = 'dxf'

"""
Part sizes 

"""

thickness = 0.25*INCH2MM
pendulum_mount_length = 6.5*INCH2MM
pendulum_mount_width = 2.5*INCH2MM
tab_width = 1.2*thickness
tab_length =  0.50*INCH2MM
screw_height = 0.25*INCH2MM
screw_radius = 0.05325*INCH2MM    # Clearance chart for 8-32 screw
rod_radius = 0.375*INCH2MM
rod_height = 6*INCH2MM
rod_screw_height = 1.5*INCH2MM
rod_screw_radius = 0.5*0.2*INCH2MM
photogate_x = 3*INCH2MM
photogate_y = 0.31*INCH2MM
photogate_z = 0.25*INCH2MM
photogate_screw_height = 1*INCH2MM
photogate_screw_radius = 0.0675*INCH2MM  # Clearance chart for 8-32 screw
slot_x = 5.0
slot_y = 2.5
meter_stick_x = 1.0*INCH2MM
meter_stick_y = 0.25*INCH2MM
meter_stick_z = 1.0*INCH2MM

#Parts list and colors
pendulum_mount_base = Cube(size = [pendulum_mount_length, pendulum_mount_width, thickness])
screwhole = Cylinder(h = 1.2*screw_height , r1 = screw_radius, r2 = screw_radius)
photogate_screw = Cylinder(h = photogate_screw_height , r1 = photogate_screw_radius, r2 = photogate_screw_radius)
rod = Cylinder(h = rod_height , r1 = rod_radius, r2 = rod_radius)  # 0.75 inch rod
rod2 = Cylinder(h = rod_height , r1 = 0.66*rod_radius, r2 = 0.66*rod_radius) # 0.5 inch rod
tab = Cube(size = [tab_width, tab_length, thickness])
tri = right_triangle(0.4*INCH2MM, 0.4*INCH2MM,2*thickness)
diff_block = Cube(size = [2*rod_radius, 2*rod_radius, 2*rod_radius])
base_part = Cube(size = [thickness, pendulum_mount_width, 3*thickness])
rod_screw = Cylinder(h = rod_screw_height, r1= rod_screw_radius, r2 = rod_screw_radius)
photogate = Cube(size = [photogate_x, photogate_y, photogate_z])
cabletie_slot = Cube(size =[slot_x, slot_y, 2*thickness])
meter_stick_slot = Cube(size = [meter_stick_x +2.5, meter_stick_y+2.5, meter_stick_z])
meter_stick = Cube(size = [meter_stick_x, meter_stick_y, 4*meter_stick_z])

# Assembly translations and rotations
pendulum_mount_base = Translate(pendulum_mount_base, v=[0.5*pendulum_mount_length, 0, 0])
photogate_mount_base = Translate(pendulum_mount_base, v=[0, 0, -2*INCH2MM])

screwhole1 = Translate(screwhole, v=[2*INCH2MM,0,0])
screwhole2 = Translate(screwhole, v=[3*INCH2MM,0,0])
screwhole3 = Translate(screwhole, v=[5*INCH2MM,0,0])
screwhole4 = Translate(screwhole, v=[6*INCH2MM,0,0])

photogate = Translate(photogate, v=[4*INCH2MM,0,-2*INCH2MM +thickness])
photogate_screw1 = Translate(photogate_screw, v=[2.75*INCH2MM,0,-2*INCH2MM])
photogate_screw2 =  Translate(photogate_screw, v=[5.25*INCH2MM,0,-2*INCH2MM])

rod = Translate(rod, v=[rod_radius, 0, 0])
rod2 = Translate(rod2, v=[rod_radius, 0, 0])
tab1 = Translate(tab, v= [-0.4*tab_width, 0.30*pendulum_mount_width, 0])
tab2 = Translate(tab, v= [-0.4*tab_width, -0.30*pendulum_mount_width, 0])
tab3 = Translate(tab, v= [-0.4*tab_width, 0.30*pendulum_mount_width, -2*INCH2MM])
tab4 = Translate(tab, v= [-0.4*tab_width, -0.30*pendulum_mount_width, -2*INCH2MM])
tri = Rotate(tri,a=135,v = (0,0,1))
tri = Translate(tri, [2.45*rod_radius, 0, 0])
base_part = Translate(base_part, v=[-0.5*thickness, 0, 0])
rod_screw = Rotate(rod_screw, a=90, v=[0,1,0])
rod_screw = Translate(rod_screw, v=[-0.5*rod_screw_height, 0,0])

slot1 = Translate(cabletie_slot, v=[1*INCH2MM, -0.60*INCH2MM, -2*INCH2MM])
slot2 = Translate(cabletie_slot, v=[1*INCH2MM, -0.90*INCH2MM, -2*INCH2MM])
slot3 = Translate(cabletie_slot, v=[2*INCH2MM, -0.60*INCH2MM, -2*INCH2MM])
slot4 = Translate(cabletie_slot, v=[2*INCH2MM, -0.90*INCH2MM, -2*INCH2MM])

meter_stick_slot = Translate(meter_stick_slot, v=[4*INCH2MM,8,0])
meter_stick = Translate(meter_stick, v=[4*INCH2MM,8,0])

# Capped triangle part
params = {
        'base_x'      : INCH2MM*0.760, 
        'base_y'      : INCH2MM*0.5, 
        'thickness'   : 2*thickness,
        'cap_angle'   : 90.0,
        'nose_radius' : INCH2MM*0.05,
        'base_radius' : INCH2MM*0.1,
        }
part = tricapped_rectangle_2d(params)
part = Rotate(part, a=-90, v=[0,0,1])
part = Translate(part, v=[0.45*INCH2MM, 0,0])
part2 = Translate(part, v=[0, 0,-2*INCH2MM])


# Pendulum mount union and differencing
pendulum_mount_base = Union([pendulum_mount_base, tab1, tab2])
pendulum_mount = Difference([pendulum_mount_base, screwhole1, screwhole2, screwhole3, screwhole4, part, meter_stick_slot])
base_part = Difference([base_part, pendulum_mount, rod_screw])

# Photogate mount union and differencing
photogate_mount_base = Union([photogate_mount_base, tab3, tab4, photogate])
photogate_mount = Difference([photogate_mount_base, part2, photogate_screw1, photogate_screw2, slot1, slot2, slot3, slot4])


if output_type == 'dxf':


# Projection translations and rotations
    base_part = Rotate(base_part, a = 90, v =[0,1,0])
    base_part = Translate(base_part, v=[-2*INCH2MM,0,-0.5*thickness])
    base_part = Projection(base_part)
    pendulum_mount = Projection(pendulum_mount)

    photogate_mount = Translate(photogate_mount, v= [0, -4*INCH2MM,2*INCH2MM])
    photogate_mount = Projection(photogate_mount)

    reference = Cube(size = [INCH2MM, INCH2MM, INCH2MM])
    reference = Translate(reference, v= [50, 50, 0])
    reference = Projection(reference)

prog = SCAD_Prog()
prog.fn=50
prog.add(pendulum_mount)
prog.add(photogate_mount)
prog.add(base_part)
#prog.add(rod2)
#prog.add(meter_stick)
#prog.add(reference)
#prog.add(part)
#prog.add(rod)
#prog.add(tab1)
#prog.add(tab2)
#prog.add(tri)
#prog.add(diff_block)
#prog.add(rod_screw)
#prog.add(box)
#prog.add(photogate) 
prog.write('photogate_stand.scad')     

