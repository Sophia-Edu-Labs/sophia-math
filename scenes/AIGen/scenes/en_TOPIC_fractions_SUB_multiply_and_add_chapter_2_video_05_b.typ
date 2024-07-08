#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Multiplying Fractions]
  #v(40pt)

  #only("1-")[
    $5/8 times 7/9$
  ]

  #v(20pt)

  #only("2-")[
    $= (5 dot 7) / (8 dot 9)$
  ]

  #v(20pt)

  #only("3-")[
    $= 35 / 72$
  ]

  #only("1")[
    #voiceover("Let's review the correct solution step-by-step. We start with the multiplication of 5/8 and 7/9.")
  ]

  #only("2")[
    #voiceover("To multiply fractions, we multiply the numerators together and the denominators together. So, we multiply 5 by 7 in the numerator, and 8 by 9 in the denominator.")
  ]

  #only("3")[
    #voiceover("This gives us 35 over 72. And that's our final answer! No simplification is needed as 35 and 72 don't have any common factors other than 1.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Visual Representation]
  #v(40pt)

  #box()[
    #morphchildren(id: "plot")[
      #figure(
        pyimage(
```

        import matplotlib.pyplot as plt
import numpy as np

fig, (ax1, ax2, ax3) = plt.subplots(1, 3, figsize=(15, 5))

def draw_fraction(ax, numerator, denominator, color):
    ax.pie([numerator, denominator-numerator], colors=[color, 'white'], 
           startangle=90, counterclock=False)
    ax.add_artist(plt.Circle((0, 0), 0.7, color='white'))
    ax.text(0, 0, f'{numerator}/{denominator}', ha='center', va='center', fontsize=20)

draw_fraction(ax1, 5, 8, 'skyblue')
ax1.set_title('5/8', fontsize=16)

draw_fraction(ax2, 7, 9, 'lightgreen')
ax2.set_title('7/9', fontsize=16)

draw_fraction(ax3, 35, 72, 'lightcoral')
ax3.set_title('35/72', fontsize=16)

plt.tight_layout()
plt.show()
        ```,
        width: 360pt
      ),
    )
  ]
]

#only("4")[
  #voiceover("Here's a visual representation of our fractions. The first circle shows 5/8, with 5 out of 8 parts colored. The second shows 7/9, with 7 out of 9 parts colored. The last circle represents our result, 35/72, with 35 out of 72 parts colored. This helps us visualize how the product of these fractions results in a smaller fraction of the whole.")
]
]

#slide()[
  #text(size: 30pt, weight: "bold")[Why This Works]
  #v(40pt)

  #only("5-")[- Multiply numerators: $5 dot 7 = 35$]
  #v(20pt)
  #only("6-")[- Multiply denominators: $8 dot 9 = 72$]
  #v(20pt)
  #only("7-")[- Result: $35/72$]

  #only("5")[
    #voiceover("Let's understand why this method works. When we multiply fractions, we're essentially asking: what fraction of the second fraction is represented by the first fraction?")
  ]

  #only("6")[
    #voiceover("We multiply the numerators to find how many parts we're considering, and we multiply the denominators to find out of how many total parts.")
  ]

  #only("7")[
    #voiceover("This gives us our result of 35/72. Remember, practice makes perfect! Keep working on these problems to solidify your understanding of fraction multiplication.")
  ]
]