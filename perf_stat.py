import csv
import subprocess

MAX_DATA_NUM = 15
COUNT = 5

perf = []
eff_ave = []

for i in range(MAX_DATA_NUM+1):
    perf.append([])
    for _ in range(COUNT):
        output = subprocess.run(f"./tsp -p -d {i}", shell=True, capture_output=True, text=True).stdout
        perf[-1].append(float(output.split("\n")[1]))

    eff_ave.append(round(sum(perf[-1])/COUNT, 2))

print(eff_ave)

with open("perf.csv", "a") as f:
    writer = csv.writer(f, lineterminator="\n")
    writer.writerow(eff_ave)
