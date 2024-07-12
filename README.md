# TSP(Traveling Salesman Problem)

## 使い方

### データ指定
`tsp.c`のmain関数内`int data_num = xxx;`を書き換える。
`xxx`には0から15までの数値をいれる。
番号は`data.c`参照。

### コンパイル
```
gcc -o tsp *.c -lm
```

### 実行
```
./tsp
```

### 経路表示
```
./tsp | python3 visualize.py
```

経路が、`pathYYYYMMDDhhmmss.gif`に保存される。

要python3, matplotlib
