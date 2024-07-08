#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Great job! You got the correct answer. Let's go through the solution step by step to understand why 5/7 is the correct result.")
  ]

  #text(size: 30pt, weight: "bold")[Adding Fractions with Same Denominators]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Given: $3/7 + 2/7$]
  ]

  #only("2")[
    #voiceover("We're given the problem of adding 3/7 and 2/7. Notice that these fractions have the same denominator, which makes our addition straightforward.")
  ]

  #only("3-")[
    #text(size: 24pt)[Step 1: Identify common denominator]
    #v(10pt)
    #text(size: 20pt)[Common denominator: 7]
  ]

  #only("3")[
    #voiceover("The first step is to identify the common denominator. In this case, both fractions already have 7 as their denominator.")
  ]

  #only("4-")[
    #text(size: 24pt)[Step 2: Add numerators]
    #v(10pt)
    #text(size: 20pt)[$ 3 + 2 = 5 $]
  ]

  #only("4")[
    #voiceover("Next, we simply add the numerators. 3 plus 2 equals 5.")
  ]

  #only("5-")[
    #text(size: 24pt)[Step 3: Write result over common denominator]
    #v(10pt)
    #text(size: 20pt)[$ 5/7 $]
  ]

  #only("5")[
    #voiceover("Finally, we write this sum over the common denominator. So, 3/7 plus 2/7 equals 5/7.")
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

def draw_pie(ax, ratio, label):
    sizes = [ratio, 1 - ratio]
    colors = ['#ff9999', '#66b3ff']
    ax.pie(sizes, colors=colors, startangle=90)
    ax.set_title(label)

draw_pie(ax1, 3/7, '3/7')
draw_pie(ax2, 2/7, '2/7')
draw_pie(ax3, 5/7, '5/7')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Let's visualize this addition using pie charts. The first pie represents 3/7, the second 2/7, and the third shows their sum, 5/7.")
  ]

  #only("2")[
    #voiceover("As you can see, when we combine the portions represented by 3/7 and 2/7, we get 5/7 of the whole pie.")
  ]

  #only("3")[
    #voiceover("This visual representation helps us understand why adding fractions with the same denominator is as simple as adding the numerators and keeping the denominator the same.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Key Takeaways]
  #v(40pt)

  #only("1-")[
    - When adding fractions with the same denominator:
  ]

  #only("2-")[
    #v(10pt)
    #text(size: 20pt)[1. Keep the common denominator 🔢]
  ]

  #only("3-")[
    #v(10pt)
    #text(size: 20pt)[2. Add only the numerators ➕]
  ]

  #only("4-")[
    #v(10pt)
    #text(size: 20pt)[3. Simplify if possible ✨]
  ]

  #only("1")[
    #voiceover("Let's recap the key points about adding fractions with the same denominator.")
  ]

  #only("2")[
    #voiceover("First, we keep the common denominator. In this case, it was 7.")
  ]

  #only("3")[
    #voiceover("Second, we only add the numerators. We added 3 and 2 to get 5.")
  ]

  #only("4")[
    #voiceover("Finally, we should simplify the result if possible. In this case, 5/7 is already in its simplest form.")
  ]

  #only("5")[
    #voiceover("Remember, this method works for any number of fractions as long as they all have the same denominator. Keep practicing, and you'll master fraction addition in no time!")
  ]
]