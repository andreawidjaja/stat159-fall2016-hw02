.PHONY: all data clean

all: report/report.pdf data/eda-output.txt data/regression.RData

data/Advertising.csv:
	curl -o data/Advertising.csv http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv

report/report.pdf: report/report.Rmd data/regression.RData images/scatterplot-tv-sales.png
	cd report; pandoc report.Rmd -s -o report.pdf

data/eda-output.txt: code/eda-script.R data/Advertising.csv
	cd report; Rscript eda-script.R

data/regression.RData: code/regression-script.R data/Advertising.csv
	cd report; Rscript regression-script.R

clean:
	rm -f report/report.pdf
