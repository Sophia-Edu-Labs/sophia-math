#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Limits of Quotients]
#v(40pt)
#only("1-")[- Given: $a_n = 1/n$ and $b_n = 2$]
#v(20pt)
#only("2-")[- Find: $lim_(n -> infinity) (a_n / b_n)$]
#only("1")[
#voiceover("Great job! That's the correct answer. Let's see how we can solve this step by step. We are given two sequences: a_n equals 1 over n, and b_n equals 2.")
]
#only("2")[
#voiceover("We need to find the limit of the quotient of these sequences as n approaches infinity.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Find Individual Limits]
#v(40pt)
#only("1-")[- $lim_(n -> infinity) a_n = lim_(n -> infinity) 1/n = 0$]
#v(20pt)
#only("2-")[- $lim_(n -> infinity) b_n = lim_(n -> infinity) 2 = 2$]
#only("1")[
#voiceover("First, let's find the limits of each sequence individually. The limit of a_n as n approaches infinity is the limit of 1 over n, which is 0.")
]
#only("2")[
#voiceover("The limit of b_n as n approaches infinity is simply the limit of the constant 2, which is 2.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Apply Quotient Rule]
#v(40pt)
#only("1-")[- If $lim_(n -> infinity) a_n = L$ and $lim_(n -> infinity) b_n = M$ (M != 0), then $lim_(n -> infinity) (a_n / b_n) = L / M$]
#v(20pt)
#only("2-")[- Here, $L = 0$ and $M = 2$]
#v(20pt)
#only("3-")[- So, $lim_(n -> infinity) (a_n / b_n) = 0 / 2 = 0$]
#only("1")[
#voiceover("Now, we can apply the quotient rule for limits. It states that if the limit of a_n is L and the limit of b_n is M, where M is not equal to 0, then the limit of the quotient a_n over b_n is equal to L over M.")
]
#only("2")[
#voiceover("In our case, L is 0 (the limit of a_n) and M is 2 (the limit of b_n).")
]
#only("3")[
#voiceover("Therefore, the limit of the quotient a_n over b_n as n approaches infinity is equal to 0 divided by 2, which is 0.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the sequences
def a(n):
    return 1/n

def b(n):
    return 2

# Generate n values
n = np.arange(1, 100)

# Calculate sequence values
a_n = a(n)
b_n = b(n)
c_n = a_n / b_n

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(n, a_n, label='a_n = 1/n')
plt.plot(n, b_n, label='b_n = 2')
plt.plot(n, c_n, label='a_n / b_n')

# Add limit lines
plt.axhline(0, color='red', linestyle='--', label='Limit of a_n')
plt.axhline(2, color='green', linestyle='--', label='Limit of b_n')
plt.axhline(0, color='purple', linestyle='--', label='Limit of a_n / b_n')

# Improve aesthetics
plt.grid(True)
plt.legend()
plt.title('Visualization of Sequences and Their Quotient')
plt.xlabel('n')
plt.ylabel('Sequence Value')

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of the sequences and their quotient. The blue line represents a_n, which approaches 0 as n increases. The orange line is b_n, which is constantly 2. The green line is the quotient a_n over b_n, which also approaches 0 as n increases, just like a_n.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[- $lim_(n -> infinity) (a_n / b_n) = 0$ ✅]
#v(20pt)
#only("2-")[- This follows from the quotient rule for limits and the individual limits of $a_n$ and $b_n$]
#only("1")[
#voiceover("In conclusion, the limit of the quotient a_n over b_n as n approaches infinity is 0.")
]
#only("2")[
#voiceover("This result follows directly from applying the quotient rule for limits and finding the individual limits of the sequences a_n and b_n.")
]
]