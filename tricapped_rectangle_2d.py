import math
from py2scad import *



def tricapped_rectangle_2d(params):
    """
    Creates a rectangular part capped with an isosceles triangle. The nose 
    of the cap and the intersection of the cap and the base can be rounded 
    by specifying the minimum radii. 

    This is a bit kludgey - it might be better to create a general polygon 
    rounder. This would take as input the points and paths in a polygon and
    the user could specify a list of location at which to round the polygon.
    Something like that. This would be much more convenient for rounding 
    complicated objects.

    """
    base_x = params['base_x']
    base_y = params['base_y']
    thickness = params['thickness']
    cap_angle = params['cap_angle']
    nose_radius = params['nose_radius']
    base_radius = params['base_radius']

    # Create base rectangle
    base = Cube(size=[base_x, base_y, thickness])
    base = Translate(base,v=[0, -0.5*base_y,0])

    # Create rounding cylinders between base and cap
    base_cyl = Cylinder(r1=base_radius,r2=base_radius,h=thickness)
    v = [0.5*base_x - base_radius, 0, 0]
    base_cyl_r = Translate(base_cyl,v=v)
    v = [-(0.5*base_x - base_radius), 0, 0]
    base_cyl_l = Translate(base_cyl,v=v)

    # Create cap triangle
    cap_angle_rad = DEG2RAD(cap_angle)
    # Angle on base cylinder at which cap edge will be tangent to cylinder
    int_angle = math.atan(-(1.0/(math.tan(0.5*cap_angle_rad - 0.5*math.pi))))
    # Coordinates of tangent intersection 
    base_int_x = 0.5*base_x - base_radius + base_radius*math.cos(int_angle)
    base_int_y = base_radius*math.sin(int_angle)

    # Create isosceles triangle
    tri_height = -math.tan(0.5*cap_angle_rad - 0.5*math.pi)*base_int_x 
    tri_width = 2*base_int_x
    tri_shift_y =  base_int_y
    tri = isosceles_triangle(tri_height, tri_width, thickness)
    tri = Translate(tri,v=[0,tri_shift_y,0])

    # Create fill rectangle - to fill gap between base and cap
    fill_rect = Cube(size=[2*base_int_x,base_int_y,thickness])
    fill_rect = Translate(fill_rect,v=[0,0.5*base_int_y,0])

    # Round nose of cap
    cap_point_y = tri_height + tri_shift_y
    nose_int_x = nose_radius*math.cos(int_angle)
    nose_int_y = math.tan(0.5*cap_angle_rad - 0.5*math.pi)*nose_int_x + cap_point_y
    nose_cyl = Cylinder(r1=nose_radius,r2=nose_radius,h=thickness)
    nose_cyl_y = nose_int_y-nose_radius*math.sin(int_angle)
    nose_cyl = Translate(nose_cyl,v=[0,nose_cyl_y,0])

    # Cut off extra  material from triangle
    cut_rect_x = 2*nose_int_x
    cut_rect_y = 2*(cap_point_y - nose_int_y)
    cut_rect = Cube(size=[cut_rect_x,cut_rect_y,2*thickness])
    cut_rect = Translate(cut_rect,v=[0,0.5*cut_rect_y+nose_int_y,0])
    tri = Difference([tri, cut_rect])

    # Create rectangle capped with triangle through union of all parts
    capped_rect = Union([base, tri, base_cyl_r, base_cyl_l, tri, fill_rect,nose_cyl])
    
    return capped_rect


def isosceles_triangle(height,width,thickness):
    """
    Creates an isosceles triangle given the height and width of the triangle.
    """
    points = [[0.5*width,0],[0,height],[-0.5*width,0]]
    paths = [[0,1,2]]
    triangle_poly = Polygon(points,paths)
    triangle = Linear_Extrude(triangle_poly,h=thickness)
    return triangle



# -----------------------------------------------------------------------------
if __name__ == "__main__":

    params = {
            'base_x'      : 3.0, 
            'base_y'      : 1.0, 
            'thickness'   : 0.2,
            'cap_angle'   : 90.0,
            'nose_radius' : 0.3,
            'base_radius' : 0.3,
            }
    part = tricapped_rectangle_2d(params)

    prog = SCAD_Prog()
    prog.fn = 50
    prog.add(part)
    prog.write('part.scad')
