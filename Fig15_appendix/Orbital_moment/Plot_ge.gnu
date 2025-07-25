set terminal postscript eps enhanced size 9.0cm,4.5cm color colortext font 'Times-Roman,24'
set output "Orbital_Mn3Ge.eps"
set border linewidth 2

set xlabel "Stress T_{xx} (MPa)"
set ylabel "Moment (m{/Symbol m}_B)"

set xtics -800, 200, 800
 set ytics -80, 40, 80
 
 set yrange [-80 : 80]
 set xrange [-810: 810]

set arrow from -800.0,0.0 to 800,0.0 nohead dt '-' lw 2 lt rgb "black" front

plot 'data_Ge' u ($2)*100:(-$1)*1000 lt -1 pi -6 pt 7 ps 1.7 lc rgb "royalblue" notitle,\
     'data_Ge' u ($2)*100:(-$3)*1000 lt -1 pi -6 pt 6 ps 1.7 lw 3 lc rgb "red" notitle  
