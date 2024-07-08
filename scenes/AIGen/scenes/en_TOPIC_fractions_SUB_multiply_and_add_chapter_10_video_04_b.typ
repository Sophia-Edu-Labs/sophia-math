#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("That's okay! Let's go through the solution step-by-step to understand why 2/4 or 1/2 is the correct answer.")
  ]

  #text(size: 30pt, weight: "bold")[Subtracting Fractions]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Problem: $3/4 - 1/4$]
  ]

  #only("2")[
    #voiceover("Our problem is to subtract one-fourth from three-fourths.")
  ]

  #only("3-")[
    - Same denominator ✅
  ]

  #only("3")[
    #voiceover("First, we notice that both fractions have the same denominator, 4. This is great because it means we can subtract the numerators directly.")
  ]

  #only("4-")[
    - Subtract numerators: $3 - 1 = 2$
  ]

  #only("4")[
    #voiceover("So, we simply subtract the numerators: 3 minus 1 equals 2.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solution]
  #v(40pt)

  #only("1-")[
    $3/4 - 1/4 = 2/4$
  ]

  #only("1")[
    #voiceover("This gives us the result: three-fourths minus one-fourth equals two-fourths.")
  ]

  #only("2-")[
    #align(center)[#text(fill:aqua)[⇓ Simplify]]
  ]

  #only("2")[
    #voiceover("Now, we can simplify this fraction further.")
  ]

  #only("3-")[
    $2/4 = 1/2$
  ]

  #only("3")[
    #voiceover("Two-fourths can be reduced to one-half by dividing both the numerator and denominator by 2.")
  ]

  #only("4-")[
    - Both $2/4$ and $1/2$ are correct ✅
  ]

  #only("4")[
    #voiceover("So, both two-fourths and one-half are correct answers to this problem. They represent the same value, just expressed in different ways.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Visual Representation]
  #v(20pt)

  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
import numpy as np

fig, (ax1, ax2, ax3) = plt.subplots(1, 3, figsize=(12, 4))

def draw_pie(ax, sizes, colors, labels):
    ax.pie(sizes, colors=colors, labels=labels, autopct='%1.1f%%', startangle=90)
    ax.axis('equal')

# 3/4
draw_pie(ax1, [3, 1], ['#ff9999','#ffffff'], ['3/4', ''])
ax1.set_title('3/4')

# 1/4
draw_pie(ax2, [1, 3], ['#ffcc99','#ffffff'], ['1/4', ''])
ax2.set_title('1/4')

# 2/4 or 1/2
draw_pie(ax3, [2, 2], ['#99ff99','#ffffff'], ['2/4 or 1/2', ''])
ax3.set_title('2/4 or 1/2')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Let's visualize this subtraction using pie charts. The first pie shows three-fourths, the second shows one-fourth, and the third shows the result: two-fourths or one-half.")
  ]

  #only("2")[
    #voiceover("As you can see, when we subtract the one-fourth slice from the three-fourths pie, we're left with two-fourths, which is equivalent to one-half of the whole pie.")
  ]

  #only("3")[
    #voiceover("This visual representation helps us understand why two-fourths and one-half are both correct answers to our subtraction problem.")
  ]
]