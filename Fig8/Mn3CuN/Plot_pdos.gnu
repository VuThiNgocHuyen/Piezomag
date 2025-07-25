set terminal postscript eps enhanced size 5.0, 8.0cm color colortext font 'Times-Roman,36'
set output "Dos.eps"

unset key
set boxwidth 6

#set border linewidth 1.5
#set key at -5,11 font ',22'
#set key box lt -1 lw 2 width 0.9 height 1.0 #legend box

set xlabel "Energy (eV)"
set ylabel "DOS (states/eV)"

set xrange [ -8.0 : 3.0]
set yrange [0.0: 8.0]

set arrow from 0.0,0.0 to 0.0,8.0 nohead dt '-' lw 4 lt rgb "black" front

plot 'Mn_t_x_y.dat' u ($1):($6+$7+$8+$9+$10+0.707*($17+$18+$19+$20+$21)-0.707*($28+$29+$30+$31+$32)) w l lw 8.0 lt rgb "orange-red" title "Mn-3d^{up}",\
     'Mn_t_x_y.dat' u ($1):($6+$7+$8+$9+$10-0.707*($17+$18+$19+$20+$21)+0.707*($28+$29+$30+$31+$32)) w l lw 8.0 lt rgb "web-blue" title "Mn-3d^{dn}",\
     'Cu_t_x_y.dat' u ($1):($6+$7+$8+$9+$10+0.707*($17+$18+$19+$20+$21)-0.707*($28+$29+$30+$31+$32)) w l lw 8.0 lt rgb "purple" title "Ge-3d^{up}",\
     'Cu_t_x_y.dat' u ($1):($6+$7+$8+$9+$10-0.707*($17+$18+$19+$20+$21)+0.707*($28+$29+$30+$31+$32)) w l lw 8.0 lt rgb "navy" title "Ge-3d^{dn}",\
     'Cu_t_x_y.dat' u ($1):($3+$4+$5+0.707*($14+$15+$16)-0.707*($25+$26+$27)) w l lw 8.0 lt rgb "orange" title "Ge-4p^{up}",\
     'Cu_t_x_y.dat' u ($1):($3+$4+$5-0.707*($14+$15+$16)+0.707*($25+$26+$27)) w l lw 8.0 lt rgb "green" title "Ge-4p^{dn}",\
     'Cu_t_x_y.dat' u ($1):($2+0.707*$13-0.707*$24) w l lw 8.0 lt rgb "brown" title "Ge-4s^{up}",\
     'Cu_t_x_y.dat' u ($1):($2-0.707*$13+0.707*$24) w l lw 8.0 lt rgb "dark-green" title "Ge-4s^{up}"
