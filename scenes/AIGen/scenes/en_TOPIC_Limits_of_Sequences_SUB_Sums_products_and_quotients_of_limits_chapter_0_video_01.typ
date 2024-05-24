#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Limit of a Sequence]
#v(40pt)
#only("1-")[- Value terms approach as $n → ∞$ 📈]
#v(20pt)
#only("2-")[- Example: $a_n = 1/n$ → 0️ as $n → ∞$]
#v(20pt)
#only("3-")[#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the sequence
def a(n):
    return 1/n

# Generate n values
n = np.arange(1, 100)

# Calculate sequence values
a_n = a(n)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n = 1/n$')
plt.axhline(0, color='red', linestyle='--', label='Limit: 0')
plt.xlabel('$n$')
plt.ylabel('$a_n$')
plt.title('Sequence Convergence')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]]
#only("1")[
#voiceover("The limit of a sequence is the value that the terms of the sequence approach as the index n goes to infinity.")
]
#only("2")[
#voiceover("For example, consider the sequence a_n equals 1 over n. As n gets larger and larger, the terms of this sequence get closer and closer to 0.")
]
#only("3")[
#voiceover("We can visualize this convergence. The blue dots represent the terms of the sequence, and the red dashed line represents the limit value. As n increases, the terms get closer to the limit.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Formal Definition]
#v(40pt)
#only("1-")[- $lim_(n→∞) a_n = L$ if:]
#v(20pt)
#only("2-")[  - ∀ $ε>0$, ∃ $N ∈ NN$ such that]
#v(20pt)
#only("3-")[  - $|a_n - L| < ε$ whenever $n > N$]
#only("1")[
#voiceover("Formally, we say that the limit of a sequence a_n, as n approaches infinity, is L if:")
]
#only("2")[
#voiceover("For every positive real number epsilon, there exists a natural number N such that")
]
#only("3")[
#voiceover("the absolute value of a_n minus L is less than epsilon whenever n is greater than N.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Intuition]
#v(40pt)
#only("1-")[- Sequence gets arbitrarily close to limit 🎯]
#v(20pt)
#only("2-")[- Can make $|a_n - L|$ as small as desired 📏]
#v(20pt)
#only("3-")[- By choosing $n$ sufficiently large 🔢]
#only("1")[
#voiceover("Intuitively, this means that the sequence gets arbitrarily close to the limit value.")
]
#only("2")[
#voiceover("We can make the absolute difference between a_n and L as small as we want,")
]
#only("3")[
#voiceover("simply by choosing n to be sufficiently large.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Limit: value sequence approaches as $n → ∞$ 📈]
#v(20pt)
#only("2-")[- Formally: $∀ ε>0$, $∃ N$ such that $|a_n - L| < ε$ for $n > N$]
#v(20pt)
#only("3-")[- Intuitively: sequence gets arbitrarily close to limit 🎯]
#only("1")[
#voiceover("In summary, the limit of a sequence is the value that the sequence approaches as the index n goes to infinity.")
]
#only("2")[
#voiceover("Formally, this means that for any positive epsilon, we can find an N such that the absolute difference between a_n and L is less than epsilon for all n greater than N.")
]
#only("3")[
#voiceover("Intuitively, this means that the sequence gets arbitrarily close to the limit value as n increases.")
]
]