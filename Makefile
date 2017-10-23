.ONESHELL:
run:
	python datareader.py 50 "data/1day/clusters.sortedby.clusterid.csv" -o results/1day-50.csv
	python datareader.py 50 "data/7days/clusters.sortedby.clusterid.csv" -o results/7days-50.csv
evaluate:
	python eval.py results/1day-50.csv >> results/eval-1day-50.txt
	python eval.py results/7days-50.csv >> results/eval-7days-50.txt
evaluate_professor:
	python eval.py data/1day/clusters.sortedby.clusterid.csv >> results/professor-1day-50.txt
	python eval.py data/7days/clusters.sortedby.clusterid.csv >> results/professor-7days-50.txt
	