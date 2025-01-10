# Input string
text = "Python programming"

# Part 1: Count words in the string
words = text.split()
print("Word count:", len(words))

# Part 2: Check if the string is a palindrome
print("Palindrome" if text == text[::-1] else "Not a palindrome")

# Part 3: Count the occurrence of each character (excluding spaces) and print in one line
print("Character occurrences:")
print({char: text.count(char) for char in set(text) if char != " "})
