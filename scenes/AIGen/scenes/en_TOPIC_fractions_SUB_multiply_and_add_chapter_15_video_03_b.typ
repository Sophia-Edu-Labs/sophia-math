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
    #align(center)[
      $4/5 = ?/20$
    ]
  ]

  #only("1")[
    #voiceover("Not quite. Let's walk through the solution step-by-step to understand why 16/20 is equivalent to 4/5.")
  ]

  #only("2-")[
    #align(center)[
      $4/5 = (4 dot ?)/(5 dot ?)$
    ]
  ]

  #only("2")[
    #voiceover("To change 4/5 to an equivalent fraction with a denominator of 20, we need to multiply both the numerator and denominator by the same number. Let's think about what number we need to multiply 5 by to get 20.")
  ]

  #only("3-")[
    #align(center)[
      $4/5 = (4 dot 4)/(5 dot 4) = 16/20$
    ]
  ]

  #only("3")[
    #voiceover("We can see that 5 times 4 equals 20. So, we multiply both the numerator and denominator by 4. This gives us 16 over 20, which is our answer.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Why This Works]
  #v(40pt)

  #only("1-")[
    - Multiplying by 1 doesn't change value
  ]

  #only("1")[
    #voiceover("This method works because we're essentially multiplying the fraction by 1, which doesn't change its value.")
  ]

  #only("2-")[
    - $4/4 = 1$
  ]

  #only("2")[
    #voiceover("Remember, 4 divided by 4 equals 1.")
  ]

  #only("3-")[
    - $4/5 dot 4/4 = 16/20$
  ]

  #only("3")[
    #voiceover("So when we multiply 4/5 by 4/4, we're multiplying by 1, which gives us an equivalent fraction, 16/20.")
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

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10, 4))

# First fraction
ax1.pie([4, 1], labels=['4/5', '1/5'], colors=['#ff9999','#66b3ff'], autopct='%1.1f%%', startangle=90)
ax1.set_title('4/5')

# Second fraction
ax2.pie([16, 4], labels=['16/20', '4/20'], colors=['#ff9999','#66b3ff'], autopct='%1.1f%%', startangle=90)
ax2.set_title('16/20')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt
        ),
      )
    ]
  ]]

  #only("1")[
    #voiceover("Here's a visual representation of both fractions. As you can see, 4/5 and 16/20 represent the same portion of the whole, just divided into different numbers of parts.")
  ]

  #only("2")[
    #voiceover("This visual helps us understand that even though the numbers are different, the fractions are equivalent because they represent the same amount.")
  ]

  #only("3")[
    #voiceover("Remember, whenever you need to change a fraction to an equivalent one with a different denominator, multiply both the numerator and denominator by the same number. This ensures the fraction's value remains unchanged.")
  ]
]