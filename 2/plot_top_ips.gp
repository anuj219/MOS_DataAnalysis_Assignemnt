# --- Gnuplot Script for Top 10 IP Addresses ---

set terminal png size 800,600
set output '~/Desktop/top_ips_chart.png'

set title "Top 10 Most Active IP Addresses"
set ylabel "Number of Requests"
set xlabel "IP Address"

set style fill solid
set boxwidth 0.5
set xtics rotate by -45

plot 'top_ips_data.dat' using 1:xtic(2) with boxes notitle
