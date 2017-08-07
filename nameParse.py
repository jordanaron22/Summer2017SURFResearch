def main():
    file = open("BothNames.txt", "r")
    lines = file.readlines()
    file2 = open('NewESGeneNames.txt', 'a')
    for line in lines:
        line = line.split()
        file2.write(line[5] + "\n")
main()
