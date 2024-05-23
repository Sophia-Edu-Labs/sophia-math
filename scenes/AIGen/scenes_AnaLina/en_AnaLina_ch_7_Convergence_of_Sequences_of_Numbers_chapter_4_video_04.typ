#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Divergence to Infinity 🚀]
#v(40pt)
#only("1-")[- A sequence $a_n$ diverges to infinity if its terms increase without bound as $n$ goes to infinity]
#only("1")[
#voiceover("A sequence a sub n diverges to infinity if its terms increase without bound as n goes to infinity.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example 📈]
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
    return n

# Generate n values
n = np.arange(1, 11)

# Calculate the sequence values
a_n = a(n)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n = n$')
plt.legend(fontsize=14)
plt.title('Sequence Diverging to Infinity', fontsize=16)
plt.xlabel('$n$', fontsize=14)
plt.ylabel('$a_n$', fontsize=14)
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Consider the sequence a sub n equals n. As n increases, the terms of the sequence keep growing larger and larger without any upper limit.")
]
]


No corrections are needed.]

#slide()[
#text(size: 30pt, weight: "bold")[Formal Definition 📜]
#v(40pt)
#only("1-")[- A sequence $a_n$ diverges to infinity if for every $M > 0$, there exists an $N$ such that for all $n >= N$, $a_n > M$.]
#only("1")[
#voiceover("Formally, a sequence a sub n diverges to infinity if for every M greater than 0, there exists an N such that for all n greater than or equal to N, a sub n is greater than M.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap 🎬]
#v(40pt)
#only("1-")[- Divergence to infinity means terms increase without bound 📈]
#v(20pt)
#only("2-")[- Example: $a_n = n$ 🔢]
#v(20pt)
#only("3-")[- Formal definition: for every $M > 0$, there exists an $N$ such that for all $n >= N$, $a_n > M$ 📜]
#only("1")[
#voiceover("To recap, divergence to infinity means the terms of a sequence increase without bound.")
]
#only("2")[
#voiceover("An example is the sequence a sub n equals n.")
]
#only("3")[
#voiceover("And the formal definition states that for every M greater than 0, there exists an N such that for all n greater than or equal to N, a sub n is greater than M.")
]
]