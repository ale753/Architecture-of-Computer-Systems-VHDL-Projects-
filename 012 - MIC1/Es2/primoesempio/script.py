f = open("ajvm.txt", "r")

i = 0;

for x in f:

    t = str(x)
    t = t.rstrip('\n')

    print( str(i) + " => " + '"' + t + '",' )
    i = i + 1