set encoding iso_8859_1
set terminal postscript eps enhanced size 8.0cm,5.5cm color colortext font 'Times-Roman,22'
set output "Str_vol.eps"

#set key at 650, 250 spacing 1.0 font ",14" maxrows 5
#set key box lt -1 lw 2 width 1 height 1.5
#set boxwidth 6
#set border linewidth 2

set xlabel "Stress -T_{xy} (MPa)"
set ylabel "Volume ({\305}^3)"
set xtics 0, 500, 2500

set yrange [ 55 : 58.0]
set xrange [-100: 2980]

set arrow from 0.0,0.0 to 2980,0.0 nohead dt '-' lw 2 lt rgb "black" front

plot 'data_Ni' u (-$4)*100:($5) lt -1 pi -6 pt 5 ps 1.7 lc rgb "web-blue" notitle "Mn_3NiN",\
'data_Ni' u (-$4)*100:($5) w l lw 5 lc rgb "web-blue" notitle ,\
'data_Cu' u (-$4)*100:($5) lt -1 pi -6 pt 7 ps 1.7 lc rgb "web-blue" notitle "Mn_3CuN",\
'data_Cu' u (-$4)*100:($5) w l lw 5 lc rgb "web-blue" notitle ,\
'data_Zn' u (-$4)*100:($5) lt -1 pi -6 pt 9 ps 1.7 lc rgb "web-blue" notitle "Mn_3ZnN",\
'data_Zn' u (-$4)*100:($5) w l lw 5 lc rgb "web-blue" notitle ,\
'data_Ga' u (-$4)*100:($5) lt -1 pi -6 pt 13 ps 1.7 lc rgb "web-blue" notitle "Mn_3GaN",\
'data_Ga' u (-$4)*100:($5) w l lw 5 lc rgb "web-blue" notitle ,\
