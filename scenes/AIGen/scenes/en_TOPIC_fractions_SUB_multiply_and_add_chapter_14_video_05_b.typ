#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Subtracting Fractions]
  #v(40pt)

  #only("1-")[
    #align(center)[$ 4/5 - 2/5 $]
  ]

  #only("2-")[
    #align(center)[#text(fill:aqua)[⇓ Same denominator]]
  ]

  #only("3-")[
    #align(center)[$ (4-2)/5 $]
  ]

  #only("4-")[
    #align(center)[#text(fill:aqua)[⇓ Simplify numerator]]
  ]

  #only("5-")[
    #align(center)[$ 2/5 $]
  ]

  #only("1")[
    #voiceover("That's okay! Let's go through the correct solution step by step.")
  ]

  #only("2")[
    #voiceover("We start with four-fifths minus two-fifths. Notice that both fractions have the same denominator, which is five.")
  ]

  #only("3")[
    #voiceover("When subtracting fractions with the same denominator, we keep the denominator and subtract the numerators.")
  ]

  #only("4")[
    #voiceover("So, we subtract two from four in the numerator, while keeping five as the denominator.")
  ]

  #only("5")[
    #voiceover("This gives us two-fifths as our final answer.")
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

fig, (ax1, ax2, ax3) = plt.subplots(1, 3, figsize=(12, 4))

# First fraction: 4/5
ax1.add_patch(plt.Rectangle((0, 0), 1, 1, fill=False))
ax1.add_patch(plt.Rectangle((0, 0), 0.8, 1, fill=True, color='skyblue'))
ax1.text(0.5, -0.1, '4/5', ha='center', va='center')
ax1.axis('off')

# Second fraction: 2/5
ax2.add_patch(plt.Rectangle((0, 0), 1, 1, fill=False))
ax2.add_patch(plt.Rectangle((0, 0), 0.4, 1, fill=True, color='lightgreen'))
ax2.text(0.5, -0.1, '2/5', ha='center', va='center')
ax2.axis('off')

# Result: 2/5
ax3.add_patch(plt.Rectangle((0, 0), 1, 1, fill=False))
ax3.add_patch(plt.Rectangle((0, 0), 0.4, 1, fill=True, color='orange'))
ax3.text(0.5, -0.1, '2/5', ha='center', va='center')
ax3.axis('off')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Let's visualize this subtraction. The first rectangle represents four-fifths, filled in blue. The second represents two-fifths, filled in green. The last rectangle shows the result, two-fifths, filled in orange.")
  ]

  #only("2")[
    #voiceover("As you can see, when we subtract the green part (two-fifths) from the blue part (four-fifths), we're left with the orange part, which is two-fifths.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Key Takeaways]
  #v(40pt)

  #only("1-")[- When subtracting fractions with the same denominator: 🔢]
  #v(20pt)
  #only("2-")[  1️⃣ Keep the denominator]
  #v(20pt)
  #only("3-")[  2️⃣ Subtract the numerators]
  #v(20pt)
  #only("4-")[- Always check if simplification is possible ✅]

  #only("1")[
    #voiceover("Let's recap the key points for subtracting fractions with the same denominator.")
  ]

  #only("2")[
    #voiceover("First, we keep the denominator the same.")
  ]

  #only("3")[
    #voiceover("Second, we subtract the numerators.")
  ]

  #only("4")[
    #voiceover("And finally, always check if your result can be simplified further. In this case, two-fifths is already in its simplest form.")
  ]
]