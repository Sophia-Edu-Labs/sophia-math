#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Adding Fractions]
  #v(40pt)

  #only("1-")[#text(size: 24pt)[Exercise: $3/8 + 1/8$]]
  #v(20pt)

  #only("2-")[#text(size: 20pt)[Step 1: Identify common denominator]]
  #only("3-")[#text(size: 20pt)[Step 2: Add numerators]]
  #only("4-")[#text(size: 20pt)[Step 3: Simplify if possible]]

  #only("1")[
    #voiceover("Great job! You've correctly solved this fraction addition problem. Let's walk through the solution step by step.")
  ]

  #only("2")[
    #voiceover("First, we identify the common denominator. In this case, both fractions already have the same denominator of 8, so we don't need to find a new one.")
  ]

  #only("3")[
    #voiceover("Next, we add the numerators while keeping the denominator the same. Three eighths plus one eighth equals four eighths.")
  ]

  #only("4")[
    #voiceover("Finally, we check if we can simplify the result. Four eighths can be reduced by dividing both the numerator and denominator by their greatest common factor, which is 4.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solution]
  #v(40pt)

  #only("1-")[$ 3/8 + 1/8 = 4/8 $]
  #v(20pt)

  #only("2-")[#align(center)[#text(fill:aqua)[⇓ Simplify]]]
  #v(20pt)

  #only("3-")[$ 4/8 = 1/2 $]

  #only("1")[
    #voiceover("Let's see the solution step by step. We start with three eighths plus one eighth, which equals four eighths.")
  ]

  #only("2")[
    #voiceover("Now, we can simplify this fraction.")
  ]

  #only("3")[
    #voiceover("Four eighths simplifies to one half. We do this by dividing both the numerator and denominator by 4.")
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

def draw_pie(ax, frac, label):
    ax.pie([frac, 1-frac], labels=[label, ''], colors=['#ff9999', '#ffffff'], 
           wedgeprops={'edgecolor': 'black'}, startangle=90)
    ax.set_aspect('equal')

draw_pie(ax1, 3/8, '3/8')
draw_pie(ax2, 1/8, '1/8')
draw_pie(ax3, 1/2, '1/2')

ax1.set_title('First Fraction')
ax2.set_title('Second Fraction')
ax3.set_title('Result')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Here's a visual representation of our addition. The first pie chart shows three eighths, the second shows one eighth, and the third shows their sum, which is one half. This visual helps us see how the fractions combine and simplify.")
  ]
]