# Linear fitting script for multiple data files (Mx and Mz separately)
# Mx and Mz are multiplied by -1, using the same color "web-blue", specific point types, and saving fitting info

# Set terminal settings to suppress interactive plotting
set terminal postscript eps enhanced size 8.0cm,5.5cm color colortext font 'Times-Roman,22'

# Open a file to save the fitting information
set print "Out_fit_T1g"

# Function definitions for each material, with Mx and Mz multiplied by -1
Mx_model_Ni(x) = n11_Ni + (q11_Ni + q12_Ni) * x
Mz_model_Ni(x) = n12_Ni + 2 * q12_Ni * x

Mx_model_Cu(x) = n11_Cu + (q11_Cu + q12_Cu) * x
Mz_model_Cu(x) = n12_Cu + 2 * q12_Cu * x

Mx_model_Zn(x) = n11_Zn + (q11_Zn + q12_Zn) * x
Mz_model_Zn(x) = n12_Zn + 2 * q12_Zn * x

Mx_model_Ga(x) = n11_Ga + (q11_Ga + q12_Ga) * x
Mz_model_Ga(x) = n12_Ga + 2 * q12_Ga * x

# Initial guesses for parameters
n11_Ni = q11_Ni = q12_Ni = n12_Ni = 0
n11_Cu = q11_Cu = q12_Cu = n12_Cu = 0
n11_Zn = q11_Zn = q12_Zn = n12_Zn = 0
n11_Ga = q11_Ga = q12_Ga = n12_Ga = 0

# Fit commands for each material and save results to file
fit Mx_model_Ni(x) 'data_Ni_T1g' using 4:($1*-1) via n11_Ni, q11_Ni, q12_Ni
print "Ni: q11_Ni * 18.9655 =", q11_Ni * 18.9655
print "Ni: q12_Ni * 18.9655 =", q12_Ni * 18.9655
fit Mz_model_Ni(x) 'data_Ni_T1g' using 4:($3*-1) via n12_Ni, q12_Ni

fit Mx_model_Cu(x) 'data_Cu_T1g' using 4:($1*-1) via n11_Cu, q11_Cu, q12_Cu
print "Cu: q11_Cu * 18.9655 =", q11_Cu * 18.9655
print "Cu: q12_Cu * 18.9655 =", q12_Cu * 18.9655
fit Mz_model_Cu(x) 'data_Cu_T1g' using 4:($3*-1) via n12_Cu, q12_Cu

fit Mx_model_Zn(x) 'data_Zn_T1g' using 4:($1*-1) via n11_Zn, q11_Zn, q12_Zn
print "Zn: q11_Zn * 18.9655 =", q11_Zn * 18.9655
print "Zn: q12_Zn * 18.9655 =", q12_Zn * 18.9655
fit Mz_model_Zn(x) 'data_Zn_T1g' using 4:($3*-1) via n12_Zn, q12_Zn

fit Mx_model_Ga(x) 'data_Ga_T1g' using 4:($1*-1) via n11_Ga, q11_Ga, q12_Ga
print "Ga: q11_Ga * 18.9655 =", q11_Ga * 18.9655
print "Ga: q12_Ga * 18.9655 =", q12_Ga * 18.9655
fit Mz_model_Ga(x) 'data_Ga_T1g' using 4:($3*-1) via n12_Ga, q12_Ga

# Set output and plot range for Mx
set output "Fit_Mx_T1g.eps"
set title "Linear Fits for Mx"
set xlabel "T11"
set ylabel "Mx"
set xrange [-0.3:29.95]
set yrange [-0.075:0.075]

# Plot for Mx
plot 0 notitle with lines dt 2 lw 3 lt rgb "black", \
     'data_Ni_T1g' using 4:($1*-1) notitle with points pt 5 ps 1.7 lt rgb "web-blue", \
     [0:29.74] Mx_model_Ni(x) notitle with lines lw 3 lt rgb "web-blue", \
     'data_Cu_T1g' using 4:($1*-1) notitle with points pt 7 ps 1.7 lt rgb "web-blue", \
     [0:24.5] Mx_model_Cu(x) notitle with lines lw 3 lt rgb "web-blue", \
     'data_Zn_T1g' using 4:($1*-1) notitle with points pt 9 ps 1.7 lt rgb "web-blue", \
     [0:26.25] Mx_model_Zn(x) notitle with lines lw 3 lt rgb "web-blue", \
     'data_Ga_T1g' using 4:($1*-1) notitle with points pt 13 ps 1.7 lt rgb "web-blue", \
     [0:26.82] Mx_model_Ga(x) notitle with lines lw 3 lt rgb "web-blue"

# Set output and plot range for Mz
set output "Fit_Mz_T1g.eps"
set title "Linear Fits for Mz"
set xlabel "T11"
set ylabel "Mz"
set xrange [-0.3:29.95]
set yrange [-0.075:0.075]

# Plot for Mz
plot 0 notitle with lines dt 2 lw 3 lt rgb "black", \
     'data_Ni_T1g' using 4:($3*-1) notitle with points pt 5 ps 1.7 lt rgb "web-blue", \
     [0:29.74] Mz_model_Ni(x) notitle with lines lw 3 lt rgb "web-blue", \
     'data_Cu_T1g' using 4:($3*-1) notitle with points pt 7 ps 1.7 lt rgb "web-blue", \
     [0:24.5] Mz_model_Cu(x) notitle with lines lw 3 lt rgb "web-blue", \
     'data_Zn_T1g' using 4:($3*-1) notitle with points pt 9 ps 1.7 lt rgb "web-blue", \
     [0:26.25] Mz_model_Zn(x) notitle with lines lw 3 lt rgb "web-blue", \
     'data_Ga_T1g' using 4:($3*-1) notitle with points pt 13 ps 1.7 lt rgb "web-blue", \
     [0:26.82] Mz_model_Ga(x) notitle with lines lw 3 lt rgb "web-blue"

