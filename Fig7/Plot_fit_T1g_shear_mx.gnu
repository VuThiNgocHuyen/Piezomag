set terminal postscript eps enhanced size 8.0cm,3.5cm color colortext font 'Times-Roman,22'
set output "Shear_T1g_Mx.eps"
set xlabel "Txy"
set ylabel "Mx(m{/Symbol m}_B)"
set xrange [-2450:2450]
set yrange [-18:18]
set xtics -2000,1000,2000
set ytics -10,10,10

# Plot for Mx, restricting the fitting lines to the data range
plot 0 notitle with lines dt 2 lw 3 lt rgb "black", \
     'data_shear_T1g' using ($4*100):($1*-1000) notitle with points pt 5 ps 1.0 lt rgb "web-blue",\
     'data_shear_T1g_noSOC' using ($4*100):($1*-1000) notitle with points pt 4 ps 1.0 lt rgb "web-blue"
