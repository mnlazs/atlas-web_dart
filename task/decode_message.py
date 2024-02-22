def decode(coding_qual_input):
    with open(coding_qual_input, 'r') as file:
        lines = file.readlines()

    word_dict = {int(line.split()[0]): " ".join(line.split()[1:]) for line in lines}

    n = 1
    step = 1
    decoded_words = []

    while n in word_dict:
        decoded_words.append(word_dict[n])
        step += 1
        n += step

    if len(decoded_words) == step - 1:
        return ' '.join(decoded_words).lower()
    else:
        return False

# Ejemplo de uso
message = decode('coding_qual_input.txt')
print(message)
