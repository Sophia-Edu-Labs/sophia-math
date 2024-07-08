#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Adding Fractions with Common Denominators]
  #v(40pt)

  #only("1-")[#text(size: 24pt)[Exercise: Add 1/6 and 1/3]]
  #v(20pt)

  #only("2-")[#text(size: 20pt)[Step 1: Convert fractions to common denominator]]
  #v(10pt)
  #only("3-")[$ 1/6 + 1/3 = 1/6 + 2/6 $]
  
  #only("4-")[#text(size: 20pt)[Step 2: Add numerators]]
  #v(10pt)
  #only("5-")[$ 1/6 + 2/6 = 3/6 $]
  
  #only("6-")[#text(size: 20pt)[Step 3: Simplify (if possible)]]
  #v(10pt)
  #only("7-")[$ 3/6 = 1/2 $]

  #only("1")[
    #voiceover("Great job on solving this problem! Let's go through the solution step by step.")
  ]

  #only("2")[
    #voiceover("The first step in adding fractions is to ensure they have a common denominator. In this case, we need to convert one-third to an equivalent fraction with a denominator of 6.")
  ]

  #only("3")[
    #voiceover("One-third is equivalent to two-sixths. We can see this by multiplying both the numerator and denominator by 2. So, our problem becomes one-sixth plus two-sixths.")
  ]

  #only("4")[
    #voiceover("Now that we have a common denominator, we can add the fractions by simply adding the numerators.")
  ]

  #only("5")[
    #voiceover("One-sixth plus two-sixths equals three-sixths.")
  ]

  #only("6")[
    #voiceover("The final step is to check if we can simplify our result.")
  ]

  #only("7")[
    #voiceover("Three-sixths can be simplified by dividing both the numerator and denominator by their greatest common factor, which is 3. This gives us one-half as our final answer.")
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

# First fraction: 1/6
ax1.pie([1, 5], labels=['1/6', ''], colors=['#ff9999', '#eeeeee'], startangle=90)
ax1.set_title('1/6')

# Second fraction: 1/3 (or 2/6)
ax2.pie([2, 4], labels=['1/3', ''], colors=['#66b3ff', '#eeeeee'], startangle=90)
ax2.set_title('1/3 (2/6)')

# Sum: 1/2
ax3.pie([1, 1], labels=['1/2', ''], colors=['#99ff99', '#eeeeee'], startangle=90)
ax3.set_title('Sum: 1/2')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt
        ),
      )
    ]
  ]]

  #only("1")[
    #voiceover("Let's visualize our fractions and their sum. The first circle represents one-sixth, shown in pink. The second circle represents one-third, or two-sixths, shown in blue. When we add these together, we get one-half, represented by the green semicircle in the third diagram.")
  ]

  #only("2")[
    #voiceover("This visual representation helps us see why one-sixth plus one-third equals one-half. The pink and blue sections together make up exactly half of a circle.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Key Takeaways]
  #v(40pt)

  #only("1-")[- Always find a common denominator first 📊]
  #v(20pt)
  #only("2-")[- Add the numerators, keep the denominator 🧮]
  #v(20pt)
  #only("3-")[- Simplify the result if possible ✨]
  #v(20pt)
  #only("4-")[- Visualizing can help understand fractions 🖼️]

  #only("1")[
    #voiceover("Let's recap the key points from this exercise. First, always find a common denominator before adding fractions.")
  ]

  #only("2")[
    #voiceover("Once you have a common denominator, add the numerators while keeping the denominator the same.")
  ]

  #only("3")[
    #voiceover("After adding, check if you can simplify your result by dividing both the numerator and denominator by their greatest common factor.")
  ]

  #only("4")[
    #voiceover("Finally, remember that visualizing fractions can often help in understanding their relationships and sums. Great job on mastering this concept!")
  ]
]