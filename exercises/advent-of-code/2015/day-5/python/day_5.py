f = open("../puzzle_input.txt", "r").readlines()

def is_nice_string(string: str):
    vowels = set("aeiou")
    string = string.strip()

    string_contains_enough_vowels = False
    string_contains_consecutive_matching_letters = False
    string_does_not_contain_naughty_strings = True


    prev_letter = string[0]
    vowel_counter = 0
    for i in range(0, len(string)):
        letter = string[i]
        
        if not string_contains_enough_vowels:
            if letter in vowels:
                vowel_counter += 1

            if vowel_counter >= 3:
                string_contains_enough_vowels = True

        if i == 0: continue # skip rest of processing for i == 0

        if not string_contains_consecutive_matching_letters:
            if prev_letter == letter:
                string_contains_consecutive_matching_letters = True

        if letter in ["b", "d", "q", "y"]:
            if (prev_letter, letter) in [("a", "b"), ("c", "d"), ("p", "q"), ("x", "y")]:
                string_does_not_contain_naughty_strings = False

        prev_letter = letter


    # print(f"\tenough vowels: {string_contains_enough_vowels}")
    # print(f"\tenough letters: {string_contains_consecutive_matching_letters}")
    # print(f"\tno naughty strings: {string_does_not_contain_naughty_strings}")

    return True if (string_contains_enough_vowels and string_does_not_contain_naughty_strings and string_contains_consecutive_matching_letters) else False 


nice_words = 0
for word in f:

    if is_nice_string(word):
        nice_words += 1


print(f"total nice words: {nice_words}")