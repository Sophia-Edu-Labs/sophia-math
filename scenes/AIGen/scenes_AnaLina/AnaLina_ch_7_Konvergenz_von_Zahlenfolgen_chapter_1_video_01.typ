#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Sequence Convergence]
#v(40pt)
#only("1-")[- Sequence $(a_n)$ converges to $a$ if $a_n$ gets closer to $a$ as $n$ increases]
#v(20pt)
#only("2-")[- Formally: For every $ε > 0$, there exists an $N ∈ NN$, such that for all $n > N$, $|a_n - a| < ε$]
#v(40pt)
#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the sequence
def a(n):
    return 1 + 1/n

# Generate n values
n = np.arange(1, 100)

# Calculate sequence values
a_n = a(n)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n$')
plt.axhline(1, color='r', linestyle='--', label='Limit')
plt.xlabel('$n$')
plt.ylabel('$a_n$')
plt.title('Convergence of $a_n = 1 + 1/n$')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
]
#only("1")[
#voiceover("A sequence a_n converges to a value a if a_n gets closer and closer to a as n increases.")
]
#only("2")[
#voiceover("Formally, this means: For every positive epsilon, there exists a natural number N, such that for all n greater than N, the absolute value of a_n minus a is less than epsilon.")
]
#only("3")[
#voiceover("Here's an example: Consider the sequence a_n equals 1 plus 1 over n. As n increases, 1 over n gets smaller and smaller, so a_n gets closer and closer to 1. Therefore, this sequence converges to 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visual Interpretation]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the sequence
def a(n):
    return 1 + 1/n

# Generate n values
n = np.arange(1, 100)

# Calculate sequence values
a_n = a(n)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n$')
plt.axhline(1, color='r', linestyle='--', label='Limit')

# Highlight the epsilon-neighborhood
epsilon = 0.5
plt.axhline(1 + epsilon, color='g', linestyle=':', label='$1 + ε$')
plt.axhline(1 - epsilon, color='g', linestyle=':', label='$1 - ε$')
plt.fill_between(n, 1 - epsilon, 1 + epsilon, color='g', alpha=0.1)

plt.xlabel('$n$')
plt.ylabel('$a_n$')
plt.title('Convergence of $a_n = 1 + 1/n$')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
]
#only("1")[
#voiceover("Visually, convergence means that for any epsilon-neighborhood around the limit (the green area), the sequence eventually enters and stays within this neighborhood.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Sequence $a_n$ converges to $a$ if $a_n$ gets arbitrarily close to $a$ as $n → ∞$ 📏]
#v(20pt)
#only("2-")[- Formally: $∀ε > 0$, $∃N ∈ NN$: $∀n > N$, $|a_n - a| < ε$ 🧮]
#v(20pt)
#only("3-")[- Visually: Sequence eventually enters and stays within any epsilon-neighborhood of the limit 🎯]
#only("1")[
#voiceover("In summary, a sequence converges to a value a if it gets arbitrarily close to a as n tends to infinity.")
]
#only("2")[
#voiceover("Formally, this is expressed using epsilon and N: For every positive epsilon, there is a natural number N, such that for all n greater than N, the absolute value of a_n minus a is less than epsilon.")
]
#only("3")[
#voiceover("Visually, this means that the sequence eventually enters and stays within any epsilon-neighborhood of the limit.")
]
]