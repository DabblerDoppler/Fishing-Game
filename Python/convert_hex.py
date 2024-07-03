# Converts 24 bit bmp images to 12 bit and removes the header.
import binascii

with open('to_convert.bmp', 'rb') as image:
    hexstring = binascii.hexlify(image.read())


print(hexstring)

hexlist = list()


for x in range(len(hexstring)):
    if(x > 108):
        if(x % 2 == 0):
            hexlist.append(hexstring[x])
            if(x % 6 == 0):
                hexlist.append(ord('0'))
print(hexlist)

binstring = bytes(hexlist)

print(binstring)

binstring = binascii.unhexlify(binstring)


with open('converted.hex', 'wb') as new:
    new.write(binstring)