#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Subtracting Fractions]
  #v(40pt)

  #only("1-")[Exercise: $6/7 - 2/7$]
  #v(20pt)

  #only("2-")[Step 1: Identify common denominator]
  #v(10pt)
  #only("3-")[Step 2: Subtract numerators]
  #v(10pt)
  #only("4-")[Step 3: Simplify if possible]

  #only("1")[
    #voiceover("Great job! You've correctly solved this fraction subtraction problem. Let's go through the solution step-by-step to understand why 4/7 is indeed the correct answer.")
  ]

  #only("2")[
    #voiceover("First, we identify that both fractions already have a common denominator of 7. This makes our subtraction straightforward.")
  ]

  #only("3")[
    #voiceover("Next, we subtract the numerators while keeping the denominator the same. So, we have 6 minus 2 over 7.")
  ]

  #only("4")[
    #voiceover("Finally, we simplify if possible. In this case, 6 minus 2 equals 4, so our final answer is 4/7. The fraction 4/7 cannot be simplified further.")
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

# First fraction: 6/7
ax1.pie([6, 1], labels=['6/7', '1/7'], colors=['#ff9999','#ffffff'], startangle=90)
ax1.set_title('6/7')

# Second fraction: 2/7
ax2.pie([2, 5], labels=['2/7', '5/7'], colors=['#66b3ff','#ffffff'], startangle=90)
ax2.set_title('2/7')

# Result: 4/7
ax3.pie([4, 3], labels=['4/7', '3/7'], colors=['#99ff99','#ffffff'], startangle=90)
ax3.set_title('4/7 (Result)')

plt.tight_layout()
plt.show()
          ```,
          width: 360pt),
        )
      ]
    ]
  ]

  #only("1")[
    #voiceover("Let's visualize this subtraction using pie charts. The first chart shows 6/7, the second shows 2/7, and the third shows our result, 4/7.")
  ]

  #only("2")[
    #voiceover("As you can see, when we subtract the 2/7 portion from the 6/7 portion, we're left with 4/7.")
  ]

  #only("3")[
    #voiceover("This visual representation helps us understand why 6/7 minus 2/7 equals 4/7.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Key Points]
  #v(40pt)

  #only("1-")[- Common denominator: 7 🔢]
  #v(20pt)
  #only("2-")[- Subtraction: $6 - 2 = 4$ ➖]
  #v(20pt)
  #only("3-")[- Final answer: $4/7$ ✅]

  #only("1")[
    #voiceover("Let's recap the key points of this problem. First, we had a common denominator of 7, which made our subtraction straightforward.")
  ]

  #only("2")[
    #voiceover("We then performed the subtraction in the numerator: 6 minus 2 equals 4.")
  ]

  #only("3")[
    #voiceover("This gave us our final answer of 4/7. Remember, when subtracting fractions with the same denominator, we only subtract the numerators and keep the denominator the same.")
  ]
]