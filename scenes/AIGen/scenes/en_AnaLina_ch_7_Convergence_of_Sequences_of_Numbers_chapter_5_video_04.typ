#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Divergent Sequences]
#v(40pt)
#only("1-")[- Sequences that do not approach a specific value]
#v(20pt)
#only("2-")[- Example 1: $a_n = n$]
#v(20pt)
#only("3-")[- Example 2: $b_n = (-1)^n n$]
#only("1")[
#voiceover("In this recap, we'll look at examples of divergent sequences. Divergent sequences are sequences that do not approach a specific value as n goes to infinity.")
]
#only("2")[
#voiceover("One example of a divergent sequence is a_n equals n. As n increases, the terms of this sequence increase without bound.")
]
#only("3")[
#voiceover("Another example is b_n equals negative 1 to the power of n times n. This sequence oscillates between positive and negative values while increasing in magnitude.")
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

n = np.arange(1, 11)
a_n = n
b_n = (-1)**n * n

plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', label='$a_n = n$')
plt.plot(n, b_n, 'ro-', label='$b_n = (-1)^n n$')
plt.xlabel('n')
plt.ylabel('Sequence Value')
plt.title('Divergent Sequences')
plt.legend()
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of these two divergent sequences. The blue line represents a_n equals n, which increases linearly. The red line represents b_n equals negative 1 to the power of n times n, which oscillates while increasing in magnitude.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Divergent sequences do not approach a specific value 📈]
#v(20pt)
#only("2-")[- $a_n = n$ increases without bound 🔼]
#v(20pt)
#only("3-")[- $b_n = (-1)^n n$ oscillates and increases in magnitude 🌊]
#only("1")[
#voiceover("To summarize, divergent sequences do not approach a specific value as n goes to infinity.")
]
#only("2")[
#voiceover("The sequence a_n equals n is an example of a sequence that increases without bound.")
]
#only("3")[
#voiceover("The sequence b_n equals negative 1 to the power of n times n is an example of a sequence that oscillates and increases in magnitude.")
]
]