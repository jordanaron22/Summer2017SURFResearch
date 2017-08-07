def main():
    file = open("BothNames.txt", "r")
    lines = file.readlines()
    file2 = open('OldESGeneNames.txt', 'a')
    for line in lines:
        line = line.split()
        file2.write(line[0] + "\n")
main()
