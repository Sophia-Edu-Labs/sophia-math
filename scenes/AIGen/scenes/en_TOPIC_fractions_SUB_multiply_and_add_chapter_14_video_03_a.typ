#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Equivalent Fractions]
  #v(40pt)

  #only("1-")[
    #text(size: 24pt)[Given: $3/4$]
    #v(10pt)
    #text(size: 24pt)[Target denominator: 16]
  ]

  #only("1")[
    #voiceover("Great job! You've correctly changed three-fourths to a fraction with a denominator of 16. Let's walk through the solution step-by-step.")
  ]

  #only("2-")[
    #align(center)[#text(fill: aqua)[⇓ Find the multiplier]]
  ]

  #only("3-")[
    $16 / 4 = 4$
  ]

  #only("2")[
    #voiceover("To change the denominator from 4 to 16, we need to find what number we multiply 4 by to get 16.")
  ]

  #only("3")[
    #voiceover("We divide 16 by 4, which gives us 4. This means we need to multiply both the numerator and denominator by 4.")
  ]

  #only("4-")[
    #align(center)[#text(fill: aqua)[⇓ Multiply both numerator and denominator]]
  ]

  #only("5-")[
    $(3 * 4) / (4 * 4) = 12/16$
  ]

  #only("4")[
    #voiceover("Now, we multiply both the numerator and denominator by 4.")
  ]

  #only("5")[
    #voiceover("Three times 4 is 12, and 4 times 4 is 16. So, we get 12 over 16.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Equivalent Fractions Visualized]
  #v(40pt)

  #only("1-")[
    #box()[
      #morphchildren(id: "plot")[
        #figure(
          pyimage(
```

          import matplotlib.pyplot as plt
import numpy as np

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10, 5))

# 3/4 pie chart
sizes = [3, 1]
labels = ['3/4', '1/4']
colors = ['#ff9999', '#66b3ff']
ax1.pie(sizes, labels=labels, colors=colors, autopct='%1.1f%%', startangle=90)
ax1.set_title('3/4')

# 12/16 pie chart
sizes = [12, 4]
labels = ['12/16', '4/16']
colors = ['#ff9999', '#66b3ff']
ax2.pie(sizes, labels=labels, colors=colors, autopct='%1.1f%%', startangle=90)
ax2.set_title('12/16')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Here's a visual representation of the equivalent fractions. On the left, we have three-fourths, and on the right, we have twelve-sixteenths. As you can see, they represent the same portion of the whole, just divided into different numbers of parts.")
  ]

  #only("2-")[
    #text(size: 24pt, weight: "bold")[Key Point: $3/4 = 12/16$]
  ]

  #only("2")[
    #voiceover("The key point to remember is that three-fourths is equal to twelve-sixteenths. These fractions are equivalent because they represent the same value, just expressed with different numbers.")
  ]
]