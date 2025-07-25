set terminal postscript eps enhanced size 5.5, 3.5 color colortext font 'Times-Roman,32'
set output "Dos.eps"

unset key
#set boxwidth 6

#set border linewidth 1.5
#set key at -4.5,17 font ',24'
#set key box lt -1 lw 2 width 0.9 height 1.0 #legend box
set ytics 0,2,8

set xlabel "Energy (eV)"
set ylabel "DOS (states/eV)"

set xrange [ -4.5 : 3.0]
set yrange [0.0: 9.0]

set arrow from 0.0,0.0 to 0.0,9.0 nohead dt '-' lw 4 lt rgb "black" front

plot 'Mn_total_X.dat' u ($1):($6+$7+$8+$9+$10+($17+$18+$19+$20+$21))/2 w l lw 8.0 lt rgb "orange-red" notitle,\
     'Mn_total_X.dat' u ($1):($6+$7+$8+$9+$10-($17+$18+$19+$20+$21))/2 w l lw 8.0 lt rgb "web-blue" notitle,\
     'Ge_total_X.dat' u ($1):($6+$7+$8+$9+$10+($17+$18+$19+$20+$21))/2 w l lw 8.0 lt rgb "purple" notitle ,\
     'Ge_total_X.dat' u ($1):($6+$7+$8+$9+$10-($17+$18+$19+$20+$21))/2 w l lw 8.0 lt rgb "navy" notitle ,\
     'Ge_total_X.dat' u ($1):($3+$4+$5+($14+$15+$16))/2 w l lw 8.0 lt rgb "orange" notitle ,\
     'Ge_total_X.dat' u ($1):($3+$4+$5-($14+$15+$16))/2 w l lw 8.0 lt rgb "green" notitle ,\
     'Ge_total_X.dat' u ($1):($2+$13)/2 w l lw 8.0 lt rgb "brown" notitle ,\
     'Ge_total_X.dat' u ($1):($2-$13)/2 w l lw 8.0 lt rgb "dark-green" notitle "
