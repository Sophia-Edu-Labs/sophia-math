#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("That's okay! Let's review the steps together to understand why 5/8 + 2/8 = 7/8 is the correct answer.")
  ]

  #text(size: 30pt, weight: "bold")[Adding Fractions with Common Denominators]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Given: $5/8 + 1/4$]
  ]

  #only("2")[
    #voiceover("We start with the given problem: five-eighths plus one-fourth.")
  ]

  #only("3-")[
    #text(size: 24pt)[Step 1: Find common denominator]
  ]

  #only("3")[
    #voiceover("The first step is to find a common denominator. The denominators are 8 and 4. The least common multiple of 8 and 4 is 8, so we'll use 8 as our common denominator.")
  ]

  #only("4-")[
    #text(size: 24pt)[Step 2: Convert $1/4$ to equivalent fraction]
  ]

  #only("4")[
    #voiceover("Next, we need to convert one-fourth to an equivalent fraction with a denominator of 8. We do this by multiplying both the numerator and denominator by 2.")
  ]

  #only("5-")[
    #text(size: 24pt)[$ 1/4 = (1 dot 2)/(4 dot 2) = 2/8 $]
  ]

  #only("5")[
    #voiceover("One-fourth equals two-eighths. We multiply both top and bottom by 2, giving us 2 over 8.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Adding the Fractions]
  #v(40pt)

  #only("1-")[
    #text(size: 24pt)[Step 3: Add the numerators]
  ]

  #only("1")[
    #voiceover("Now that we have a common denominator, we can add the numerators while keeping the denominator the same.")
  ]

  #only("2-")[
    #text(size: 24pt)[$ 5/8 + 2/8 = (5+2)/8 = 7/8 $]
  ]

  #only("2")[
    #voiceover("Five-eighths plus two-eighths equals seven-eighths. We add 5 and 2 in the numerator, giving us 7, and keep the denominator of 8.")
  ]

  #only("3-")[
    #text(size: 24pt)[Final Answer: $7/8$]
  ]

  #only("3")[
    #voiceover("So, our final answer is seven-eighths.")
  ]

  #only("4-")[
    #text(size: 24pt)[Key Point: When adding fractions with the same denominator, add the numerators and keep the denominator the same.]
  ]

  #only("4")[
    #voiceover("Remember, when adding fractions with the same denominator, we add the numerators and keep the denominator the same. This is why 5/8 plus 2/8 equals 7/8.")
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

def draw_pie(ax, frac, label):
    ax.pie([frac, 1-frac], colors=['#ff9999', '#ffffff'], 
           wedgeprops={'edgecolor': 'black', 'linewidth': 2}, 
           startangle=90)
    ax.set_title(label)

draw_pie(ax1, 5/8, '5/8')
draw_pie(ax2, 2/8, '2/8')
draw_pie(ax3, 7/8, '7/8')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Let's visualize this addition. The first circle represents five-eighths, the second represents two-eighths, and the third shows their sum, seven-eighths. Notice how the colored portions add up in the final circle.")
  ]

  #only("2-")[
    #text(size: 24pt)[💡 Tip: Visualizing fractions can help in understanding their addition!]
  ]

  #only("2")[
    #voiceover("Visualizing fractions like this can really help in understanding how they add up. It makes the abstract concept more concrete and easier to grasp.")
  ]
]