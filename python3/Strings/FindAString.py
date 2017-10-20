def count_substring(string, sub_string):
    tmp = set()
    for i in range(len(string)):
        index = string.find(sub_string, i)
        if index != -1:
            tmp.add(index)
    return len(tmp)