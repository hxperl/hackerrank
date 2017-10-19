if __name__ == '__main__':
    students=list()
    scores = list()
    for _ in range(int(input())):
        name = input()
        score = float(input())
        scores.append(score)
        students.append([name,score])
    minimun = min(scores)
    scores = set(scores)
    scores.remove(minimun)
    second_minimum = min(scores)
    print(*[i[0] for i in sorted(students) if i[1]== second_minimum], sep="\n")