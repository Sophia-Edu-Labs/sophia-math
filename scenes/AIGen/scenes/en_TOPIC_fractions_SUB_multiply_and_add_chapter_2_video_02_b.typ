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
    $4/5 times 3/4$
  ]

  #v(20pt)

  #only("2-")[
    $= (4 dot 3) / (5 dot 4)$
  ]

  #v(20pt)

  #only("3-")[
    $= 12 / 20$
  ]

  #v(20pt)

  #only("4-")[
    $= 3 / 5$ (simplified)
  ]

  #only("1")[
    #voiceover("Not quite. Let's walk through the correct solution step-by-step.")
  ]

  #only("2")[
    #voiceover("To multiply fractions, we multiply the numerators together and the denominators together. So, we multiply 4 by 3 in the numerator, and 5 by 4 in the denominator.")
  ]

  #only("3")[
    #voiceover("This gives us 12 over 20.")
  ]

  #only("4")[
    #voiceover("We can simplify this fraction by dividing both the numerator and denominator by their greatest common divisor, which is 4. 12 divided by 4 is 3, and 20 divided by 4 is 5. So our final answer is 3 fifths.")
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

# First fraction: 4/5
ax1.pie([4, 1], labels=['4/5', ''], colors=['#ff9999', 'white'], startangle=90)
ax1.set_title('4/5')

# Second fraction: 3/4
ax2.pie([3, 1], labels=['3/4', ''], colors=['#66b3ff', 'white'], startangle=90)
ax2.set_title('3/4')

# Result: 12/20 = 3/5
ax3.pie([12, 8], labels=['12/20 = 3/5', ''], colors=['#99ff99', 'white'], startangle=90)
ax3.set_title('12/20 = 3/5')

plt.tight_layout()
plt.show()
        ```,
        width: 360pt
      ),
      caption: [],
    )
  ]]

  #only("1")[
    #voiceover("Let's visualize this multiplication. Here we have three pie charts.")
  ]

  #only("2")[
    #voiceover("The first chart shows 4 fifths, which is our first fraction.")
  ]

  #only("3")[
    #voiceover("The second chart represents 3 fourths, our second fraction.")
  ]

  #only("4")[
    #voiceover("The last chart shows our result: 12 twentieths, which simplifies to 3 fifths. Notice how it's smaller than 4 fifths but larger than 3 fourths.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Why This Works]
  #v(40pt)

  #only("1-")[- Multiplication is repeated addition]
  #v(20pt)
  #only("2-")[- $(4/5) dot (3/4) = 4/5$ of $3/4$]
  #v(20pt)
  #only("3-")[- We're finding a fraction of a fraction]
  #v(20pt)
  #only("4-")[- Result is always smaller than or equal to the smaller fraction]

  #only("1")[
    #voiceover("Now, let's understand why this multiplication method works. First, remember that multiplication is essentially repeated addition.")
  ]

  #only("2")[
    #voiceover("When we multiply 4 fifths by 3 fourths, we're actually finding 4 fifths of 3 fourths.")
  ]

  #only("3")[
    #voiceover("In other words, we're finding a fraction of another fraction. This is why we multiply the numerators and denominators separately.")
  ]

  #only("4")[
    #voiceover("An interesting thing to note is that when we multiply fractions, our result will always be smaller than or equal to the smaller of the two fractions, unless one of the fractions is improper.")
  ]
]