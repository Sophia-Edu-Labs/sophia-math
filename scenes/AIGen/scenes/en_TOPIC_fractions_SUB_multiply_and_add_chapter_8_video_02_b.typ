#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Not quite. Let's go through the correct solution step by step to understand how to add these fractions.")
  ]

  #text(size: 30pt, weight: "bold")[Adding Fractions with Same Denominators]
  #v(40pt)

  #only("2-")[
    $4/10 + 3/10$
  ]

  #only("2")[
    #voiceover("We start with our problem: four tenths plus three tenths.")
  ]

  #only("3-")[
    #align(center)[#text(fill:aqua)[⇓ Same denominators]]
  ]

  #only("3")[
    #voiceover("Notice that both fractions have the same denominator, ten. This makes our addition much simpler!")
  ]

  #only("4-")[
    $(4+3)/10$
  ]

  #only("4")[
    #voiceover("When adding fractions with the same denominator, we keep the denominator the same and add only the numerators. So, we add four plus three in the numerator.")
  ]

  #only("5-")[
    $7/10$
  ]

  #only("5")[
    #voiceover("Four plus three equals seven, so our final answer is seven tenths.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Why This Works]
  #v(40pt)

  #only("1-")[
    - Same units 📏
  ]

  #only("1")[
    #voiceover("This method works because we're dealing with the same units. Think of it like adding 4 slices of a 10-slice pizza to 3 slices of the same pizza.")
  ]

  #only("2-")[
    - Denominator stays the same 🔢
  ]

  #only("2")[
    #voiceover("The denominator stays the same because we're not changing the size of each part, just counting how many we have in total.")
  ]

  #only("3-")[
    - Only numerators add ➕
  ]

  #only("3")[
    #voiceover("We only add the numerators because they represent the count of these same-sized parts.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Visualizing the Addition]
  #v(40pt)

  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
import numpy as np

def draw_fraction(ax, fraction, position, color):
    numerator, denominator = fraction
    for i in range(denominator):
        if i < numerator:
            ax.add_patch(plt.Rectangle((position + i/denominator, 0), 1/denominator, 1, fill=True, color=color))
        ax.add_patch(plt.Rectangle((position + i/denominator, 0), 1/denominator, 1, fill=False, edgecolor='black'))

fig, ax = plt.subplots(figsize=(10, 2))
ax.set_xlim(0, 2)
ax.set_ylim(0, 1)
ax.axis('off')

draw_fraction(ax, (4, 10), 0, 'lightblue')
draw_fraction(ax, (3, 10), 1, 'lightgreen')

plt.text(0.5, -0.1, '4/10', ha='center', va='center')
plt.text(1.5, -0.1, '3/10', ha='center', va='center')
plt.text(1, 1.1, '+', ha='center', va='center', fontsize=20)
plt.text(1, -0.3, '= 7/10', ha='center', va='center', fontsize=16)

plt.tight_layout()
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Here's a visual representation of our addition. The blue rectangles represent four tenths, and the green rectangles represent three tenths. When we combine them, we get seven tenths in total.")
  ]

  #only("2")[
    #voiceover("This visual helps us understand why we can simply add the numerators when the denominators are the same. We're just counting the total number of shaded parts out of ten.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Key Takeaways]
  #v(40pt)

  #only("1-")[
    - When denominators are the same, add numerators 🧮
  ]

  #only("1")[
    #voiceover("The key takeaway is that when fractions have the same denominator, we can simply add the numerators and keep the denominator the same.")
  ]

  #only("2-")[
    - Denominator represents the whole 🍕
  ]

  #only("2")[
    #voiceover("Remember, the denominator represents how many parts the whole is divided into. As long as this stays the same, we're working with the same-sized pieces.")
  ]

  #only("3-")[
    - Visualize to understand 👁️
  ]

  #only("3")[
    #voiceover("Visualizing fractions, like we did with the rectangles, can really help in understanding what's happening when we add fractions.")
  ]
]