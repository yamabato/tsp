import sys
import csv
import subprocess

MAX_DATA_NUM = 15
COUNT = 10

perf = []
eff_ave = []

for i in range(MAX_DATA_NUM+1):
    print("num: ", i);
    perf.append([])
    for _ in range(COUNT):
        output = subprocess.run(f"./tsp -p -d {i}", shell=True, capture_output=True, text=True).stdout
        perf[-1].append(float(output.split("\n")[1]))

    # eff_ave.append(round(sum(perf[-1])/COUNT, 2))
    eff_ave.append(round(min(perf[-1]), 2))

print(eff_ave)

with open("perf_best.csv", "a") as f:
    writer = csv.writer(f, lineterminator="\n")
    writer.writerow([sys.argv[1]] + [f"{e:.2f}" for e in eff_ave])
