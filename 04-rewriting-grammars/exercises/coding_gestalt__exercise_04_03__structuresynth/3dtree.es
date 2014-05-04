// ------ Camera settings.
set translation [0 -0.367113 -20]
set rotation [0.963994 0.0575931 -0.259613 0.0514549 0.917418 0.394584 0.260899 -0.393735 0.881422]
set pivot [0 0 0]
set scale 0.36


// ------ The actual EisenScript
set background #fff
set maxdepth 100

 r0

rule r0 {

 10 * {  rx 90 x 4  y 2  hue 310 sat 1 b 1 s 1.2} R2
}


rule R2 {
5 * { a 1 x 1 y 0.1 z 0.9 rz -20 ry 20    rx 20 s 0.9 sat 0.99 b 1  } R3
  { s 5 } sphere
}


rule R3 {
 20 * {  x 1 z 1 rz 50 ry -12 rx 20  s 0.9 sat 0.99 b 1  } R3
  { s 4 } sphere
}
// ----- Settings for internal raytracer

set raytracer::shadows false
set raytracer::size [2650x1562]
// the number of samples controls the quality
// '6' means 6x6 samples per pixels, and is the default.
set raytracer::samples 16

// dof is depth-of-field.
// Use 'Edit | Show 3D Object Information' to find the correct plane 
// comment the line below to disable this.
set raytracer::dof [0.285,0.05] 
// Set materials either globally,
// or for a selected tag (e.g. 'shiny')
set raytracer::reflection 0.3
set raytracer::phong [0.5,0.6,0.2]
 