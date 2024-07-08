#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Multiplying Fractions]
#v(40pt)

#only("1-")[
$7/8 times 4/9 = ?$
]

#v(20pt)

#only("2-")[
$7/8 times 4/9 = (7 dot 4)/(8 dot 9)$
]

#v(20pt)

#only("3-")[
$= 28/72$
]

#v(20pt)

#only("4-")[
$= 7/18$ (simplified)
]

#only("1")[
#voiceover("Let's review the correct solution step by step. We start with seven-eighths multiplied by four-ninths.")
]

#only("2")[
#voiceover("To multiply fractions, we multiply the numerators together and the denominators together. So, we multiply 7 by 4 in the numerator, and 8 by 9 in the denominator.")
]

#only("3")[
#voiceover("This gives us twenty-eight over seventy-two.")
]

#only("4")[
#voiceover("We can simplify this fraction by dividing both the numerator and denominator by their greatest common divisor, which is 4. This gives us our final answer: seven-eighteenths.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visual Representation]
#v(20pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

fig, (ax1, ax2, ax3) = plt.subplots(1, 3, figsize=(15, 5))

def draw_fraction(ax, numerator, denominator, color):
    parts = np.linspace(0, 1, denominator+1)
    for i in range(numerator):
        ax.add_patch(plt.Rectangle((parts[i], 0), 1/denominator, 1, 
                                   facecolor=color, edgecolor='black'))
    for i in range(denominator):
        ax.axvline(parts[i+1], color='black', linewidth=0.5)
    ax.set_xlim(0, 1)
    ax.set_ylim(0, 1)
    ax.set_aspect('equal')
    ax.axis('off')

draw_fraction(ax1, 7, 8, 'skyblue')
ax1.set_title('7/8')

draw_fraction(ax2, 4, 9, 'lightgreen')
ax2.set_title('4/9')

draw_fraction(ax3, 7, 18, 'salmon')
ax3.set_title('7/18')

plt.tight_layout()
plt.show()

```,
width: 360pt),
caption: [],
)
]
]

#only("1")[
#voiceover("Here's a visual representation of our fractions. The first rectangle shows seven-eighths, with seven out of eight parts shaded.")
]

#only("2")[
#voiceover("The second rectangle represents four-ninths, with four out of nine parts shaded.")
]

#only("3")[
#voiceover("And the last rectangle shows our result, seven-eighteenths. Notice how it's a smaller portion than seven-eighths, which makes sense because we're multiplying by a fraction less than one.")
]
]