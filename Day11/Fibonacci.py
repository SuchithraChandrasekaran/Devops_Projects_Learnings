# Fibonacci series using while loop
print("Fibonacci Series:")

# Number of terms
n_terms = 10  # You can change this number as needed

# Initializing the first two terms
a, b = 0, 1
count = 0

# Generate Fibonacci series using while loop
while count < n_terms:
    print(a, end=" ")
    # Update the terms
    a, b = b, a + b
    count += 1
print()
