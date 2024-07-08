#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Great job! You've correctly added the fractions. Let's go through the solution step by step to understand why 3/4 is the correct answer.")
  ]

  #text(size: 30pt, weight: "bold")[Adding Fractions: 1/4 + 2/4]
  #v(40pt)

  #only("2-")[
    $1/4 + 2/4$
  ]

  #only("2")[
    #voiceover("We start with our problem: one-fourth plus two-fourths.")
  ]

  #only("3-")[
    #align(center)[#text(fill:aqua)[⇓ Check denominators]]
  ]

  #only("3")[
    #voiceover("First, we check the denominators. In this case, both fractions already have the same denominator of 4, so we don't need to find a common denominator.")
  ]

  #only("4-")[
    #align(center)[#text(fill:aqua)[⇓ Add numerators]]
  ]

  #only("4")[
    #voiceover("When fractions have the same denominator, we can add them by simply adding their numerators and keeping the denominator the same.")
  ]

  #only("5-")[
    $(1 + 2)/4$
  ]

  #only("5")[
    #voiceover("So, we add 1 and 2 in the numerator, while keeping the denominator of 4.")
  ]

  #only("6-")[
    $= 3/4$
  ]

  #only("6")[
    #voiceover("This gives us 3/4 as our final answer.")
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

fig, (ax1, ax2, ax3) = plt.subplots(1, 3, figsize=(12, 4))

# First fraction: 1/4
ax1.pie([1, 3], labels=['', ''], colors=['#ff9999', '#ffffff'], startangle=90)
ax1.set_title('1/4')

# Second fraction: 2/4
ax2.pie([2, 2], labels=['', ''], colors=['#ff9999', '#ffffff'], startangle=90)
ax2.set_title('2/4')

# Result: 3/4
ax3.pie([3, 1], labels=['', ''], colors=['#ff9999', '#ffffff'], startangle=90)
ax3.set_title('3/4')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Let's visualize this addition using pie charts. The first chart shows one-fourth, the second shows two-fourths, and the third shows their sum, three-fourths.")
  ]

  #only("2")[
    #voiceover("As you can see, when we combine the shaded portions from the first two charts, we get the shaded portion in the third chart, which represents three-fourths.")
  ]

  #only("3")[
    #voiceover("This visual representation helps us understand why adding 1/4 and 2/4 results in 3/4.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Key Points to Remember]
  #v(40pt)

  #only("1-")[
    - Same denominators: Add numerators only 🔢
  ]

  #only("1")[
    #voiceover("When adding fractions with the same denominator, we only need to add the numerators. The denominator stays the same.")
  ]

  #only("2-")[
    - Simplify if possible ✂️
  ]

  #only("2")[
    #voiceover("Always check if you can simplify your final answer. In this case, 3/4 is already in its simplest form.")
  ]

  #only("3-")[
    - Visualize to understand 👁️
  ]

  #only("3")[
    #voiceover("Visualizing fractions, like we did with the pie charts, can help you understand and verify your calculations.")
  ]
]