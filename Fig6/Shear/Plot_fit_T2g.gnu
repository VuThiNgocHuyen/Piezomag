# Linear fitting script for multiple data files (Mx and Mz separately)
# Mx and Mz are multiplied by -1, using the same color "web-blue", specific point types, and saving fitting info

# Set terminal settings to suppress interactive plotting
set terminal postscript eps enhanced size 8.0cm,5.5cm color colortext font 'Times-Roman,22'

# Open a file to save the fitting information
set print "Out_fit_T2g"

# Function definitions for each material, with Mx and Mz multiplied by -1
Mx_model_Ni(x) = n15_Ni + q15_Ni * x

Mx_model_Cu(x) = n15_Cu + q15_Cu * x

Mx_model_Zn(x) = n15_Zn + q15_Zn * x

Mx_model_Ga(x) = n15_Ga + q15_Ga * x

# Initial guesses for parameters
n15_Ni = q15_Ni = 0
n15_Cu = q15_Cu = 0
n15_Zn = q15_Zn = 0
n15_Ga = q15_Ga = 0

# Fit commands for each material and save results to file
fit Mx_model_Ni(x) 'data_Ni' using 4:($1*-1) via n15_Ni, q15_Ni
print "Ni: q15_Ni * 18.9655 =", q15_Ni * 18.9655

fit Mx_model_Cu(x) 'data_Cu' using 4:($1*-1) via n15_Cu, q15_Cu
print "Cu: q15_Cu * 18.9655 =", q15_Cu * 18.9655

fit Mx_model_Zn(x) 'data_Zn' using 4:($1*-1) via n15_Zn, q15_Zn
print "Zn: q15_Zn * 18.9655 =", q15_Zn * 18.9655

fit Mx_model_Ga(x) 'data_Ga' using 4:($1*-1) via n15_Ga, q15_Ga
print "Ga: q15_Ga * 18.9655 =", q15_Ga * 18.9655

# Set output and plot range for Mx
set output "Fit_Mx_T2g.eps"
set title "Linear Fits for Mx"
set xlabel "Txy"
set ylabel "Mx"
set xrange [-0.3:29.95]
set yrange [-0.075:0.075]

# Plot for Mx, restricting the fitting lines to the data range
plot 0 notitle with lines dt 2 lw 3 lt rgb "black", \
     'data_Ni_T2g' using ($4*-1):($1*-1) notitle with points pt 5 ps 1.7 lt rgb "dark-green", \
     [0:24.9] Mx_model_Ni(x) notitle with lines lw 3 lt rgb "dark-green", \
     'data_Cu_T2g' using ($4*-1):($1*-1) notitle with points pt 7 ps 1.7 lt rgb "dark-green", \
     [0:19.81] Mx_model_Cu(x) notitle with lines lw 3 lt rgb "dark-green", \
     'data_Zn_T2g' using ($4*-1):($1*-1) notitle with points pt 9 ps 1.7 lt rgb "dark-green", \
     [0:22.03] Mx_model_Zn(x) notitle with lines lw 3 lt rgb "dark-green", \
     'data_Ga_T2g' using ($4*-1):($1*-1) notitle with points pt 13 ps 1.7 lt rgb "dark-green", \
     [0:22.89] Mx_model_Ga(x) notitle with lines lw 3 lt rgb "dark-green"


