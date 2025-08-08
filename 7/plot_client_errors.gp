# --- Gnuplot Script for Client-Side Errors ---

# 1. Set the output to be a PNG image file saved on your Desktop.
set terminal png size 800,600
set output '~/Desktop/client_errors_chart.png'

# 2. Set clear titles for the chart and the axes.
set title "Summary of Client-Side Errors (4xx Status Codes)"
set ylabel "Number of Occurrences"
set xlabel "Error Code"

# 3. Define the style for the bar chart.
set style fill solid
set boxwidth 0.5

# 4. The core plot command.
#    'using 1:xtic(2)' tells gnuplot to:
#      - Use the first column for the height of the bars.
#      - Use the second column for the labels on the x-axis.
plot 'client_errors_data.dat' using 1:xtic(2) with boxes notitle
