
//====================================================================//
//======================= photogate_stand.scad =======================//
//                                                                    //
// Autogenerated using py2scad. Hand editing this file is not         //
// advisable as all modifications will be lost when the program which //
// generated this file is re-run.                                     //
//====================================================================//

$fn = 50;
projection(cut=true) {
    difference() {
        union() {
            translate(v=[82.55000, 0.00000, 0.00000]) {
                cube(size=[165.10000, 63.50000, 6.35000], center=true);
            }
            translate(v=[-3.04800, 19.05000, 0.00000]) {
                cube(size=[7.62000, 12.70000, 6.35000], center=true);
            }
            translate(v=[-3.04800, -19.05000, 0.00000]) {
                cube(size=[7.62000, 12.70000, 6.35000], center=true);
            }
        }
        translate(v=[50.80000, 0.00000, 0.00000]) {
            cylinder(h=7.62000,r1=1.35255,r2=1.35255,center=true);
        }
        translate(v=[76.20000, 0.00000, 0.00000]) {
            cylinder(h=7.62000,r1=1.35255,r2=1.35255,center=true);
        }
        translate(v=[127.00000, 0.00000, 0.00000]) {
            cylinder(h=7.62000,r1=1.35255,r2=1.35255,center=true);
        }
        translate(v=[152.40000, 0.00000, 0.00000]) {
            cylinder(h=7.62000,r1=1.35255,r2=1.35255,center=true);
        }
        translate(v=[11.43000, 0.00000, 0.00000]) {
            rotate(a=-90.00000,v=[0.00000, 0.00000, 1.00000]) {
                union() {
                    translate(v=[0.00000, -6.35000, 0.00000]) {
                        cube(size=[19.30400, 12.70000, 12.70000], center=true);
                    }
                    difference() {
                        translate(v=[0.00000, 1.79605, 0.00000]) {
                            linear_extrude(height=12.70000,twist=0.00000,center=true,convexity=5) {
                                polygon(
                                    points = [
                                        [8.90805, 0.00000],
                                        [0.00000, 8.90805],
                                        [-8.90805, 0.00000],
                                    ],
                                    paths = [
                                        [0.00000, 1.00000, 2.00000],
                                    ]
                                );

                            }
                        }
                        translate(v=[0.00000, 10.70410, 0.00000]) {
                            cube(size=[1.79605, 1.79605, 25.40000], center=true);
                        }
                    }
                    translate(v=[7.11200, 0.00000, 0.00000]) {
                        cylinder(h=12.70000,r1=2.54000,r2=2.54000,center=true);
                    }
                    translate(v=[-7.11200, 0.00000, 0.00000]) {
                        cylinder(h=12.70000,r1=2.54000,r2=2.54000,center=true);
                    }
                    difference() {
                        translate(v=[0.00000, 1.79605, 0.00000]) {
                            linear_extrude(height=12.70000,twist=0.00000,center=true,convexity=5) {
                                polygon(
                                    points = [
                                        [8.90805, 0.00000],
                                        [0.00000, 8.90805],
                                        [-8.90805, 0.00000],
                                    ],
                                    paths = [
                                        [0.00000, 1.00000, 2.00000],
                                    ]
                                );

                            }
                        }
                        translate(v=[0.00000, 10.70410, 0.00000]) {
                            cube(size=[1.79605, 1.79605, 25.40000], center=true);
                        }
                    }
                    translate(v=[0.00000, 0.89803, 0.00000]) {
                        cube(size=[17.81610, 1.79605, 12.70000], center=true);
                    }
                    translate(v=[0.00000, 8.90805, 0.00000]) {
                        cylinder(h=12.70000,r1=1.27000,r2=1.27000,center=true);
                    }
                }
            }
        }
        translate(v=[101.60000, 8.00000, 0.00000]) {
            cube(size=[27.90000, 8.85000, 25.40000], center=true);
        }
    }
}

projection(cut=true) {
    translate(v=[0.00000, -101.60000, 50.80000]) {
        difference() {
            union() {
                translate(v=[0.00000, 0.00000, -50.80000]) {
                    translate(v=[82.55000, 0.00000, 0.00000]) {
                        cube(size=[165.10000, 63.50000, 6.35000], center=true);
                    }
                }
                translate(v=[-3.04800, 19.05000, -50.80000]) {
                    cube(size=[7.62000, 12.70000, 6.35000], center=true);
                }
                translate(v=[-3.04800, -19.05000, -50.80000]) {
                    cube(size=[7.62000, 12.70000, 6.35000], center=true);
                }
                translate(v=[101.60000, 0.00000, -44.45000]) {
                    cube(size=[76.20000, 7.87400, 6.35000], center=true);
                }
            }
            translate(v=[0.00000, 0.00000, -50.80000]) {
                translate(v=[11.43000, 0.00000, 0.00000]) {
                    rotate(a=-90.00000,v=[0.00000, 0.00000, 1.00000]) {
                        union() {
                            translate(v=[0.00000, -6.35000, 0.00000]) {
                                cube(size=[19.30400, 12.70000, 12.70000], center=true);
                            }
                            difference() {
                                translate(v=[0.00000, 1.79605, 0.00000]) {
                                    linear_extrude(height=12.70000,twist=0.00000,center=true,convexity=5) {
                                        polygon(
                                            points = [
                                                [8.90805, 0.00000],
                                                [0.00000, 8.90805],
                                                [-8.90805, 0.00000],
                                            ],
                                            paths = [
                                                [0.00000, 1.00000, 2.00000],
                                            ]
                                        );

                                    }
                                }
                                translate(v=[0.00000, 10.70410, 0.00000]) {
                                    cube(size=[1.79605, 1.79605, 25.40000], center=true);
                                }
                            }
                            translate(v=[7.11200, 0.00000, 0.00000]) {
                                cylinder(h=12.70000,r1=2.54000,r2=2.54000,center=true);
                            }
                            translate(v=[-7.11200, 0.00000, 0.00000]) {
                                cylinder(h=12.70000,r1=2.54000,r2=2.54000,center=true);
                            }
                            difference() {
                                translate(v=[0.00000, 1.79605, 0.00000]) {
                                    linear_extrude(height=12.70000,twist=0.00000,center=true,convexity=5) {
                                        polygon(
                                            points = [
                                                [8.90805, 0.00000],
                                                [0.00000, 8.90805],
                                                [-8.90805, 0.00000],
                                            ],
                                            paths = [
                                                [0.00000, 1.00000, 2.00000],
                                            ]
                                        );

                                    }
                                }
                                translate(v=[0.00000, 10.70410, 0.00000]) {
                                    cube(size=[1.79605, 1.79605, 25.40000], center=true);
                                }
                            }
                            translate(v=[0.00000, 0.89803, 0.00000]) {
                                cube(size=[17.81610, 1.79605, 12.70000], center=true);
                            }
                            translate(v=[0.00000, 8.90805, 0.00000]) {
                                cylinder(h=12.70000,r1=1.27000,r2=1.27000,center=true);
                            }
                        }
                    }
                }
            }
            translate(v=[69.85000, 0.00000, -50.80000]) {
                cylinder(h=25.40000,r1=1.71450,r2=1.71450,center=true);
            }
            translate(v=[133.35000, 0.00000, -50.80000]) {
                cylinder(h=25.40000,r1=1.71450,r2=1.71450,center=true);
            }
            translate(v=[25.40000, -15.24000, -50.80000]) {
                cube(size=[5.00000, 2.50000, 12.70000], center=true);
            }
            translate(v=[25.40000, -22.86000, -50.80000]) {
                cube(size=[5.00000, 2.50000, 12.70000], center=true);
            }
            translate(v=[50.80000, -15.24000, -50.80000]) {
                cube(size=[5.00000, 2.50000, 12.70000], center=true);
            }
            translate(v=[50.80000, -22.86000, -50.80000]) {
                cube(size=[5.00000, 2.50000, 12.70000], center=true);
            }
        }
    }
}

projection(cut=true) {
    translate(v=[-50.80000, 0.00000, -3.17500]) {
        rotate(a=90.00000,v=[0.00000, 1.00000, 0.00000]) {
            difference() {
                translate(v=[-3.17500, 0.00000, 0.00000]) {
                    cube(size=[6.35000, 63.50000, 19.05000], center=true);
                }
                difference() {
                    union() {
                        translate(v=[82.55000, 0.00000, 0.00000]) {
                            cube(size=[165.10000, 63.50000, 6.35000], center=true);
                        }
                        translate(v=[-3.04800, 19.05000, 0.00000]) {
                            cube(size=[7.62000, 12.70000, 6.35000], center=true);
                        }
                        translate(v=[-3.04800, -19.05000, 0.00000]) {
                            cube(size=[7.62000, 12.70000, 6.35000], center=true);
                        }
                    }
                    translate(v=[50.80000, 0.00000, 0.00000]) {
                        cylinder(h=7.62000,r1=1.35255,r2=1.35255,center=true);
                    }
                    translate(v=[76.20000, 0.00000, 0.00000]) {
                        cylinder(h=7.62000,r1=1.35255,r2=1.35255,center=true);
                    }
                    translate(v=[127.00000, 0.00000, 0.00000]) {
                        cylinder(h=7.62000,r1=1.35255,r2=1.35255,center=true);
                    }
                    translate(v=[152.40000, 0.00000, 0.00000]) {
                        cylinder(h=7.62000,r1=1.35255,r2=1.35255,center=true);
                    }
                    translate(v=[11.43000, 0.00000, 0.00000]) {
                        rotate(a=-90.00000,v=[0.00000, 0.00000, 1.00000]) {
                            union() {
                                translate(v=[0.00000, -6.35000, 0.00000]) {
                                    cube(size=[19.30400, 12.70000, 12.70000], center=true);
                                }
                                difference() {
                                    translate(v=[0.00000, 1.79605, 0.00000]) {
                                        linear_extrude(height=12.70000,twist=0.00000,center=true,convexity=5) {
                                            polygon(
                                                points = [
                                                    [8.90805, 0.00000],
                                                    [0.00000, 8.90805],
                                                    [-8.90805, 0.00000],
                                                ],
                                                paths = [
                                                    [0.00000, 1.00000, 2.00000],
                                                ]
                                            );

                                        }
                                    }
                                    translate(v=[0.00000, 10.70410, 0.00000]) {
                                        cube(size=[1.79605, 1.79605, 25.40000], center=true);
                                    }
                                }
                                translate(v=[7.11200, 0.00000, 0.00000]) {
                                    cylinder(h=12.70000,r1=2.54000,r2=2.54000,center=true);
                                }
                                translate(v=[-7.11200, 0.00000, 0.00000]) {
                                    cylinder(h=12.70000,r1=2.54000,r2=2.54000,center=true);
                                }
                                difference() {
                                    translate(v=[0.00000, 1.79605, 0.00000]) {
                                        linear_extrude(height=12.70000,twist=0.00000,center=true,convexity=5) {
                                            polygon(
                                                points = [
                                                    [8.90805, 0.00000],
                                                    [0.00000, 8.90805],
                                                    [-8.90805, 0.00000],
                                                ],
                                                paths = [
                                                    [0.00000, 1.00000, 2.00000],
                                                ]
                                            );

                                        }
                                    }
                                    translate(v=[0.00000, 10.70410, 0.00000]) {
                                        cube(size=[1.79605, 1.79605, 25.40000], center=true);
                                    }
                                }
                                translate(v=[0.00000, 0.89803, 0.00000]) {
                                    cube(size=[17.81610, 1.79605, 12.70000], center=true);
                                }
                                translate(v=[0.00000, 8.90805, 0.00000]) {
                                    cylinder(h=12.70000,r1=1.27000,r2=1.27000,center=true);
                                }
                            }
                        }
                    }
                    translate(v=[101.60000, 8.00000, 0.00000]) {
                        cube(size=[27.90000, 8.85000, 25.40000], center=true);
                    }
                }
                translate(v=[-19.05000, 0.00000, 0.00000]) {
                    rotate(a=90.00000,v=[0.00000, 1.00000, 0.00000]) {
                        cylinder(h=38.10000,r1=2.54000,r2=2.54000,center=true);
                    }
                }
            }
        }
    }
}

