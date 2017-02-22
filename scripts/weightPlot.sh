curl -L "https://spreadsheets.google.com/feeds/download/spreadsheets/Export?key=1RqF4HN4y5v2_rzYHhKS0-gOXRsHSTXp4SAuKB_w3Qtw&exportFormat=csv" > weight.csv
gnuplot <<-EOF
	set datafile separator ","
	set term png
	set key off
	set output "weight.png"
	set xdata time
	set xlabel "Date"
	set ylabel "Weight (lbs)"
	set format x "%m/%y"
	set xtics rotate by 30 offset -1,-1.3
	set timefmt "%m/%d/%Y %H:%M:%S"
	plot 'weight.csv' every ::1 using 1:2 w lp smooth unique
EOF
python weightEmailer.py
rm weight.csv
rm weight.png
