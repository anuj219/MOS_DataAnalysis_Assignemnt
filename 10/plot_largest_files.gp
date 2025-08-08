# --- Gnuplot Script for Top 5 Largest Files ---

set terminal png size 800,600
set output '~/Desktop/largest_files_chart.png'

set title "Top 5 Largest Files by Size"
set ylabel "Size in Bytes"

set style fill solid
set boxwidth 0.5
set xtics rotate by -45

plot 'largest_files_data.dat' using 1:xtic(2) with boxes notitle
