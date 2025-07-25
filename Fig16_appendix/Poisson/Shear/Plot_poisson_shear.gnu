set terminal postscript eps enhanced size 8.0cm,6cm color colortext font 'Times-Roman,22'
set output "Xi_shear.eps"

#set key at 0.019, 1.04 spacing 1.0 font ",14" maxrows 5
#set key box lt -1 lw 2 width 1 height 1.5
#set boxwidth 6
set border linewidth 1.7

set xlabel "{/Symbol x} "
set ylabel "Poisson's ratio"
#set xtics -25, 5, 25
#set ytics 1.0, 0.0025, 1.008
set xtics 0.005, 0.005, 0.020

set yrange [ 0 : 0.05]
set xrange [0.0: 0.025]

#set arrow from 0.0,0.0 to 200,0.0 nohead dt '-' lw 2 lt rgb "black" front
#set arrow from -0.6,0.0 to 0.3,0.0 nohead dt '-' lw 2 lt rgb "black" front



plot 'data_Ni' u (1*$1):(1)*($2-1)/($1) lt -1 pi -6 pt 5 ps 1.7 lc rgb "orange-red" notitle "Mn_3NiN",\
'data_Ni' u (1*$1):(1)*($2-1)/($1) w l dt '-' lw 2 lc rgb "orange-red" notitle ,\
'data_Cu' u (1*$1):(1)*($2-1)/($1) lt -1 pi -6 pt 7 ps 1.7 lc rgb "orange-red" notitle "Mn_3CuN",\
'data_Cu' u (1*$1):(1)*($2-1)/($1) w l dt '-' lw 2 lc rgb "orange-red" notitle ,\
'data_Zn' u (1*$1):(1)*($2-1)/($1) lt -1 pi -6 pt 9 ps 1.7 lc rgb "orange-red" notitle "Mn_3ZnN",\
'data_Zn' u (1*$1):(1)*($2-1)/($1) w l dt '-' lw 2 lc rgb "orange-red" notitle ,\
'data_Ga' u (1*$1):(1)*($2-1)/($1) lt -1 pi -6 pt 13 ps 1.7 lc rgb "orange-red" notitle "Mn_3GaN",\
'data_Ga' u (1*$1):(1)*($2-1)/($1) w l dt '-' lw 2 lc rgb "orange-red" notitle ,\
'data_Ni' u (1*$1):(-1)*($3-1)/($1) lt -1 pi -6 pt 4 ps 1.7 lc rgb "dark-violet" notitle "Mn_3NiN",\
'data_Ni' u (1*$1):(-1)*($3-1)/($1) w l dt '-' lw 2 lc rgb "dark-violet" notitle ,\
'data_Cu' u (1*$1):(-1)*($3-1)/($1) lt -1 pi -6 pt 6 ps 1.7 lc rgb "dark-violet" notitle "Mn_3CuN",\
'data_Cu' u (1*$1):(-1)*($3-1)/($1) w l dt '-' lw 2 lc rgb "dark-violet" notitle ,\
'data_Zn' u (1*$1):(-1)*($3-1)/($1) lt -1 pi -6 pt 8 ps 1.7 lc rgb "dark-violet" notitle "Mn_3ZnN",\
'data_Zn' u (1*$1):(-1)*($3-1)/($1) w l dt '-' lw 2 lc rgb "dark-violet" notitle ,\
'data_Ga' u (1*$1):(-1)*($3-1)/($1) lt -1 pi -6 pt 12 ps 1.7 lc rgb "dark-violet" notitle "Mn_3GaN" ,\
'data_Ga' u (1*$1):(-1)*($3-1)/($1) w l dt '-' lw 2 lc rgb "dark-violet" notitle ,\
