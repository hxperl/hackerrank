from collections import OrderedDict

a = int(input())

od = OrderedDict()
for i in range(a):
    tmp = input().split()
    item_name, net_price = ' '.join(tmp[:-1]), int(tmp[-1])
    if item_name in od.keys():
        od[item_name] += net_price
    else:
        od[item_name] = net_price
for k, v in od.items():
    print(k, v)