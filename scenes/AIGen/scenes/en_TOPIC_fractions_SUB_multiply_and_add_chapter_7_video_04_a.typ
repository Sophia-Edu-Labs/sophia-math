#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Great job! You've correctly added these fractions. Let's walk through the solution step-by-step to understand why this works.")
  ]

  #text(size: 30pt, weight: "bold")[Adding Fractions with Same Denominators]
  #v(40pt)

  #only("2-")[$ 4/9 + 3/9 $]
  #v(20pt)
  #only("3-")[#text(fill: aqua)[⇓ Add numerators, keep denominator]]
  #v(20pt)
  #only("4-")[$ (4 + 3)/9 $]
  #v(20pt)
  #only("5-")[#text(fill: aqua)[⇓ Simplify]]
  #v(20pt)
  #only("6-")[$ 7/9 $]

  #only("2")[
    #voiceover("We start with the problem four-ninths plus three-ninths.")
  ]

  #only("3")[
    #voiceover("When adding fractions with the same denominator, we keep the denominator the same and add only the numerators.")
  ]

  #only("4")[
    #voiceover("So, we add 4 and 3 in the numerator, while keeping 9 as the denominator.")
  ]

  #only("5")[
    #voiceover("Now we simplify. Four plus three equals seven.")
  ]

  #only("6")[
    #voiceover("So our final answer is seven-ninths.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Why This Works]
  #v(40pt)

  #only("1-")[- Fractions represent parts of a whole 🍕]
  #v(20pt)
  #only("2-")[- Same denominator = same-sized pieces]
  #v(20pt)
  #only("3-")[- Adding numerators = combining pieces]

  #only("1")[
    #voiceover("Let's understand why this works. Fractions represent parts of a whole, like slices of a pizza.")
  ]

  #only("2")[
    #voiceover("When fractions have the same denominator, it's like we're dealing with pieces of the same size.")
  ]

  #only("3")[
    #voiceover("Adding the numerators is like combining these same-sized pieces. So four pieces plus three pieces of the same size gives us seven pieces in total.")
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

# First fraction
ax1.pie([4, 5], labels=['4/9', ''], colors=['#ff9999', '#ffffff'], startangle=90)
ax1.set_title('4/9')

# Second fraction
ax2.pie([3, 6], labels=['3/9', ''], colors=['#66b3ff', '#ffffff'], startangle=90)
ax2.set_title('3/9')

# Sum
ax3.pie([7, 2], labels=['7/9', ''], colors=['#99ff99', '#ffffff'], startangle=90)
ax3.set_title('4/9 + 3/9 = 7/9')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Here's a visual representation of our addition. The first pie chart shows four-ninths, the second shows three-ninths, and the third shows their sum, seven-ninths. Notice how we're simply combining the colored portions.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Key Takeaway]
  #v(40pt)

  #only("1-")[When adding fractions with the same denominator:]
  #v(20pt)
  #only("2-")[1️⃣ Add the numerators]
  #v(20pt)
  #only("3-")[2️⃣ Keep the denominator the same]
  #v(20pt)
  #only("4-")[3️⃣ Simplify if possible]

  #only("1")[
    #voiceover("Let's recap the key points for adding fractions with the same denominator.")
  ]

  #only("2")[
    #voiceover("First, add the numerators.")
  ]

  #only("3")[
    #voiceover("Second, keep the denominator the same.")
  ]

  #only("4")[
    #voiceover("Finally, simplify the resulting fraction if possible. In this case, seven-ninths is already in its simplest form.")
  ]
]