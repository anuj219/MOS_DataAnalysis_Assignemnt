# --- Gnuplot Script for Top 10 Files ---

# 1. Set the output to be a PNG image file on your Desktop.
set terminal png size 800,600
set output '~/Desktop/top_files_chart.png'

# 2. Set titles for the chart and axes.
set title "Top 10 Most Requested Files"
set ylabel "Number of Requests"

# 3. Set the plot style to be a bar chart.
set style fill solid
set boxwidth 0.5

# 4. Tell gnuplot to use the text from the second column as labels for the x-axis tics.
#    Also, rotate them so they don't overlap.
set xtics rotate by -45

# 5. The plot command.
#    'using 1:xtic(2)' means: use the first column for the bar height, 
#    and the second column for the x-axis tic labels.
plot 'top_files_data.dat' using 1:xtic(2) with boxes notitle
