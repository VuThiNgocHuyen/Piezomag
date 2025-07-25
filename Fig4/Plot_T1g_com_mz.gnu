set terminal postscript eps enhanced size 8.0cm,3.5cm color colortext font 'Times-Roman,22'
set output "Com_z_T1g_Mz.eps"
set xlabel "T33"
set ylabel "Mz"
set xrange [-2900:2900]
set yrange [-70:70]
set xtics -2000,1000,2000
set ytics -60,30,60


# Plot for Mx, restricting the fitting lines to the data range
plot 0 notitle with lines dt 2 lw 3 lt rgb "black", \
     'data_com_T1g_Ni' using ($6*100):($3*-1000) notitle with points pt 5 ps 1.7 lt rgb "web-blue",\
      'data_com_T1g_Cu' using ($6*100):($3*-1000) notitle with points pt 7 ps 1.7 lt rgb "web-blue"

