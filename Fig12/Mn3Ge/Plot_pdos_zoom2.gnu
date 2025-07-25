set terminal postscript eps enhanced size 3.0, 7.0cm color colortext font 'Times-Roman,32'
set output "Dos_zoom2.eps"

unset key
unset tics
#set ytics 2,4,12

#set xlabel "Energy (eV)"
#set ylabel "DOS (states/eV)"

set xrange [ -2.75 : -2.4]
set yrange [6.5: 7.5]

#set arrow from 0.0,0.0 to 0.0,18.0 nohead dt '-' lw 4 lt rgb "black" front


plot 'Mn_total_X.dat' u ($1):($6+$7+$8+$9+$10+($17+$18+$19+$20+$21))/2 w l lw 20.0 lt rgb "orange-red" notitle,\
     'Mn_total_X.dat' u ($1):($6+$7+$8+$9+$10-($17+$18+$19+$20+$21))/2 w l lw 20.0 lt rgb "web-blue" notitle,\
     'Ge_total_X.dat' u ($1):($6+$7+$8+$9+$10+($17+$18+$19+$20+$21))/2 w l lw 20.0 lt rgb "purple" notitle ,\
     'Ge_total_X.dat' u ($1):($6+$7+$8+$9+$10-($17+$18+$19+$20+$21))/2 w l lw 20.0 lt rgb "navy" notitle ,\
     'Ge_total_X.dat' u ($1):($3+$4+$5+($14+$15+$16))/2 w l lw 20.0 lt rgb "orange" notitle ,\
     'Ge_total_X.dat' u ($1):($3+$4+$5-($14+$15+$16))/2 w l lw 20.0 lt rgb "green" notitle ,\
     'Ge_total_X.dat' u ($1):($2+$13)/2 w l lw 20.0 lt rgb "brown" notitle ,\
     'Ge_total_X.dat' u ($1):($2-$13)/2 w l lw 20.0 lt rgb "dark-green" notitle "
