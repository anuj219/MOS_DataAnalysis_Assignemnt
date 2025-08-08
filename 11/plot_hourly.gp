# --- Gnuplot Script for Hourly Traffic ---
set terminal png size 800,600
set output '~/Desktop/hourly_traffic_chart.png'

set title "Hourly Server Traffic Pattern"
set ylabel "Number of Requests"
set xlabel "Hour of the Day (00-23)"

set style fill solid
set boxwidth 0.7

plot 'hourly_traffic_data.dat' using 1:xtic(2) with boxes notitle
