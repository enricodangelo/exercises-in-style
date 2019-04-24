def get_all_pixels(i, j, k):
    pixels = []

    for x in range(1, len(field) + 1):
        for y in range(1, len(field) + 1):
            # were all double
            dx = x - j
            dy = y - i
            distanceSquared = float(dx) * float(dx) + float(dy) * float(dy)
            radiusSquared = float(k) * float(k)
            # print 'x = ' + str(x) + ', y = ' + str(y) + ', i = ' + str(i) + ', j = ' + str(j) + ', distanceSquared = ' + str(distanceSquared) + ', radiusSquared = ' + str(radiusSquared)

            if distanceSquared <= radiusSquared:
                pixels.append((x, y))
    return pixels


def check_field(field):
    n = len(field)
    result = 0
    for i in range(1, n + 1):
        for j in range(1, n + 1):
            for k in range(1, (n / 2) + 1):
                pixels = get_all_pixels(i, j, k)
                ok = True
                for pixel in pixels:
                    if field[pixel[0] - 1][pixel[1] - 1] == "*":
                        ok = False

                if ok:
                    # print 'center: ' + str(i) + ', ' + str(j) + ' r: ' + str(k)
                    if k > result:
                        result = k
                    if k >= n / 2:
                        return result
                else:
                    break
    return result

n = int(raw_input())
field = []
for i in range(n):
    field.append(raw_input())

result = check_field(field)
print result
