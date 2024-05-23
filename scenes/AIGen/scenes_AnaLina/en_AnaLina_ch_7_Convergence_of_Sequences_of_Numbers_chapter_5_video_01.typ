#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Divergent Sequences]
#v(40pt)
#only("1-")[- Sequences that do not converge to a specific value]
#v(20pt)
#only("2-")[- Terms increase without bound or oscillate]
#only("1")[
#voiceover("Divergent sequences are sequences that do not converge to a specific value as n goes to infinity.")
]
#only("2")[
#voiceover("Instead, their terms either increase without bound or oscillate.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example 1: $a_n = n$]
#v(40pt)
#only("1-")[- Terms: 1, 2, 3, 4, ...]
#v(20pt)
#only("2-")[- Increases without bound as $n → ∞$]
#v(20pt)
#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 11)
a_n = n

plt.figure(figsize=(6, 4))
plt.plot(n, a_n, 'bo-', label='$a_n = n$')
plt.xlabel('$n$')
plt.ylabel('$a_n$')
plt.title('Divergent Sequence: $a_n = n$')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Let's look at the sequence a_n equals n. The terms of this sequence are 1, 2, 3, 4, and so on.")
]
#only("2")[
#voiceover("As n increases, the terms of the sequence increase without bound.")
]
#only("3")[
#voiceover("Here's a plot of the sequence. You can see that as n grows, the terms of the sequence keep increasing, diverging to infinity.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example 2: $b_n = (-1)^n n$]
#v(40pt)
#only("1-")[- Terms: -1, 2, -3, 4, ...]
#v(20pt)
#only("2-")[- Oscillates and increases in magnitude as $n → ∞$]
#v(20pt)
#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

n = np.arange(1, 11)
b_n = (-1)**n * n

plt.figure(figsize=(6, 4))
plt.plot(n, b_n, 'ro-', label='$b_n = (-1)^n n$')
plt.xlabel('$n$')
plt.ylabel('$b_n$')
plt.title('Divergent Sequence: $b_n = (-1)^n n$')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Now, let's consider the sequence b_n equals negative 1 to the power of n times n. The terms of this sequence are negative 1, 2, negative 3, 4, and so on.")
]
#only("2")[
#voiceover("As n increases, the terms of the sequence oscillate between positive and negative values, and their magnitude increases without bound.")
]
#only("3")[
#voiceover("Here's a plot of the sequence. You can see that the terms alternate between positive and negative values, and their absolute values keep increasing as n grows.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Divergent sequences do not converge]
#v(20pt)
#only("2-")[- Examples: $a_n = n$ and $b_n = (-1)^n n$]
#v(20pt)
#only("3-")[- Terms increase without bound or oscillate]
#only("1")[
#voiceover("In summary, divergent sequences are sequences that do not converge to a specific value.")
]
#only("2")[
#voiceover("We looked at two examples: a_n equals n, and b_n equals negative 1 to the power of n times n.")
]
#only("3")[
#voiceover("In these sequences, the terms either increase without bound or oscillate and increase in magnitude as n goes to infinity.")
]
]