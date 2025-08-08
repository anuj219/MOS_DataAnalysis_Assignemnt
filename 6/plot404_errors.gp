# --- Gnuplot Script for Top 404 Error Pages ---

set terminal png size 800,600
set output '~/Desktop/top_404_errors_chart.png'

set title "Top 10 Pages Causing '404 Not Found' Errors"
set ylabel "Number of Failed Requests"

set style fill solid
set boxwidth 0.5
set xtics rotate by -90
set lmargin 10
set bmargin 10


plot 'top_404_errors_data.dat' using 1:xtic(2) with boxes notitle
