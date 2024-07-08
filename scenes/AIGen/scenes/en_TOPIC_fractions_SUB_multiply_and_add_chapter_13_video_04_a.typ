#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Adding Fractions with Same Denominator]
  #v(40pt)

  #only("1-")[
    #text(size: 24pt)[Given: $3/10 + 2/5$]
  ]

  #only("2-")[
    #align(center)[#text(fill:aqua)[⇓ Convert $2/5$ to equivalent fraction with denominator 10]]
  ]

  #only("3-")[
    #text(size: 24pt)[Step 1: $2/5 = (2 dot 2)/(5 dot 2) = 4/10$]
  ]

  #only("4-")[
    #align(center)[#text(fill:aqua)[⇓ Add fractions]]
  ]

  #only("5-")[
    #text(size: 24pt)[Step 2: $3/10 + 4/10 = 7/10$]
  ]

  #only("1")[
    #voiceover("Great job! You've correctly solved this problem. Let's go through the solution step by step to understand why three tenths plus two fifths equals seven tenths.")
  ]

  #only("2")[
    #voiceover("First, we need to make sure both fractions have the same denominator. Three tenths already has a denominator of 10, so we need to convert two fifths to an equivalent fraction with a denominator of 10.")
  ]

  #only("3")[
    #voiceover("To do this, we multiply both the numerator and denominator of two fifths by 2. This gives us four tenths, which is equivalent to two fifths.")
  ]

  #only("4")[
    #voiceover("Now that both fractions have the same denominator, we can add them together.")
  ]

  #only("5")[
    #voiceover("We simply add the numerators: 3 plus 4 equals 7. The denominator stays the same. So, three tenths plus four tenths equals seven tenths, which is our final answer.")
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

# First fraction: 3/10
ax1.pie([3, 7], labels=['3/10', ''], colors=['#ff9999', '#eeeeee'], startangle=90)
ax1.set_title('3/10')

# Second fraction: 4/10
ax2.pie([4, 6], labels=['4/10', ''], colors=['#66b3ff', '#eeeeee'], startangle=90)
ax2.set_title('4/10')

# Sum: 7/10
ax3.pie([7, 3], labels=['7/10', ''], colors=['#99ff99', '#eeeeee'], startangle=90)
ax3.set_title('3/10 + 4/10 = 7/10')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Let's visualize this addition using pie charts. The first chart shows three tenths, represented by the red slice. The second chart shows four tenths, represented by the blue slice. When we add these together, we get seven tenths, shown in the third chart as the green slice.")
  ]

  #only("2")[
    #voiceover("This visual representation helps us see why adding fractions with the same denominator is as simple as adding the numerators and keeping the denominator the same.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Key Takeaways]
  #v(40pt)

  #only("1-")[
    - When adding fractions, ensure same denominators 🔢
  ]

  #only("2-")[
    - Convert fractions if needed (multiply numerator and denominator by same number) ↔️
  ]

  #only("3-")[
    - Add numerators, keep denominator the same ➕
  ]

  #only("4-")[
    - Simplify the result if possible (not needed in this case) ✅
  ]

  #only("1")[
    #voiceover("Let's recap the key points from this problem. First, when adding fractions, we need to ensure that they have the same denominator.")
  ]

  #only("2")[
    #voiceover("If the denominators are different, we need to convert one or both fractions to equivalent fractions with a common denominator. We do this by multiplying both the numerator and denominator by the same number.")
  ]

  #only("3")[
    #voiceover("Once the denominators are the same, we can add the fractions by adding the numerators and keeping the denominator the same.")
  ]

  #only("4")[
    #voiceover("Finally, if possible, we should simplify the result. In this case, seven tenths is already in its simplest form, so no further simplification is needed.")
  ]
]