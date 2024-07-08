#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Adding Fractions]
  #v(40pt)

  #only("1-")[Exercise: Add 2/3 and 1/6]
  #v(20pt)

  #only("2-")[Step 1: Find a common denominator]
  #v(10pt)
  #only("3-")[$ "LCM"(3,6) = 6 $]
  #v(20pt)

  #only("4-")[Step 2: Convert fractions]
  #v(10pt)
  #only("5-")[$ 2/3 = (2 dot 2)/(3 dot 2) = 4/6 $]
  #only("6-")[$ 1/6 $ (already has denominator 6)]
  #v(20pt)

  #only("7-")[Step 3: Add numerators]
  #v(10pt)
  #only("8-")[$ 4/6 + 1/6 = 5/6 $]

  #only("1")[
    #voiceover("Great job! You've correctly solved this problem. Let's walk through the solution step-by-step.")
  ]

  #only("2")[
    #voiceover("The first step in adding fractions is to find a common denominator.")
  ]

  #only("3")[
    #voiceover("We need to find the least common multiple of 3 and 6, which is 6.")
  ]

  #only("4")[
    #voiceover("Next, we convert each fraction to an equivalent fraction with the common denominator.")
  ]

  #only("5")[
    #voiceover("For two-thirds, we multiply both the numerator and denominator by 2, giving us four-sixths.")
  ]

  #only("6")[
    #voiceover("One-sixth already has a denominator of 6, so we don't need to change it.")
  ]

  #only("7")[
    #voiceover("Now that we have a common denominator, we can add the numerators.")
  ]

  #only("8")[
    #voiceover("Four-sixths plus one-sixth equals five-sixths, which is our final answer.")
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

# First fraction: 2/3
ax1.pie([2, 1], labels=['2/3', ''], colors=['#ff9999', '#ffffff'], startangle=90)
ax1.set_title('2/3')

# Second fraction: 1/6
ax2.pie([1, 5], labels=['1/6', ''], colors=['#66b3ff', '#ffffff'], startangle=90)
ax2.set_title('1/6')

# Sum: 5/6
ax3.pie([5, 1], labels=['5/6', ''], colors=['#99ff99', '#ffffff'], startangle=90)
ax3.set_title('5/6 (Sum)')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Let's visualize our fractions and their sum. The first pie chart represents two-thirds, the second represents one-sixth, and the third shows their sum, five-sixths.")
  ]

  #only("2")[
    #voiceover("Notice how two-thirds is a larger portion than one-sixth, and when we add them together, we get five-sixths, which is most of the whole pie.")
  ]

  #only("3")[
    #voiceover("This visual representation helps us understand why five-sixths is the correct answer. It's larger than either of the original fractions, but still less than a whole.")
  ]
]