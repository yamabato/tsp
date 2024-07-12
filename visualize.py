import datetime

import matplotlib.pyplot as plt
import matplotlib.animation as animation

count = 0

path_list = []
dis_list = []
eff_list = []

ims = []

file_full_path = input().split()[-1]
file_name = file_full_path.split("/")[-1]
kind = input().split()[-1]
best = input().split()[-1]
input()

while True:
    path_list.append(input().split()[1:])
    dis_list.append(input().split()[1])
    eff_list.append(float(input().split()[1]))
    count += 1

    if input() == "END": break;

cities = {}
with open(file_full_path, mode="r") as f:
    n = int(f.readline())
    for i in range(n):
        city = f.readline().split()
        cities[city[0]] = list(map(float, city[1:]))

x_list = []
y_list = []

for path in path_list:
    x_list.append([])
    y_list.append([])
    for v in path:
        x_list[-1].append(cities[v][0])
        y_list[-1].append(cities[v][1])

fig, ax = plt.subplots()
fig.canvas.manager.set_window_title(f"visualize: {file_name}")

ims = []
for i in range(count):
    x = x_list[i]
    y = y_list[i]

    sc_im = plt.scatter(x, y, marker="x", c="b", alpha=0.7)
    pl_im = plt.plot(x, y, c=(0, (count-i+1)/count*0.6, 0.2+(i+1)/count*0.6), alpha=0.4+((i+1)/count)*0.6)

    file_tx = plt.text(0.0, 1.10, f"file: {file_name}", ha="left", transform=ax.transAxes)
    kind_tx = plt.text(0.4, 1.10, f"kind: {kind}", ha="left", transform=ax.transAxes)
    best_tx = plt.text(0.7, 1.10, f"best: {best}", ha="left", transform=ax.transAxes)

    num_tx = plt.text(0.0, 1.05, f"{(i+1):02}/{count:02}", ha="left", transform=ax.transAxes)
    dis_tx = plt.text(0.15, 1.05, f"distance: {dis_list[i]}", ha="left", transform=ax.transAxes)
    eff_tx = plt.text(0.4, 1.05, f"efficiency: {eff_list[i]:.2f}%", ha="left", transform=ax.transAxes)

    ims.append([sc_im]+pl_im+[file_tx, kind_tx]+[num_tx, dis_tx, best_tx, eff_tx])

ani = animation.ArtistAnimation(fig, ims, interval=1000)
plt.show()

ani.save(f"path{datetime.datetime.now():%Y%m%d%H%M%S}.gif")
