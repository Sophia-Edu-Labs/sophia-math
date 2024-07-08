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
$3/4 times 2/5 = ?$
]

#v(20pt)

#only("2-")[
$= (3 dot 2) / (4 dot 5)$
]

#v(20pt)

#only("3-")[
$= 6 / 20$
]

#v(20pt)

#only("4-")[
$= 3 / 10$ (simplified)
]

#only("1")[
#voiceover("Great job! That's the correct answer. Let's go through the solution step by step. We start with our problem: three-fourths times two-fifths.")
]

#only("2")[
#voiceover("To multiply fractions, we multiply the numerators together and the denominators together. So, we multiply 3 by 2 for the new numerator, and 4 by 5 for the new denominator.")
]

#only("3")[
#voiceover("This gives us six over twenty.")
]

#only("4")[
#voiceover("Now, we can simplify this fraction. Both 6 and 20 are divisible by 2, so we divide both the numerator and denominator by 2. This gives us our final answer: three-tenths.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visual Representation]
#v(40pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

fig, (ax1, ax2, ax3) = plt.subplots(1, 3, figsize=(15, 5))

def draw_fraction(ax, numerator, denominator, color):
    ax.set_xlim(0, 1)
    ax.set_ylim(0, 1)
    ax.set_aspect('equal')
    ax.axis('off')
    
    for i in range(denominator):
        rect = plt.Rectangle((i/denominator, 0), 1/denominator, 1, 
                             fill=False, edgecolor='black')
        ax.add_patch(rect)
        if i < numerator:
            rect = plt.Rectangle((i/denominator, 0), 1/denominator, 1, 
                                 fill=True, facecolor=color, alpha=0.5)
            ax.add_patch(rect)
    
    ax.text(0.5, -0.1, f'{numerator}/{denominator}', ha='center', va='center', fontsize=14)

draw_fraction(ax1, 3, 4, 'blue')
ax1.set_title('3/4', fontsize=16)

draw_fraction(ax2, 2, 5, 'red')
ax2.set_title('2/5', fontsize=16)

draw_fraction(ax3, 3, 10, 'purple')
ax3.set_title('3/10', fontsize=16)

plt.tight_layout()
plt.show()

```,
width: 360pt),
caption: [],
)
]
]

#only("1")[
#voiceover("Let's visualize our fractions. Here we have three-fourths represented by the blue rectangle,")
]

#only("2")[
#voiceover("two-fifths represented by the red rectangle,")
]

#only("3")[
#voiceover("and our result, three-tenths, represented by the purple rectangle.")
]

#only("4")[
#voiceover("Notice how the area of the purple rectangle is indeed the product of the areas of the blue and red rectangles.")
]
]