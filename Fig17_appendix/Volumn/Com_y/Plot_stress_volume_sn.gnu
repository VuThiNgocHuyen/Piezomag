set encoding iso_8859_1
set terminal postscript eps enhanced size 8.0cm,3.5cm color colortext font 'Times-Roman,18'
set output "Str_vol_sn.eps"

set key at 430, 75 spacing 0.8 font ",18" maxrows 5
set key box lt -1 lw 2 width 0.8 height 1.4
#set boxwidth 2
set border linewidth 2

set xlabel "Stress T_{yy} (MPa)"
set ylabel "Volume ({\305}^3)"
set xtics 0, 200, 800
#set ytics 0, 20, 80

set yrange [118.5 : 119.5]
set xrange [0: 810]

set arrow from 0.0,0.0 to 800,0.0 nohead dt '-' lw 2 lt rgb "black" front

plot 'data_Sn' u ($5)*100:($7) lt -1 pi -6 pt 7 ps 1.7 lc rgb "royalblue" title "Mn_3Sn",\
'data_Sn' u ($5)*100:($7) w l lw 5 lc rgb "royalblue" notitle,\
