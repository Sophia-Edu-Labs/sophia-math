#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great, you recognized that correctly! Let's go through the solution step by step together.")
]
#text(size: 30pt, weight: "bold")[Multiplication of Fractions]
#v(40pt)
#only("2-")[- Step 1: Write the problem $2 dot 3/4$]
#only("2")[
#voiceover("We start with the problem: two times three-fourths.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[- Step 1: Multiply the numerators $2 dot 3$]
#v(20pt)
#only("2-")[- Step 2: Multiply the denominators $1 dot 4$]
#v(20pt)
#only("3-")[- Step 3: Simplify the fraction $6/4$]
#v(20pt)
#only("4-")[- Step 4: Convert to mixed number $1 1/2$]
#only("1")[
#voiceover("First, we multiply the numerators: two times three.")
]
#only("2")[
#voiceover("Next, we multiply the denominators: one times four.")
]
#only("3")[
#voiceover("Then, we simplify the fraction: six-fourths.")
]
#only("4")[
#voiceover("Finally, we convert the improper fraction to a mixed number: one and one-half.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visual Representation]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

fig, ax = plt.subplots()
ax.barh(['2'], [3/4], color='skyblue', edgecolor='black', label='3/4')
ax.barh(['2'], [1/4], left=[3/4], color='lightgrey', edgecolor='black', label='1/4')

ax.set_xlim(0, 1)
ax.set_xticks([0, 1/4, 1/2, 3/4, 1])
ax.set_xticklabels(['0', '1/4', '1/2', '3/4', '1'])
ax.set_yticks(['2'])
ax.set_yticklabels(['2'])

ax.set_xlabel('Fraction')
ax.set_title('Multiplication of 2 and 3/4')

# Adding labels to the bars
for i, v in enumerate([3/4, 1/4]):
    ax.text(v/2 + sum([3/4][:i]), '2', f'{v:.2f}', color='black', ha='center', va='center')

ax.legend()

plt.show()

```,
width: 360pt),
)
]
]
]
#only("1")[
#voiceover("Here is a visual representation of multiplying two by three-fourths. The blue part represents three-fourths of two, and the grey part completes the whole.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]
#v(40pt)
#only("1-")[
#text(size: 30pt, weight: "bold")[Answer: $6/4$ or $1 1/2$]
]
#only("1")[
#voiceover("So, the final answer is six-fourths or one and one-half.")
]
]