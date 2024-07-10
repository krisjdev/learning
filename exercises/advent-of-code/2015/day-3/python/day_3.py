f = open("../puzzle_input.txt", "r").readline()

x = 0
y = 0

visited = {
    (x, y): 1
}

# task 1
for i in range(0, len(f)):
    if f[i] == ">":
        x += 1
    elif f[i] == "<":
        x -= 1
    elif f[i] == "^":
        y += 1
    elif f[i] == "v":
        y -= 1
    else:
        raise Exception(f"unexpected char {f[i]}")
    
    # print(f"x: {x} y: {y}")

    if (x, y) in visited.keys():
        # print("visited...")
        visited[(x, y)] += 1
    else:
        # print("not visited")
        visited[(x, y)] = 1

print(f"task 1: {len(visited)}")




# task 2
def process_movement(posc:str, x, y):
    if posc == ">":
        return x+1, y
    elif posc == "<":
        return x-1, y
    elif posc == "^":
        return x, y+1
    elif posc == "v":
        return x, y-1
    else:
        raise Exception(f"unexpected char {f[i]}")

santa_x = 0
santa_y = 0
rsanta_x = 0
rsanta_y = 0

task_two_visited = {
    (0, 0): 2
}

def update_house(x, y):
    if (x, y) in task_two_visited.keys():
        task_two_visited[(x, y)] += 1
    else:
        task_two_visited[(x, y)] = 1

for i in range(0, len(f)):

    if i % 2 == 0:
        santa_x, santa_y = process_movement(f[i], santa_x, santa_y)
        update_house(santa_x, santa_y)
    else:
        rsanta_x, rsanta_y = process_movement(f[i], rsanta_x, rsanta_y)
        update_house(rsanta_x, rsanta_y)

print(f"task 2: {len(task_two_visited)}")