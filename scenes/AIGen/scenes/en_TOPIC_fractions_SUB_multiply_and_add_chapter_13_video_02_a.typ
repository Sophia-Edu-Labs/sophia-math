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
    #align(center)[
      $4/5 times 3/8 = ?$
    ]
  ]

  #v(20pt)

  #only("2-")[
    #align(center)[
      $4/5 times 3/8 = (4 times 3)/(5 times 8)$
    ]
  ]

  #v(20pt)

  #only("3-")[
    #align(center)[
      $= 12/40$
    ]
  ]

  #v(20pt)

  #only("4-")[
    #align(center)[
      $= 3/10$ (simplified)
    ]
  ]

  #only("1")[
    #voiceover("Great job on solving this problem! Let's walk through the solution step by step. We start with four-fifths multiplied by three-eighths.")
  ]

  #only("2")[
    #voiceover("To multiply fractions, we multiply the numerators together and the denominators together. So, we multiply 4 by 3 in the numerator, and 5 by 8 in the denominator.")
  ]

  #only("3")[
    #voiceover("This gives us twelve-fortieths.")
  ]

  #only("4")[
    #voiceover("We can simplify this fraction by dividing both the numerator and denominator by their greatest common factor, which is 4. Twelve divided by 4 is 3, and forty divided by 4 is 10, giving us the simplified fraction of three-tenths.")
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

# First fraction: 4/5
ax1.add_patch(plt.Rectangle((0, 0), 1, 1, fill=False))
ax1.add_patch(plt.Rectangle((0, 0), 0.8, 1, fill=True, color='skyblue'))
ax1.text(0.4, -0.1, '4/5', ha='center')
ax1.axis('off')

# Second fraction: 3/8
ax2.add_patch(plt.Rectangle((0, 0), 1, 1, fill=False))
ax2.add_patch(plt.Rectangle((0, 0), 0.375, 1, fill=True, color='lightgreen'))
ax2.text(0.5, -0.1, '3/8', ha='center')
ax2.axis('off')

# Result: 3/10
ax3.add_patch(plt.Rectangle((0, 0), 1, 1, fill=False))
ax3.add_patch(plt.Rectangle((0, 0), 0.3, 1, fill=True, color='salmon'))
ax3.text(0.5, -0.1, '3/10', ha='center')
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
    #voiceover("Let's visualize these fractions to better understand the multiplication. Here we have three rectangles.")
  ]

  #only("2")[
    #voiceover("The first rectangle represents four-fifths, shown in blue. The second represents three-eighths, in green.")
  ]

  #only("3")[
    #voiceover("When we multiply these fractions, we're essentially finding a fraction of a fraction. The result, three-tenths, is shown in the third rectangle in red.")
  ]

  #only("4")[
    #voiceover("Notice how the area of the red rectangle is smaller than both the blue and green rectangles, which makes sense as we're multiplying two proper fractions.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Key Takeaways]
  #v(40pt)

  #only("1-")[- Multiply numerators 🔢]
  #v(20pt)
  #only("2-")[- Multiply denominators 🔢]
  #v(20pt)
  #only("3-")[- Simplify if possible ✂️]

  #only("1")[
    #voiceover("Let's recap the key points for multiplying fractions. First, we multiply the numerators.")
  ]

  #only("2")[
    #voiceover("Then, we multiply the denominators.")
  ]

  #only("3")[
    #voiceover("Finally, we simplify the resulting fraction if possible. Remember, multiplying fractions often results in a smaller number, as we saw in our visual representation.")
  ]
]