# Convert to Binary
print(bin(111))        # '0b1101111'
print(bin(111)[2:])    # '1101111'

# Reusable functions
def to_binary(n):
    return bin(n)[2:]

def to_binary_padded(n, bits=8):
    return format(n, f'0{bits}b')

# Call the functions and print the results
print(to_binary(111))           # '1101111'
print(to_binary_padded(111))    # '01101111'