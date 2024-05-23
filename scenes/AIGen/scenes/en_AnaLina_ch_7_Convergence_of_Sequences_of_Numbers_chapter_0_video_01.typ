#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Sequences 📜]
#v(40pt)
#only("1-")[- Ordered list of numbers]
#v(20pt)
#only("2-")[- Examples: $a_n = (1, 2, 3, 4, 5, ...)$]
#v(20pt)
#only("3-")[- Defined by a formula for the $n$-th term]
#only("1")[
#voiceover("A sequence is an ordered list of numbers. The numbers in a sequence follow a specific order.")
]
#only("2")[
#voiceover("For example, the sequence 1, 2, 3, 4, 5, and so on, is an ordered list where each number is one more than the previous.")
]
#only("3")[
#voiceover("Sequences are often defined by a formula for the n-th term. This formula tells us how to find any term in the sequence if we know its position.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Formula for the $n$-th Term]
#v(40pt)
#only("1-")[- General form: $a_n = f(n)$]
#v(20pt)
#only("2-")[- Example: $a_n = 2n + 1$]
#v(20pt)
#only("3-")[  - $a_1 = 2(1) + 1 = 3$]
#only("4-")[  - $a_2 = 2(2) + 1 = 5$]
#only("5-")[  - $a_3 = 2(3) + 1 = 7$]
#only("1")[
#voiceover("The formula for the n-th term of a sequence is usually written as a_n equals some function of n.")
]
#only("2")[
#voiceover("For instance, consider the sequence defined by a_n equals 2n plus 1.")
]
#only("3")[
#voiceover("To find the first term, we substitute n equals 1 into the formula. This gives us a_1 equals 2 times 1 plus 1, which is 3.")
]
#only("4")[
#voiceover("For the second term, we use n equals 2. So a_2 equals 2 times 2 plus 1, which is 5.")
]
#only("5")[
#voiceover("Similarly, for the third term, a_3 equals 2 times 3 plus 1, which is 7. And we can continue this process for any value of n.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 11)  # First 10 terms
a_n = 2*n + 1  # Formula for the n-th term

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', linewidth=2, markersize=10)
plt.xlabel('n', fontsize=14)
plt.ylabel('a_n', fontsize=14)
plt.title('Sequence: a_n = 2n + 1', fontsize=16)
plt.grid(True)
plt.xticks(n)
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("Here's a plot of the first 10 terms of the sequence a_n equals 2n plus 1. We can see that the terms increase linearly with n.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Sequence: Ordered list of numbers 📜]
#v(20pt)
#only("2-")[- Often defined by a formula for the $n$-th term]
#v(20pt)
#only("3-")[  - General form: $a_n = f(n)$]
#v(20pt)
#only("4-")[  - Allows calculation of any term 🧮]
#only("1")[
#voiceover("In summary, a sequence is an ordered list of numbers.")
]
#only("2")[
#voiceover("Sequences are often defined by a formula for the n-th term.")
]
#only("3")[
#voiceover("This formula is usually written in the form a_n equals some function of n.")
]
#only("4")[
#voiceover("Knowing this formula allows us to calculate any term in the sequence, given its position n.")
]
]