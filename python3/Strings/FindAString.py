def count_substring(string, sub_string):
    tmp=list()
    for i in range(len(string)):
        index = string.find(sub_string, i)
        if index not in tmp and index != -1:
            tmp.append(index)
    return len(tmp)