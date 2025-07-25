set terminal postscript eps enhanced size 8.0cm,3.5cm color colortext font 'Times-Roman,20'
set output "Bias.eps"
set xlabel "Txx=Tyy"
set ylabel "Moment"
set xrange [-2900:2900]
set yrange [-80:100]
set xtics -2000,1000,2000
set ytics -80,40,80

# Plot for Mx, restricting the fitting lines to the data range
plot 0 notitle with lines dt 2 lw 3 lt rgb "black", \
     'data_bias' using ($7*100):($1*-1000) notitle with points pt 5 ps 1.2 lt rgb "web-blue",\
     'data_bias' using ($7*100):($3*-1000) notitle with points pt 7 ps 1.2 lt rgb "web-blue",\
     'data_bias' using ($7*100):($4*1000) notitle with points pt 4 ps 1.2 lt rgb "red",\
     'data_bias' using ($7*100):($5*1000) notitle with points pt 6 ps 1.2 lt rgb "red",\
     'data_bias' using ($7*100):($6*1000) notitle with points pt 3 ps 1.2 lt rgb "red"


