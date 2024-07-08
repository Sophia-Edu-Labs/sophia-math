#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Changing Fractions: Same Value, Different Form]
  #v(40pt)

  #only("1-")[
    Original fraction: $1/3$
  ]

  #only("2-")[
    Target denominator: $6$
  ]

  #only("1")[
    #voiceover("Great job on solving this problem! Let's go through the solution step by step to understand how we change one-third to an equivalent fraction with a denominator of 6.")
  ]

  #only("2")[
    #voiceover("We start with the fraction one-third, and our goal is to create an equivalent fraction with a denominator of 6.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[The Key: Multiply Both Parts]
  #v(40pt)

  #only("1-")[
    - To change denominator, multiply both numerator and denominator by the same number
  ]

  #only("2-")[
    - This ensures the fraction's value remains unchanged
  ]

  #only("3-")[
    - We need to find what to multiply 3 by to get 6
  ]

  #only("1")[
    #voiceover("The key to changing a fraction while keeping its value the same is to multiply both the numerator and denominator by the same number.")
  ]

  #only("2")[
    #voiceover("This operation is like multiplying by 1, which doesn't change the fraction's value.")
  ]

  #only("3")[
    #voiceover("In this case, we need to figure out what number we should multiply 3 by to get 6 in the denominator.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Finding the Multiplier]
  #v(40pt)

  #only("1-")[
    $3 dot x = 6$
  ]

  #only("2-")[
    $x = 6/3 = 2$
  ]

  #only("3-")[
    So, we multiply both parts by 2:
  ]

  #only("4-")[
    $(1 dot 2)/(3 dot 2) = 2/6$
  ]

  #only("1")[
    #voiceover("Let's set up an equation: 3 times some number equals 6.")
  ]

  #only("2")[
    #voiceover("Solving this, we find that x equals 6 divided by 3, which is 2.")
  ]

  #only("3")[
    #voiceover("This means we need to multiply both the numerator and denominator by 2.")
  ]

  #only("4")[
    #voiceover("So, one times 2 over 3 times 2 gives us two-sixths.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Result]
  #v(40pt)

  #only("1-")[
    $1/3 = 2/6$
  ]

  #only("2-")[
    Both fractions represent the same value! 🎉
  ]

  #only("1")[
    #voiceover("And there we have it! One-third is equal to two-sixths.")
  ]

  #only("2")[
    #voiceover("Both of these fractions represent the same value, just written in different forms. Well done on working through this problem!")
  ]
]