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
$3/4 times 5/6 = ?$
]

#v(20pt)

#only("2-")[
$3/4 times 5/6 = (3 times 5)/(4 times 6)$
]

#v(20pt)

#only("3-")[
$= 15/24$
]

#v(20pt)

#only("4-")[
$= 5/8$ (simplified)
]

#only("1")[
#voiceover("Let's review the correct solution step by step. We start with three-fourths times five-sixths.")
]

#only("2")[
#voiceover("To multiply fractions, we multiply the numerators together and the denominators together. So, we multiply 3 by 5 in the numerator, and 4 by 6 in the denominator.")
]

#only("3")[
#voiceover("This gives us fifteen twenty-fourths. This is our correct answer, but we can simplify it further.")
]

#only("4")[
#voiceover("To simplify, we divide both the numerator and denominator by their greatest common divisor, which is 3. This gives us our final simplified answer: five-eighths.")
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
                                 facecolor=color, alpha=0.5)
            ax.add_patch(rect)
    
    ax.text(0.5, -0.1, f'{numerator}/{denominator}', ha='center', va='center', fontsize=12)

draw_fraction(ax1, 3, 4, 'red')
ax1.set_title('3/4', fontsize=14)

draw_fraction(ax2, 5, 6, 'blue')
ax2.set_title('5/6', fontsize=14)

draw_fraction(ax3, 5, 8, 'purple')
ax3.set_title('5/8 (result)', fontsize=14)

plt.tight_layout()
plt.show()

```,
width: 360pt),
caption: [],
)
]
]

#only("1")[
#voiceover("Let's visualize our fractions. Here we have three-fourths represented in red.")
]

#only("2")[
#voiceover("And here's five-sixths in blue.")
]

#only("3")[
#voiceover("When we multiply these fractions, we get five-eighths, shown here in purple.")
]

#only("4")[
#voiceover("Notice how the resulting fraction is smaller than both original fractions. This is because we're finding a fraction of a fraction, which results in a smaller quantity.")
]
]