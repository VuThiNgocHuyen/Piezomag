# Linear fitting script for multiple data files (Mx and Mz separately)
# Mx and Mz are multiplied by -1, using the same color "web-blue", specific point types, and saving fitting info

# Set terminal settings to suppress interactive plotting
set terminal postscript eps enhanced size 8.0cm,4.0cm color colortext font 'Times-Roman,18'

# Open a file to save the fitting information
set print "Out_fit"

# Function definitions for each material, with Mx and Mz multiplied by -1
Mx_model_Sn(x) = n_Sn + q12_Sn * x
Mx_model_Ge(x) = n_Ge + q12_Ge * x

# Initial guesses for parameters
n_Sn = q12_Sn = 0
n_Ge = q12_Ge = 0

# Fit commands for each material and save results to file
fit Mx_model_Sn(x) 'data_Sn' using 5:($1*-1) via n_Sn, q12_Sn
print "Sn: q12_Sn * 18.9655 =", q12_Sn * 18.9655
fit Mx_model_Ge(x) 'data_Ge' using 5:($1*-1) via n_Ge, q12_Ge
print "Ge: q12_Ge * 18.9655 =", q12_Ge * 18.9655


# Set output and plot range for Mx
set output "Fit.eps"
set title "Linear Fits for Mx"
set xlabel "Tyy"
set ylabel "Mx"
set xrange [-0.02:8.1]
set yrange [-0.07:0.01]

# Plot for Mx, restricting the fitting lines to the data range
plot     'data_Ge' using 5:($1*-1) notitle with points pt 5 ps 1.3 lt rgb "green", \
     [0:7.816] Mx_model_Ge(x) notitle with lines lw 3 lt rgb "green", \
     'data_Sn' using 5:($1*-1) notitle with points pt 7 ps 1.3 lt rgb "royalblue", \
     [0:6.3738] Mx_model_Sn(x) notitle with lines lw 3 lt rgb "royalblue"


