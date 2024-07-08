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
    $5/9 times 2/3$
  ]

  #v(20pt)

  #only("2-")[
    $= (5 dot 2) / (9 dot 3)$
  ]

  #v(20pt)

  #only("3-")[
    $= 10 / 27$
  ]

  #only("1")[
    #voiceover("Not quite. Let's walk through the correct solution step-by-step.")
  ]

  #only("2")[
    #voiceover("To multiply fractions, we multiply the numerators together and the denominators together. So, we multiply 5 by 2 in the numerator, and 9 by 3 in the denominator.")
  ]

  #only("3")[
    #voiceover("This gives us 10 over 27. And that's our final answer! 10/27 is the correct result of multiplying 5/9 by 2/3.")
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

def draw_rectangle(ax, x, y, width, height, color):
    rect = plt.Rectangle((x, y), width, height, facecolor=color, edgecolor='black')
    ax.add_patch(rect)

fig, (ax1, ax2, ax3) = plt.subplots(1, 3, figsize=(15, 5))

# First fraction: 5/9
draw_rectangle(ax1, 0, 0, 3, 3, 'white')
draw_rectangle(ax1, 0, 0, 3, 5/3, 'lightblue')
ax1.set_xlim(0, 3)
ax1.set_ylim(0, 3)
ax1.set_title('5/9')
ax1.axis('off')

# Second fraction: 2/3
draw_rectangle(ax2, 0, 0, 3, 3, 'white')
draw_rectangle(ax2, 0, 0, 2, 3, 'lightgreen')
ax2.set_xlim(0, 3)
ax2.set_ylim(0, 3)
ax2.set_title('2/3')
ax2.axis('off')

# Result: 10/27
draw_rectangle(ax3, 0, 0, 9, 3, 'white')
draw_rectangle(ax3, 0, 0, 10/3, 3, 'lightyellow')
ax3.set_xlim(0, 9)
ax3.set_ylim(0, 3)
ax3.set_title('10/27')
ax3.axis('off')

plt.tight_layout()
plt.show()
        ```,
        width: 360pt
        ),
      )
    ]
  ]

  #only("1")[
    #voiceover("Let's visualize this multiplication. The first rectangle represents 5/9, where 5 out of 9 parts are filled.")
  ]

  #only("2")[
    #voiceover("The second rectangle shows 2/3, with 2 out of 3 parts filled.")
  ]

  #only("3")[
    #voiceover("When we multiply these fractions, we're essentially taking 2/3 of 5/9. The result, 10/27, is shown in the third rectangle. As you can see, it's a smaller portion, which makes sense as we're multiplying two fractions less than 1.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Why This Works]
  #v(40pt)

  #only("1-")[- Multiply numerators: $5 times 2 = 10$]
  #v(20pt)
  #only("2-")[- Multiply denominators: $9 times 3 = 27$]
  #v(20pt)
  #only("3-")[- Result: $10/27$]

  #only("1")[
    #voiceover("Let's understand why this method works. First, we multiply the numerators. 5 times 2 equals 10.")
  ]

  #only("2")[
    #voiceover("Then, we multiply the denominators. 9 times 3 equals 27.")
  ]

  #only("3")[
    #voiceover("This gives us our result of 10/27. This method works because when we multiply fractions, we're essentially finding a fraction of a fraction, which results in a smaller part of the whole.")
  ]
]