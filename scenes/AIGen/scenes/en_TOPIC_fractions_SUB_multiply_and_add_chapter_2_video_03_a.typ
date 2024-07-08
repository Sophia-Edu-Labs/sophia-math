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
    $6/7 times 2/3$
  ]

  #v(20pt)

  #only("2-")[
    $= (6 dot 2) / (7 dot 3)$
  ]

  #v(20pt)

  #only("3-")[
    $= 12 / 21$
  ]

  #v(20pt)

  #only("4-")[
    $= 4 / 7$ (simplified)
  ]

  #only("1")[
    #voiceover("Great job! That's the correct answer. Let's go through the solution step by step. We start with six-sevenths times two-thirds.")
  ]

  #only("2")[
    #voiceover("To multiply fractions, we multiply the numerators together and the denominators together. So, we multiply 6 by 2 in the numerator, and 7 by 3 in the denominator.")
  ]

  #only("3")[
    #voiceover("This gives us twelve twenty-firsts.")
  ]

  #only("4")[
    #voiceover("We can simplify this fraction by dividing both the numerator and denominator by their greatest common divisor, which is 3. Twelve divided by 3 is 4, and twenty-one divided by 3 is 7. So our final, simplified answer is four-sevenths.")
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
    parts = np.linspace(0, 1, denominator+1)
    for i in range(numerator):
        ax.add_patch(plt.Rectangle((parts[i], 0), 1/denominator, 1, 
                                   facecolor=color, edgecolor='black'))
    for i in range(denominator):
        ax.axvline(parts[i+1], color='black', linewidth=0.5)
    ax.set_xlim(0, 1)
    ax.set_ylim(0, 1)
    ax.axis('off')

draw_fraction(ax1, 6, 7, 'skyblue')
ax1.set_title('6/7')

draw_fraction(ax2, 2, 3, 'lightgreen')
ax2.set_title('2/3')

draw_fraction(ax3, 4, 7, 'salmon')
ax3.set_title('4/7')

plt.tight_layout()
plt.show()
        ```,
        width: 360pt
      ),
      caption: [],
    )
  ]
]

#only("1")[
  #voiceover("Let's visualize these fractions. The first rectangle represents six-sevenths, with six out of seven parts shaded.")
]

#only("2")[
  #voiceover("The second rectangle shows two-thirds, with two out of three parts shaded.")
]

#only("3")[
  #voiceover("When we multiply these fractions, we end up with four-sevenths, as shown in the third rectangle. This is equivalent to twelve twenty-firsts, but simplified.")
]

#only("4")[
  #voiceover("This visual representation helps us see how multiplying fractions results in a fraction of the original fractions, which is why our answer is smaller than both six-sevenths and two-thirds.")
]]