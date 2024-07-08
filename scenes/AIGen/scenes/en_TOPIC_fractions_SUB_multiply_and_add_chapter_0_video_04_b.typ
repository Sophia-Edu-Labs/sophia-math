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
    $5/6 times 3/7$
  ]

  #v(20pt)

  #only("2-")[
    $= (5 dot 3)/(6 dot 7)$
  ]

  #v(20pt)

  #only("3-")[
    $= 15/42$
  ]

  #v(20pt)

  #only("4-")[
    $= 5/14$ (simplified)
  ]

  #only("1")[
    #voiceover("Let's review the correct solution step by step. We start with the multiplication of 5/6 and 3/7.")
  ]

  #only("2")[
    #voiceover("To multiply fractions, we multiply the numerators together and the denominators together. So, we multiply 5 by 3 in the numerator, and 6 by 7 in the denominator.")
  ]

  #only("3")[
    #voiceover("This gives us 15 over 42.")
  ]

  #only("4")[
    #voiceover("We can simplify this fraction by dividing both the numerator and denominator by their greatest common divisor, which is 3. 15 divided by 3 is 5, and 42 divided by 3 is 14. So our final, simplified answer is 5/14.")
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

def create_fraction_rectangle(ax, x, y, width, height, numerator, denominator, color):
    rect = plt.Rectangle((x, y), width, height, fill=False, edgecolor=color)
    ax.add_patch(rect)
    for i in range(1, denominator):
        ax.plot([x, x+width], [y+i*height/denominator, y+i*height/denominator], color=color, linestyle='--')
    for i in range(numerator):
        rect = plt.Rectangle((x, y+i*height/denominator), width, height/denominator, facecolor=color, alpha=0.3)
        ax.add_patch(rect)
    ax.text(x+width/2, y-0.05, f'{numerator}/{denominator}', ha='center', va='top')

fig, ax = plt.subplots(figsize=(10, 5))
ax.set_xlim(0, 3)
ax.set_ylim(0, 1)
ax.axis('off')

create_fraction_rectangle(ax, 0.1, 0.1, 0.8, 0.8, 5, 6, 'blue')
create_fraction_rectangle(ax, 1.1, 0.1, 0.8, 0.8, 3, 7, 'red')
create_fraction_rectangle(ax, 2.1, 0.1, 0.8, 0.8, 5, 14, 'green')

ax.text(1, 0.95, '×', ha='center', va='center', fontsize=20)
ax.text(2, 0.95, '=', ha='center', va='center', fontsize=20)

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
  #voiceover("Here's a visual representation of our fraction multiplication. The blue rectangle represents 5/6, where 5 out of 6 parts are shaded.")
]

#only("2")[
  #voiceover("The red rectangle represents 3/7, where 3 out of 7 parts are shaded.")
]

#only("3")[
  #voiceover("When we multiply these fractions, we get 5/14, represented by the green rectangle. Notice how 5 out of 14 parts are shaded, which is equivalent to our final answer.")
]

#only("4")[
  #voiceover("This visual helps us understand why multiplying fractions results in a smaller fraction of the whole. We're essentially taking a fraction of a fraction.")
]]