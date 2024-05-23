#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Divergence to Infinity]
#v(40pt)
#only("1-")[- Formal definition: ]
#v(20pt)
#only("2-")[$a_n$ diverges to $infinity$ if $forall M > 0, exists N$ such that $forall n >= N, a_n > M$]
#only("1")[
#voiceover("Let's recap the formal definition of divergence to infinity.")
]
#only("2")[
#voiceover("A sequence a_n diverges to infinity if for every M greater than 0, there exists an N such that for all n greater than or equal to N, a_n is greater than M.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization 📈]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a sequence that diverges to infinity
n = np.arange(1, 11)
a_n = n**2

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(n, a_n, 'bo-', linewidth=2, markersize=10)
plt.axhline(y=0, color='black', linestyle='-', linewidth=1)
plt.axvline(x=0, color='black', linestyle='-', linewidth=1)

# Add labels and title
plt.xlabel('n', fontsize=14)
plt.ylabel('a_n', fontsize=14)
plt.title('Sequence Diverging to Infinity', fontsize=16)

# Add legend
plt.legend(['a_n = n^2'], loc='upper left', fontsize=12)

# Add grid
plt.grid(True)

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of a sequence diverging to infinity. As n increases, the terms a_n grow without bound.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Points 🔑]
#v(40pt)
#only("1-")[- Sequence terms increase without bound as $n$ goes to $infinity$]
#v(20pt)
#only("2-")[- For any large $M$, can find $N$ such that $a_n > M$ for all $n >= N$]
#v(20pt)
#only("3-")[- Example: $a_n = n^2$ diverges to $infinity$]
#only("1")[
#voiceover("The key points to remember are:")
]
#only("2")[
#voiceover("First, the sequence terms increase without bound as n goes to infinity.")
]
#only("3")[
#voiceover("Second, for any large M, we can always find an N such that a_n is greater than M for all n greater than or equal to N.")
]
#only("4")[
#voiceover("For example, the sequence a_n equals n squared diverges to infinity.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap 🎬]
#v(40pt)
#only("1-")[- Divergence to $infinity$: $a_n$ grows without bound]
#v(20pt)
#only("2-")[- Formal definition: $forall M > 0, exists N$ such that $forall n >= N, a_n > M$]
#v(20pt)
#only("3-")[- Visualization: terms increase as $n$ increases]
#only("1")[
#voiceover("In summary, divergence to infinity means the sequence terms grow without bound.")
]
#only("2")[
#voiceover("The formal definition states that for every M greater than 0, there exists an N such that for all n greater than or equal to N, a_n is greater than M.")
]
#only("3")[
#voiceover("And visually, we see the terms increasing as n increases.")
]
]