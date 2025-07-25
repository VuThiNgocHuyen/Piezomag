set terminal postscript eps enhanced size 8.0cm,3.5cm color colortext font 'Times-Roman,22'
set output "Shear_T2g_Mx.eps"
set xlabel "Txy"
set ylabel "Mx"

set xrange [-2900:2900]
set yrange [-70:70]
set xtics -2000,1000,2000
set ytics -60,30,60

# Plot for Mx, restricting the fitting lines to the data range
plot 0 notitle with lines dt 2 lw 3 lt rgb "black", \
     'data_shear_T2g_Ni' using ($7*100):($1*-1000) notitle with points pt 5 ps 1.7 lt rgb "dark-green",\
     'data_shear_T2g_Cu' using ($7*100):($1*-1000) notitle with points pt 7 ps 1.7 lt rgb "dark-green"

