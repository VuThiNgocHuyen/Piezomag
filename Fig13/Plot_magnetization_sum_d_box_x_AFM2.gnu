set encoding iso_8859_1
set term postscript eps enhanced color "Times-Roman, 40"
set term post eps enh color size 8.0, 4
set output "Magnetization_orbital_x_sum_AFM2.eps"
unset title
set border linewidth 3
#set key spacing 1.4
set key left bottom font ",28" # change legend position
#set key box lt -1 lw 2 width 0.4 height 1.0 #legend box
set ytics nomirror
set ylabel "Magnetization ({/Symbol m}_B)"
set xlabel "Atoms"
set xtics ( "1 and 2" 0.1, "3,4,5 and 6" 0.2) 
set ytics -0.1, 0.02, 0.04
set style fill solid 
set yrange [ -0.11 : 0.05]
set xrange [ 0.02 : 0.28]
set boxwidth 0.04 absolute 
set arrow from 0.02,0.0 to 0.28,0.0 nohead dt '-' lw 2 lt rgb "black" front

plot 'Mag_orb_x_sum_AFM2.dat' u 1:(-$2) w boxes lc rgb "light-blue" notitle,\
     'Mag_orb_x_sum_AFM2.dat' u 3:(-$4) w boxes lc rgb "blue" notitle  
