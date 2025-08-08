# --- Gnuplot Script for Server-Side Errors ---
set terminal png size 800,600
set output '~/Desktop/server_errors_chart.png'

set title "Summary of Server-Side Errors (5xx Status Codes)"
set ylabel "Number of Occurrences"
set xlabel "Error Code"

set style fill solid
set boxwidth 0.5

plot 'server_errors_data.dat' using 1:xtic(2) with boxes notitle
