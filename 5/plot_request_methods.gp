# --- Gnuplot Script for Request Methods ---

set terminal png size 800,600
set output '~/Desktop/request_methods_chart.png'

set title "Request Methods Summary (GET vs. POST)"
set ylabel "Count"
set xlabel "Method"

set style fill solid
set boxwidth 0.5

plot 'request_methods_data.dat' using 1:xtic(2) with boxes notitle
