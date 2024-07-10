import hashlib

# result = hashlib.md5("abcdef".encode())

# print(result.hexdigest())

i = 0
while(True):

    # if i > 609050:
        # break

    str_rep = "ckczppom" + str(i)
    result = hashlib.md5(str_rep.encode())

    if i % 1000 == 0:
        print(f"searching... {i}")


    if result.hexdigest()[0:6] == "000000":
        print(f"result found: {i}")
        print(f"{str_rep} produces {result.hexdigest()}")
        break
    else:
        i += 1
