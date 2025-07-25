# Linear fitting script for multiple data files (Mx and Mz separately)
# Mx and Mz are multiplied by -1, using the same color "web-blue", specific point types, and saving fitting info

# Set terminal settings to suppress interactive plotting
set terminal postscript eps enhanced size 8.0cm,4.0cm color colortext font 'Times-Roman,18'

# Open a file to save the fitting information
set print "Out_fit"

# Function definitions for each material, with Mx and Mz multiplied by -1
Mx_model_Sn(x) = n_Sn + q22_Sn * x
Mx_model_Ge(x) = n_Ge + q22_Ge * x

# Initial guesses for parameters
n_Sn = q22_Sn = 0
n_Ge = q22_Ge = 0

# Fit commands for each material and save results to file
fit Mx_model_Sn(x) 'data_Sn' using 5:($2*-1) via n_Sn, q22_Sn
print "Sn: q22_Sn * 18.9655 =", q22_Sn * 18.9655
fit Mx_model_Ge(x) 'data_Ge' using 5:($2*-1) via n_Ge, q22_Ge
print "Ge: q22_Ge * 18.9655 =", q22_Ge * 18.9655


# Set output and plot range for Mx
set output "Fit.eps"
set title "Linear Fits for My"
set xlabel "Tyy"
set ylabel "My"
set xrange [0:8]
set yrange [0:0.080]

# Plot for Mx, restricting the fitting lines to the data range
plot     'data_Ge' using 5:($2*-1) notitle with points pt 5 ps 1.3 lt rgb "green", \
     [0:7.79] Mx_model_Ge(x) notitle with lines lw 3 lt rgb "green", \
     'data_Sn' using 5:($2*-1) notitle with points pt 7 ps 1.3 lt rgb "royalblue", \
     [0:6.438] Mx_model_Sn(x) notitle with lines lw 3 lt rgb "royalblue", \
     'data_Sn_exp' u ($4):($1) lt -1 pi -6 pt 3 ps 1.3 lc rgb "blue" notitle 


