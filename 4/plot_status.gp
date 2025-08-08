# --- Gnuplot Script for HTTP Status Codes ---

# 1. Set the output to be a PNG image file on your Desktop.
set terminal png size 800,600
set output '~/Desktop/status_codes_chart.png'

# 2. Set titles for the chart and axes.
set title "HTTP Status Code Summary"
set ylabel "Count"
set xlabel "Status Code"

# 3. Set the plot style to be a bar chart.
set style fill solid
set boxwidth 0.5

# 4. The plot command.
#    'using 1:xtic(2)' means: use the first column for bar height,
#    and the second column for the x-axis tic labels.
plot 'status_codes_data.dat' using 1:xtic(2) with boxes notitle
