#!/bin/bash
domainsfile="$1"
iterations="$2"
domains=$(cat "$domainsfile")
enumerate() {
  domains="$1"
  amass enum -d "$domains" -o results1.txt
  subfinder -d "$domains" -o results2.txt
  cat results1.txt result2s.txt | sort -u > finalresults.txt
  rm results1.txt results2.txt
}
for i in $(seq 1 "$iterations"); do
  echo "Iteration $i:"
  enumerate "$domains"
  domains=$(cat finalresults.txt)
done
count=$(wc -l < finalresults.txt)
sort -u finalresults.txt > arrangresults.txt
echo "subdomains is $count"
echo "the process done look at arrangresults.txt"
