set terminal postscript eps enhanced size 8.0cm,5.5cm color colortext font 'Times-Roman,22'
set output "Xi_poison_D3.eps"

set key at -0.1, 0.23 spacing 1.0 font ",4" maxrows 2
set key box lt -1 lw 2 width 1 height 1.5
#set boxwidth 6
set border linewidth 1.7

set xlabel "{/Symbol x} (%) "
set ylabel "Poisson ratio "
#set xtics -25, 5, 25
set ytics 0.0, 0.05, 0.3

set xtics -0.4, 0.1, -0.1

set yrange [ 0.0 : 0.35]
set xrange [-0.45: -0.05]

#set arrow from 0.0,0.0 to 200,0.0 nohead dt '-' lw 2 lt rgb "black" front
#set arrow from -0.6,0.0 to 0.3,0.0 nohead dt '-' lw 2 lt rgb "black" front


plot 'data_Sn_D3' u (-100*$2):(-1)*($3-1)/($1-1) lt -1 pi -6 pt 4 lw 4 ps 1.7 lc rgb "royalblue" notitle,\
     'data_Sn_D3' u (-100*$2):(-1)*($3-1)/($1-1) w l dt '-' lw 2 lc rgb "royalblue" notitle ,\
     'data_Ge_D3' u (-100*$2):(-1)*($3-1)/($1-1) lt -1 pi -6 pt 6 lw 6 ps 1.7 lc rgb "dark-green" notitle,\
     'data_Ge_D3' u (-100*$2):(-1)*($3-1)/($1-1) w l dt '-' lw 2 lc rgb "dark-green" notitle ,\
     'data_Sn_D3' u (-100*$2):(-1)*($4-1)/($1-1) lt -1 pi -6 pt 5 ps 1.7 lc rgb "royalblue" notitle ,\
     'data_Sn_D3' u (-100*$2):(-1)*($4-1)/($1-1) w l dt '-' lw 2 lc rgb "royalblue" notitle ,\
     'data_Ge_D3' u (-100*$2):(-1)*($4-1)/($1-1) lt -1 pi -6 pt 7 ps 1.7 lc rgb "dark-green" notitle,\
     'data_Ge_D3' u (-100*$2):(-1)*($4-1)/($1-1) w l dt '-' lw 2 lc rgb "dark-green" notitle ,\


