#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Adding Fractions]
  #v(40pt)
  
  #only("1-")[🍕 Why do we need to add fractions?]
  #v(20pt)
  #only("2-")[📚 Two types of fraction addition:]
  #v(10pt)
  #only("3-")[   - Same denominator]
  #v(10pt)
  #only("4-")[   - Different denominators]

  #only("1")[
    #voiceover("Welcome to our lesson on adding fractions! Have you ever wondered why we need to add fractions?")
  ]
  #only("2")[
    #voiceover("Imagine you're sharing pizzas with friends. You ate 1/4 of one pizza and 2/4 of another. How much pizza did you eat in total? This is where adding fractions comes in handy!")
  ]
  #only("3")[
    #voiceover("When adding fractions, we encounter two main scenarios. The first is when the fractions have the same denominator.")
  ]
  #only("4")[
    #voiceover("The second scenario is when the fractions have different denominators. Let's explore both of these cases.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Same Denominator]
  #v(40pt)
  
  #only("1-")[Rule: Add numerators, keep denominator]
  #v(20pt)
  #only("2-")[Example: $1/4 + 2/4$]
  #v(20pt)
  #only("3-")[Solution: $1/4 + 2/4 = (1+2)/4 = 3/4$]
  #v(20pt)
  #only("4-")[🍕 Visualization:]
  #v(10pt)
  #only("5-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
import numpy as np

fig, (ax1, ax2, ax3) = plt.subplots(1, 3, figsize=(12, 4))

circle1 = plt.Circle((0.5, 0.5), 0.5, fill=False)
ax1.add_artist(circle1)
ax1.pie([1, 3], startangle=90, colors=['red', 'white'])
ax1.set_title('1/4')

circle2 = plt.Circle((0.5, 0.5), 0.5, fill=False)
ax2.add_artist(circle2)
ax2.pie([2, 2], startangle=90, colors=['blue', 'white'])
ax2.set_title('2/4')

circle3 = plt.Circle((0.5, 0.5), 0.5, fill=False)
ax3.add_artist(circle3)
ax3.pie([3, 1], startangle=90, colors=['purple', 'white'])
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
    #voiceover("When adding fractions with the same denominator, we follow a simple rule: add the numerators and keep the same denominator.")
  ]
  #only("2")[
    #voiceover("Let's look at an example. Suppose we want to add one-fourth and two-fourths.")
  ]
  #only("3")[
    #voiceover("We add the numerators: 1 plus 2 equals 3. We keep the denominator 4. So, one-fourth plus two-fourths equals three-fourths.")
  ]
  #only("4")[
    #voiceover("Let's visualize this with pizza slices!")
  ]
  #only("5")[
    #voiceover("Here we see three circles representing pizzas. The first shows one-fourth in red, the second shows two-fourths in blue, and the third shows the result: three-fourths in purple. This visual representation helps us understand why we simply add the numerators when the denominators are the same.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Different Denominators]
  #v(40pt)
  
  #only("1-")[Step 1: Find common denominator]
  #v(20pt)
  #only("2-")[Step 2: Convert fractions]
  #v(20pt)
  #only("3-")[Step 3: Add numerators]
  #v(20pt)
  #only("4-")[Example: $1/2 + 1/3$]
  #v(20pt)
  #only("5-")[$1/2 = 3/6$ and $1/3 = 2/6$]
  #v(20pt)
  #only("6-")[$3/6 + 2/6 = 5/6$]

  #only("1")[
    #voiceover("When adding fractions with different denominators, we need to follow three steps. First, we find a common denominator.")
  ]
  #only("2")[
    #voiceover("Next, we convert each fraction to an equivalent fraction with this common denominator.")
  ]
  #only("3")[
    #voiceover("Finally, we add the numerators and keep the common denominator.")
  ]
  #only("4")[
    #voiceover("Let's look at an example. Suppose we want to add one-half and one-third.")
  ]
  #only("5")[
    #voiceover("We find that 6 is a common denominator. We convert one-half to three-sixths, and one-third to two-sixths.")
  ]
  #only("6")[
    #voiceover("Now we can add: three-sixths plus two-sixths equals five-sixths. And that's our final answer!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)
  
  #only("1-")[🧮 Same denominator: Add numerators, keep denominator]
  #v(20pt)
  #only("2-")[🔢 Different denominators:]
  #v(10pt)
  #only("3-")[   1. Find common denominator]
  #v(10pt)
  #only("4-")[   2. Convert fractions]
  #v(10pt)
  #only("5-")[   3. Add numerators, keep common denominator]

  #only("1")[
    #voiceover("Let's recap what we've learned. When adding fractions with the same denominator, we simply add the numerators and keep the same denominator.")
  ]
  #only("2")[
    #voiceover("For fractions with different denominators, we follow three steps.")
  ]
  #only("3")[
    #voiceover("First, we find a common denominator.")
  ]
  #only("4")[
    #voiceover("Then, we convert each fraction to an equivalent fraction with this common denominator.")
  ]
  #only("5")[
    #voiceover("Finally, we add the numerators and keep the common denominator. With these rules, you're now ready to add any fractions that come your way!")
  ]
]