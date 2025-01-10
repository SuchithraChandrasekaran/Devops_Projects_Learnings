#1. Remove Duplicates from a List:

numbers = [1, 2, 2, 3, 4, 4, 5]
unique_numbers = list(set(numbers))
print("Unique numbers:", unique_numbers)

#2. Find Maximum in a List:

print("Maximum:", max(numbers))
	
#3.Sum of Digits in a Number:

num = 12345
total = sum(int(digit) for digit in str(num))
print("Sum of digits:", total)
