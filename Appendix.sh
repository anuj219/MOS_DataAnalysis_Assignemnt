sed 's/ HTTP\/1.1"//' access_uncleaned.log > access.log


wc -l access.log
awk '{print $7}' access.log | sort | uniq -c | sort -nr | head -n 10
awk '{print $1}' access.log | sort | uniq -c | sort -nr | head -n 10
awk '{print $9}' access.log | sort | uniq -c | sort -nr
awk '{print $6}' access.log | sed 's/"//' | sort | uniq -c
awk '$9 == "404" {print $7}' access.log | sort | uniq -c | sort -nr
awk '($9 ~ /^4/) {print $9}' access.log | sort | uniq -c | sort -nr
awk '{if($9==200) count++} END {print "Successful (200): " count}' access.log
awk '{if($9==404) count++} END {print "Not Found (404): " count}' access.log
sort -k10 -nr access.log | head -n 5
sed 's/.*\[..\/...\/....:\(..\):..:.. .*/\1/' access.log | sort | uniq -c | sort -n
awk '($9 ~ /^5/) {print $9}' access.log | sort | uniq -c | sort -nr

# Saving an output to a .dat file for visualization
awk '...' access.log > data_file.dat

# Making gnuplot files
gedit file_name.gp

# runnung gnuplot
gnuplot file_name.gp
