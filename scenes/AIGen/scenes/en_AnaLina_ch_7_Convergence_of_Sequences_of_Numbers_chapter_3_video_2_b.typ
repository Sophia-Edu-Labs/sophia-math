#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Convergence Definition]
#v(40pt)
#only("1-")[A sequence $a_n$ converges to $L$ if for every $epsilon > 0$, there exists an $N$ such that for all $n >= N$, $|a_n - L|$ is \_\_\_\_\_.]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) greater than $epsilon$]#only("2-")[#text(fill:green)[b) less than $epsilon$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) less than $epsilon$]#only("3-")[#text(fill:red)[a) greater than $epsilon$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) equal to $epsilon$]#only("4-")[#text(fill:red)[c) equal to $epsilon$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) not equal to $epsilon$]#only("5-")[#text(fill:red)[d) not equal to $epsilon$]]
#v(40pt)

#only("1")[#voiceover("That's right, great job! The correct answer is...")]
// Very briefly Talk about b and why it is correct
#only("2")[#voiceover("b) less than epsilon. The definition states that the absolute difference between a_n and L must be less than epsilon for all n greater than or equal to some N.")]
// Very briefly Talk about a and why it is incorrect
#only("3")[#voiceover("a) greater than epsilon is incorrect. If the difference was greater than epsilon, the sequence would not converge to L.")]
// Very briefly Talk about c and why it is incorrect
#only("4")[#voiceover("c) equal to epsilon is also incorrect. The difference does not need to be exactly equal to epsilon, just less than it.")]
// Very briefly Talk about d and why it is incorrect
#only("5")[#voiceover("And d) not equal to epsilon is incorrect as well. The difference can be equal to epsilon and still satisfy the definition, as long as it is less than epsilon.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[Let's break down the definition:]
#v(20pt)
#only("2-")[1. For every $epsilon > 0$: Choose any positive number $epsilon$. 🔍]
#only("3-")[2. There exists an $N$: Find a natural number $N$. 🔢]
#only("4-")[3. Such that for all $n >= N$: Consider all natural numbers $n$ greater than or equal to $N$. ⏰]
#only("5-")[4. $|a_n - L| < epsilon$: The absolute difference between $a_n$ and $L$ is less than the chosen $epsilon$. 📏]
#v(20pt)
#only("6-")[If these conditions are met, the sequence $a_n$ converges to $L$. 🎉]

#only("1")[#voiceover("Now let's go through the definition step by step.")]
#only("2")[#voiceover("First, we choose any positive number epsilon. This epsilon can be as small as we want.")]
#only("3")[#voiceover("Next, we need to find a natural number N. This N will depend on the specific sequence and the chosen epsilon.")]
#only("4")[#voiceover("Then, we consider all natural numbers n that are greater than or equal to N.")]
#only("5")[#voiceover("For all these n, the absolute difference between the n-th term of the sequence, a_n, and the limit L must be less than the epsilon we chose.")]
#only("6")[#voiceover("If we can find such an N for every epsilon greater than 0, then we can say that the sequence a_n converges to L.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```python
import matplotlib.pyplot as plt
import numpy as np

# Define the sequence
def a(n):
    return 1 / n

# Generate n values
n = np.arange(1, 100)

# Calculate sequence values
a_n = a(n)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo', label='a_n')
plt.axhline(y=0, color='r', linestyle='-', label='L = 0')

# Highlight the convergence
plt.annotate('', xy=(20, a(20)), xytext=(20, 0.2), arrowprops=dict(facecolor='green', shrink=0.05))
plt.annotate('$\epsilon$', xy=(20, 0.1), xytext=(22, 0.1))
plt.annotate('N', xy=(20, -0.02), xytext=(20, -0.02))

plt.grid(True)
plt.legend()
plt.title('Convergence of a_n = 1/n')
plt.xlabel('n')
plt.ylabel('a_n')
plt.show()

```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of the convergence definition. The blue dots represent the terms of the sequence a_n equals 1 over n. The red line is the limit L equals 0.")
]
#only("2")[
#voiceover("As n increases, the terms get closer and closer to 0. For any epsilon we choose, we can find an N such that for all n greater than N, the terms are within epsilon of 0.")
]
#only("3")[
#voiceover("In this example, for the chosen epsilon, all terms after the green arrow, which points at N, are within epsilon of the limit.")
]
#only("4")[
#voiceover("This is what it means for a sequence to converge according to the formal definition.")
]
]
]