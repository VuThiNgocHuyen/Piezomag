
set terminal postscript eps enhanced color  font 'Times-Roman'
set output 'Mag_3d_Ni.eps'

set xrange [-0.062:0.062]
set yrange [-0.062:0.062]
set zrange [-0.062:0.062]

set xlabel 'M_x'
set ylabel 'M_y'
set zlabel 'M_z'
#set title '3D Vector Plot'

set view 80, 110
set ticslevel 0
set grid

splot 'data_Ni_T1g1'  using 1:2:3:(-$4):(-$5):(-$6) with vectors linecolor rgb "web-blue" lw 5 notitle,\
     'data_Ni_T2g' using 1:2:3:(-$4):(-$5):(-$6) with vectors lc rgb "dark-green" lw 5 notitle


