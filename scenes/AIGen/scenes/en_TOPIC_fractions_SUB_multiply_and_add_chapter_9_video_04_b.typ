#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's review the correct solution step-by-step to help you understand where you went wrong.")
  ]

  #text(size: 30pt, weight: "bold")[Subtracting Fractions with Same Denominators]
  #v(40pt)

  #only("2-")[
    $7/10 - 4/10$
  ]

  #only("2")[
    #voiceover("We start with the problem: seven-tenths minus four-tenths.")
  ]

  #only("3-")[
    #text(fill: aqua)[⇓ Same denominators]
  ]

  #only("3")[
    #voiceover("First, we observe that both fractions have the same denominator, ten. This makes our subtraction straightforward.")
  ]

  #only("4-")[
    $7/10 - 4/10 = (7-4)/10$
  ]

  #only("4")[
    #voiceover("When subtracting fractions with the same denominator, we keep the denominator and simply subtract the numerators.")
  ]

  #only("5-")[
    $= 3/10$
  ]

  #only("5")[
    #voiceover("Seven minus four equals three, so our final answer is three-tenths.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Visualizing the Subtraction]
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

# First fraction: 7/10
ax1.pie([7, 3], labels=['7/10', ''], colors=['#ff9999', '#ffffff'], startangle=90)
ax1.set_title('7/10')

# Second fraction: 4/10
ax2.pie([4, 6], labels=['4/10', ''], colors=['#66b3ff', '#ffffff'], startangle=90)
ax2.set_title('4/10')

# Result: 3/10
ax3.pie([3, 7], labels=['3/10', ''], colors=['#99ff99', '#ffffff'], startangle=90)
ax3.set_title('7/10 - 4/10 = 3/10')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Let's visualize this subtraction using pie charts. The first chart shows seven-tenths, the second shows four-tenths, and the third shows the result of subtracting four-tenths from seven-tenths, which is three-tenths.")
  ]

  #only("2")[
    #voiceover("This visual representation helps us understand that when we subtract four-tenths from seven-tenths, we're left with three-tenths of the whole.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Key Takeaways]
  #v(40pt)

  #only("1-")[
    - When subtracting fractions with the same denominator:
  ]

  #only("2-")[
    #h(20pt) 1️⃣ Keep the denominator the same
  ]

  #only("3-")[
    #h(20pt) 2️⃣ Subtract only the numerators
  ]

  #only("4-")[
    - The result is already in its simplest form
  ]

  #only("5-")[
    - This method works for addition too! 🧮
  ]

  #only("1")[
    #voiceover("Let's recap the key points from this problem.")
  ]

  #only("2")[
    #voiceover("First, when subtracting fractions with the same denominator, we keep the denominator the same.")
  ]

  #only("3")[
    #voiceover("Second, we only subtract the numerators.")
  ]

  #only("4")[
    #voiceover("In this case, our result, three-tenths, is already in its simplest form.")
  ]

  #only("5")[
    #voiceover("Remember, this method also works for adding fractions with the same denominator. Keep practicing, and you'll master fraction arithmetic in no time!")
  ]
]