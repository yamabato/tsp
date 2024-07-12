import matplotlib.pyplot as plt

file_name = input().split()[-1]
path = input().split()[1:]

cities = {}
with open(file_name, mode="r") as f:
    n = int(f.readline())
    for i in range(n):
        city = f.readline().split()
        cities[city[0]] = list(map(float, city[1:]))

x = []
y = []

for v in path:
    x.append(cities[v][0])
    y.append(cities[v][1])

plt.scatter(x, y, marker="x", c="b", alpha=0.8)
plt.plot(x, y, alpha=0.6)

for i, v in enumerate(path):
    plt.text(x[i], y[i], v)

plt.show()
