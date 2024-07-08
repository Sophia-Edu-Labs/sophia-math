#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Changing Fractions]
  #v(40pt)

  #only("1-")[
    #text(size: 24pt)[Original fraction: $2/3$]
  ]

  #only("2-")[
    #text(size: 24pt)[Target denominator: $9$]
  ]

  #only("3-")[
    #text(size: 24pt)[Multiply both numerator and denominator by $3$:]
  ]

  #only("4-")[
    $2/3 = (2 dot 3)/(3 dot 3) = 6/9$
  ]

  #only("1")[
    #voiceover("Not quite. Let's walk through the correct solution step-by-step.")
  ]

  #only("2")[
    #voiceover("We start with our original fraction, two-thirds, and we want to change it to an equivalent fraction with a denominator of 9.")
  ]

  #only("3")[
    #voiceover("To do this, we need to multiply both the numerator and denominator by the same number. We can find this number by dividing our target denominator, 9, by our current denominator, 3.")
  ]

  #only("4")[
    #voiceover("Nine divided by three equals three. So, we multiply both the numerator and denominator by 3. Two times three is six, and three times three is nine. Therefore, two-thirds is equal to six-ninths.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Visualizing the Equivalence]
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

# First pie chart for 2/3
sizes1 = [2, 1]
labels1 = ['2/3', '1/3']
colors1 = ['#ff9999', '#66b3ff']
ax1.pie(sizes1, labels=labels1, colors=colors1, autopct='%1.1f%%', startangle=90)
ax1.set_title('2/3')

# Second pie chart for 6/9
sizes2 = [6, 3]
labels2 = ['6/9', '3/9']
colors2 = ['#ff9999', '#66b3ff']
ax2.pie(sizes2, labels=labels2, colors=colors2, autopct='%1.1f%%', startangle=90)
ax2.set_title('6/9')

plt.suptitle('Equivalent Fractions: 2/3 = 6/9', fontsize=16)
plt.tight_layout()
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Let's visualize why two-thirds and six-ninths are equivalent. Here, we have two pie charts. The one on the left represents two-thirds, while the one on the right represents six-ninths.")
  ]

  #only("2")[
    #voiceover("As you can see, both charts show the same proportion of the whole, just divided into different numbers of parts. This visual representation helps us understand that these fractions are indeed equivalent.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Key Takeaways]
  #v(40pt)

  #only("1-")[
    - To change a fraction's denominator, multiply both numerator and denominator by the same number 🔢
  ]

  #only("2-")[
    - The resulting fraction is equivalent to the original 🟰
  ]

  #only("3-")[
    - This process is called "expanding" or "scaling" a fraction ⚖️
  ]

  #only("1")[
    #voiceover("Let's summarize what we've learned. First, to change a fraction's denominator while keeping its value the same, we multiply both the numerator and denominator by the same number.")
  ]

  #only("2")[
    #voiceover("This results in a new fraction that is equivalent to the original. In our case, two-thirds is equivalent to six-ninths.")
  ]

  #only("3")[
    #voiceover("This process is often called 'expanding' or 'scaling' a fraction. It's a fundamental concept in working with fractions and can be very useful in many mathematical operations.")
  ]
]