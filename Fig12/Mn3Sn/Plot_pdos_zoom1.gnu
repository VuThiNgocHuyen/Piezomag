set terminal postscript eps enhanced size 3.0, 7.0cm color colortext font 'Times-Roman,32'
set output "Dos_zoom1.eps"

unset key
unset tics
#set ytics 2,4,12

#set xlabel "Energy (eV)"
#set ylabel "DOS (states/eV)"

set xrange [ -0.45 : -0.1]
set yrange [3.8: 4.9]

#set arrow from 0.0,0.0 to 0.0,18.0 nohead dt '-' lw 4 lt rgb "black" front

plot 'Mn_total_X.dat' u ($1):($6+$7+$8+$9+$10+($17+$18+$19+$20+$21))/2 w l lw 20.0 lt rgb "orange-red" title "Mn-3d^{up}",\
     'Mn_total_X.dat' u ($1):($6+$7+$8+$9+$10-($17+$18+$19+$20+$21))/2 w l lw 20.0 lt rgb "web-blue" title "Mn-3d^{dn}",\
     'Sn_total_X.dat' u ($1):($6+$7+$8+$9+$10+($17+$18+$19+$20+$21))/2 w l lw 20.0 lt rgb "purple" title "Sn-3d^{up}",\
     'Sn_total_X.dat' u ($1):($6+$7+$8+$9+$10-($17+$18+$19+$20+$21))/2 w l lw 20.0 lt rgb "navy" title "Sn-3d^{dn}",\
     'Sn_total_X.dat' u ($1):($3+$4+$5+($14+$15+$16))/2 w l lw 20.0 lt rgb "orange" title "Sn-4p^{up}",\
     'Sn_total_X.dat' u ($1):($3+$4+$5-($14+$15+$16))/2 w l lw 20.0 lt rgb "green" title "Sn-4p^{dn}",\
     'Sn_total_X.dat' u ($1):($2+$13)/2 w l lw 20.0 lt rgb "brown" title "Sn-4s^{up}",\
     'Sn_total_X.dat' u ($1):($2-$13)/2 w l lw 20.0 lt rgb "dark-green" title "Sn-4s^{dn}"

