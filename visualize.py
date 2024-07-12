import matplotlib.pyplot as plt
import matplotlib.animation as animation

count = 0

path_list = []
dis_list = []
eff_list = []

ims = []

file_name = input().split()[-1]
input()

while True:
    path_list.append(input().split()[1:])
    dis_list.append(input().split()[1])
    eff_list.append(float(input().split()[1]))
    count += 1

    if input() == "END": break;

cities = {}
with open(file_name, mode="r") as f:
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
ims = []
for i in range(count):
    x = x_list[i]
    y = y_list[i]

    sc_im = plt.scatter(x, y, marker="x", c="b", alpha=0.8)
    pl_im = plt.plot(x, y, c="b", alpha=0.4)

    num_tx = plt.text(0.0, 1.05, f"{(i+1):02}/{count:02}", ha="left", transform=ax.transAxes)
    dis_tx = plt.text(0.15, 1.05, f"distance: {dis_list[i]}", ha="left", transform=ax.transAxes)
    eff_tx = plt.text(0.4, 1.05, f"efficiency: {eff_list[i]:.2f}", ha="left", transform=ax.transAxes)

    ims.append([sc_im]+pl_im+[num_tx, dis_tx, eff_tx])

ani = animation.ArtistAnimation(fig, ims, interval=500)
plt.show()
