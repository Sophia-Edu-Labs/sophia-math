#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Changing Fractions: Same Value, Different Look]
  #v(40pt)

  #only("1-")[
    #align(center)[$ 1/2 = ?/4 $]
  ]

  #only("1")[
    #voiceover("Not quite, but don't worry! Let's walk through the solution step-by-step to see how we change one-half to an equivalent fraction with a denominator of 4.")
  ]

  #only("2-")[
    #align(center)[#text(fill: aqua)[⇓ Multiply both numerator and denominator by 2]]
  ]

  #only("2")[
    #voiceover("The key to changing fractions while keeping their value the same is to multiply both the numerator and denominator by the same number. In this case, we need to multiply by 2 to get from 2 to 4 in the denominator.")
  ]

  #only("3-")[
    #align(center)[$ (1 dot 2)/(2 dot 2) = 2/4 $]
  ]

  #only("3")[
    #voiceover("So, we multiply both the top and bottom of one-half by 2. This gives us 1 times 2 over 2 times 2, which equals 2 over 4.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Why This Works]
  #v(40pt)

  #only("1-")[
    - Multiplying by 1 doesn't change value
  ]

  #only("1")[
    #voiceover("This method works because we're essentially multiplying the fraction by 1, which doesn't change its value.")
  ]

  #only("2-")[
    - $2/2 = 1$
  ]

  #only("2")[
    #voiceover("Remember, 2 divided by 2 equals 1.")
  ]

  #only("3-")[
    - $1/2 dot 2/2 = 2/4$
  ]

  #only("3")[
    #voiceover("So, one-half times two-halves equals two-fourths. We've changed the form of the fraction without changing its value.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Visualizing the Equivalence]
  #v(20pt)

  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
import numpy as np

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10, 4))

# First pie chart
ax1.pie([1, 1], labels=['1/2', '1/2'], colors=['skyblue', 'lightgray'], autopct='%1.1f%%', startangle=90)
ax1.set_title('1/2')

# Second pie chart
ax2.pie([1, 1, 1, 1], labels=['1/4', '1/4', '1/4', '1/4'], colors=['skyblue', 'skyblue', 'lightgray', 'lightgray'], autopct='%1.1f%%', startangle=90)
ax2.set_title('2/4')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Let's visualize this equivalence. On the left, we have a pie chart representing one-half. On the right, we have another pie chart divided into fourths, with two parts shaded. Both represent the same amount, just divided differently.")
  ]

  #only("2")[
    #voiceover("This visual representation helps us see that one-half and two-fourths are indeed the same amount, just expressed in different ways.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Key Takeaways]
  #v(40pt)

  #only("1-")[
    - Equivalent fractions have the same value 🟰
  ]

  #only("1")[
    #voiceover("The key takeaway here is that equivalent fractions have the same value, even though they look different.")
  ]

  #only("2-")[
    - Multiply numerator and denominator by same number ✖️
  ]

  #only("2")[
    #voiceover("To create an equivalent fraction, multiply both the numerator and denominator by the same number.")
  ]

  #only("3-")[
    - This skill is crucial for adding and subtracting fractions 🧮
  ]

  #only("3")[
    #voiceover("This skill of changing denominators is crucial when you need to add or subtract fractions with different denominators. Great job mastering this important concept!")
  ]
]