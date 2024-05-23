#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Divergence to Infinity]
#v(40pt)
#only("1-")[- Sequence $a_n$ diverges to $infinity$ if:]
#v(20pt)
#only("2-")[  For every $M > 0$, there exists an $N$ such that]
#v(20pt)
#only("3-")[  For all $n >= N$, $a_n > M$ 🚀]
#only("1")[
#voiceover("A sequence a_n diverges to infinity if:")
]
#only("2")[
#voiceover("For every real number M greater than 0, there exists a natural number N such that")
]
#only("3")[
#voiceover("For all n greater than or equal to N, a_n is greater than M. In other words, the terms of the sequence eventually become and remain larger than any given positive number.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
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
    return n**2

# Generate n values
n = np.arange(1, 11)

# Calculate a_n values
a_n = a(n)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='a_n = n^2')
plt.xlabel('n')
plt.ylabel('a_n')
plt.title('Sequence Diverging to Infinity')
plt.legend()
plt.grid(True)

# Add annotations
plt.annotate('M', xy=(0, 25), xytext=(-1, 25), arrowprops=dict(facecolor='red', shrink=0.05))
plt.annotate('N', xy=(5, 0), xytext=(5, -20), arrowprops=dict(facecolor='green', shrink=0.05))
plt.annotate('a_n > M for all n >= N', xy=(7, 60), xytext=(4, 80), arrowprops=dict(facecolor='orange', shrink=0.05))

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Let's visualize this definition. Consider the sequence a_n equals n squared. No matter how large we choose M, represented by the red line, we can always find an N, shown by the green line, such that for all n greater than or equal to N, a_n is greater than M, as indicated by the orange annotation.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[- Let $a_n = 2n$]
#v(20pt)
#only("2-")[- Choose any $M > 0$, e.g., $M = 100$]
#v(20pt)
#only("3-")[- Find $N$ such that $2N > 100$]
#v(20pt)
#only("4-")[- $N = 51$ works 👍]
#v(20pt)
#only("5-")[- For all $n >= 51$, $2n > 100$]
#only("1")[
#voiceover("Let's consider an example. Let a_n equal 2n.")
]
#only("2")[
#voiceover("Choose any M greater than 0, say M equals 100.")
]
#only("3")[
#voiceover("We need to find an N such that 2N is greater than 100.")
]
#only("4")[
#voiceover("N equals 51 works, because 2 times 51 is 102, which is greater than 100.")
]
#only("5")[
#voiceover("Therefore, for all n greater than or equal to 51, 2n is greater than 100. This shows that the sequence 2n diverges to infinity.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Divergence to $infinity$: $a_n$ becomes arbitrarily large 📈]
#v(20pt)
#only("2-")[- Formal definition: For every $M > 0$, $exists N$ such that $a_n > M$ for all $n >= N$]
#v(20pt)
#only("3-")[- Intuition: Terms of $a_n$ eventually exceed any positive number 🎯]
#only("1")[
#voiceover("In summary, a sequence diverges to infinity if its terms become arbitrarily large.")
]
#only("2")[
#voiceover("The formal definition states that for every positive real number M, there exists a natural number N such that a_n is greater than M for all n greater than or equal to N.")
]
#only("3")[
#voiceover("Intuitively, this means that the terms of the sequence eventually exceed any given positive number, growing without bound.")
]
]