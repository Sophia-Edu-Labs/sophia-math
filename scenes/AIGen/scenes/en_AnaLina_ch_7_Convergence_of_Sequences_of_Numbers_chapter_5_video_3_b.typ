#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Exercise]
#v(40pt)
#only("1-")[Determine if the sequence $b_n = (-1)^n n$ diverges to infinity.]
// The exercise is stated on slide 1 and onward
#only("1")[
#voiceover("Great job! You correctly determined that the sequence b sub n equals negative 1 to the power of n times n does not diverge to infinity. Let's see why.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Sequence Terms]
#v(40pt)
#only("1-")[
- $b_1 = (-1)^1 · 1 = -1$
- $b_2 = (-1)^2 · 2 = 2$  
- $b_3 = (-1)^3 · 3 = -3$
- $b_4 = (-1)^4 · 4 = 4$
]
// The first few terms of the sequence are shown on slide 1 and onward
#only("1")[
#voiceover("First, let's look at the first few terms of the sequence. b sub 1 is negative 1 to the power of 1 times 1, which is negative 1. b sub 2 is negative 1 squared times 2, which is 2. b sub 3 is negative 1 cubed times 3, which is negative 3. And b sub 4 is negative 1 to the power of 4 times 4, which is 4.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Oscillation]
#v(40pt)
#only("1-")[
- The sequence oscillates between positive and negative values 📈📉
- The absolute value of the terms increases: $|b_n| = n$ 📈
]
// The oscillating behavior and increasing absolute value are pointed out on slide 1 and onward
#only("1")[
#voiceover("We can see that the sequence oscillates between positive and negative values, because negative 1 to an even power is 1, and to an odd power is negative 1. At the same time, the absolute value of the terms, which is just n, increases.")
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

# Generate the sequence
n = np.arange(1, 11)
b_n = (-1)**n * n

# Create the plot
plt.figure(figsize=(8, 6))
plt.stem(n, b_n, linefmt='b-', markerfmt='bo', basefmt='k--')
plt.axhline(0, color='black', lw=0.5)
plt.ylim(-11, 11)
plt.title('Sequence $b_n = (-1)^n n$')
plt.xlabel('n')
plt.ylabel('$b_n$')
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
// The sequence is visualized using a stem plot on slide 1 and onward
#only("1")[
#voiceover("Here's a plot of the first 10 terms of the sequence. The blue line shows how the sequence oscillates between positive and negative values, while the absolute value of the terms, shown by the height of the blue dots, increases.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Divergence to Infinity]
#v(40pt)
#only("1-")[
- For a sequence to diverge to infinity, its terms must increase without bound 📈
- But $b_n$ does not increase without bound, it oscillates 📈📉
]
// The conditions for divergence to infinity are stated and contrasted with the behavior of b_n on slide 1 and onward
#only("1")[
#voiceover("Now, for a sequence to diverge to infinity, its terms must increase without bound. That means they must keep getting larger and larger, without any upper limit. But that's not what b sub n does. It oscillates, going back and forth between positive and negative values.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[
- The sequence $b_n = (-1)^n n$ does not diverge to infinity ❌
- It diverges, but not to infinity, because it oscillates with increasing absolute value 📈📉
]
// The conclusion that b_n does not diverge to infinity, but diverges in a different way, is stated on slide 1 and onward
#only("1")[
#voiceover("Therefore, we can conclude that the sequence b sub n equals negative 1 to the power of n times n does not diverge to infinity. It does diverge, in the sense that it does not approach any finite limit, but it does not diverge to infinity, because it does not increase without bound. Instead, it oscillates with increasing absolute value.")
]
]