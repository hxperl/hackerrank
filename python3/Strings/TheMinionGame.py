def count_substring(string, sub_string):
    tmp = set()
    for i in range(len(string)):
        index = string.find(sub_string, i)
        if index != -1:
            tmp.add(index)
    return len(tmp)

def _(string, v_flag=False):
    name = dict()
    vowels = "AEIOU"
    tmp = ""
    for c, i in enumerate(string):
        if v_flag:
            if i in vowels and i not in name.keys():
                name[i]=count_substring(string, i)
                tmp = string[c]
                for j in range(c+1, len(string)):
                    tmp = tmp+string[j]
                    if tmp not in name.keys():
                        name[tmp] = count_substring(string, tmp)
        else:
            if i not in vowels and i not in name.keys():
                name[i]=count_substring(string, i)
                tmp = string[c]
                for j in range(c+1, len(string)):
                    tmp = tmp+string[j]
                    if tmp not in name.keys():
                        name[tmp] = count_substring(string, tmp)
    return name

def minion_game(string):
    stuart = _(string, v_flag=False)
    kevin = _(string, v_flag=True)
    st = sum(stuart.values())
    kv = sum(kevin.values())
    if st > kv:
        print("Stuart "+str(st))
    elif kv > st:
        print("Kevin "+str(kv))
    else:
        print("Draw")
if __name__=='__main__':
    minion_game("BANANA")
