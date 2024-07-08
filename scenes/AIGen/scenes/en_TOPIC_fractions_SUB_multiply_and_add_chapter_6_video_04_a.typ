#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Great job! You've correctly added these fractions. Let's go through the solution step-by-step to understand why this works.")
  ]

  #text(size: 30pt, weight: "bold")[Adding Fractions with Same Denominators]
  #v(40pt)

  #only("2-")[
    $4/10 + 3/10 = ?$
  ]

  #only("2")[
    #voiceover("We start with the problem: four tenths plus three tenths. Notice that both fractions have the same denominator, ten.")
  ]

  #only("3-")[
    #v(20pt)
    - Same denominator: 10
  ]

  #only("3")[
    #voiceover("When adding fractions with the same denominator, we keep the denominator the same and add only the numerators.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step-by-Step Solution]
  #v(40pt)

  #only("1-")[
    $4/10 + 3/10 = (4+3)/10$
  ]

  #only("1")[
    #voiceover("So, we add the numerators: four plus three, and keep the denominator as ten.")
  ]

  #only("2-")[
    #v(20pt)
    $= 7/10$
  ]

  #only("2")[
    #voiceover("Four plus three equals seven, so our result is seven tenths.")
  ]

  #only("3-")[
    #v(20pt)
    - Numerators: 4 + 3 = 7
    - Denominator: 10 (unchanged)
  ]

  #only("3")[
    #voiceover("To summarize: we added the numerators, four and three, to get seven, while keeping the denominator, ten, the same.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Visualization]
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

def draw_fraction(ax, numerator, denominator, color):
    ax.pie([numerator, denominator-numerator], colors=[color, 'white'], 
           startangle=90, counterclock=False)
    ax.add_artist(plt.Circle((0,0),0.7,color='white'))
    ax.text(0, 0, f"{numerator}/{denominator}", ha='center', va='center', fontsize=20)

draw_fraction(ax1, 4, 10, 'red')
ax1.set_title('4/10')

draw_fraction(ax2, 3, 10, 'blue')
ax2.set_title('3/10')

draw_fraction(ax3, 7, 10, 'purple')
ax3.set_title('7/10')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Here's a visual representation of our addition. The first circle shows four tenths in red, the second shows three tenths in blue. When we add these together, we get seven tenths, shown in the third circle in purple.")
  ]

  #only("2-")[
    #v(20pt)
    - Red: 4/10
    - Blue: 3/10
    - Purple: 7/10 (sum)
  ]

  #only("2")[
    #voiceover("This visualization helps us see how the fractions combine. The red and blue parts together make up seven tenths of the whole circle, which is our final answer.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Key Takeaway]
  #v(40pt)

  #only("1-")[
    - When adding fractions with the same denominator:
      1. Keep the denominator the same
      2. Add only the numerators
  ]

  #only("1")[
    #voiceover("The key takeaway here is that when adding fractions with the same denominator, we keep the denominator the same and add only the numerators. This works because the fractions are already parts of the same whole.")
  ]

  #only("2-")[
    #v(20pt)
    $a/c + b/c = (a+b)/c$
  ]

  #only("2")[
    #voiceover("We can generalize this as: a over c plus b over c equals a plus b over c, where a, b, and c are numbers and c is not zero.")
  ]
]