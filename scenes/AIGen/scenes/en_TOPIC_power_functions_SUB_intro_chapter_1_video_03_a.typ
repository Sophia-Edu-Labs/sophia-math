#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Evaluating Cubic Functions]
  #v(40pt)
  #only("1-")[
    $f(x) = 2x^3 + 3x^2 + x + 1$
  ]
  #v(20pt)
  #only("2-")[
    Find $f(1)$:
  ]
  #only("1")[
    #voiceover("Great job on tackling this problem! Let's walk through the solution step-by-step. We're dealing with a cubic function f of x equals 2x cubed plus 3x squared plus x plus 1.")
  ]
  #only("2")[
    #voiceover("Our task is to find the value of f of 1, which means we need to evaluate the function at x equals 1.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Substitute x with 1]
  #v(40pt)
  #only("1-")[
    $f(1) = 2(1)^3 + 3(1)^2 + 1 + 1$
  ]
  #v(20pt)
  #only("2-")[
    $f(1) = 2(1) + 3(1) + 1 + 1$
  ]
  #only("1")[
    #voiceover("Let's start by substituting x with 1 in our function. This gives us f of 1 equals 2 times 1 cubed, plus 3 times 1 squared, plus 1, plus 1.")
  ]
  #only("2")[
    #voiceover("Now, let's simplify the exponents. One cubed is just 1, and one squared is also 1. So our equation becomes 2 times 1, plus 3 times 1, plus 1, plus 1.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Evaluate Each Term]
  #v(40pt)
  #only("1-")[
    $f(1) = 2 + 3 + 1 + 1$
  ]
  #v(20pt)
  #only("2-")[
    $f(1) = 7$
  ]
  #only("1")[
    #voiceover("Now let's evaluate each term. 2 times 1 is 2, 3 times 1 is 3, and we have two more 1's.")
  ]
  #only("2")[
    #voiceover("Adding these up, we get 2 plus 3 plus 1 plus 1, which equals 7.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[
    $f(1) = 7$
  ]
  #v(20pt)
  #only("2-")[
    The value of the function at x = 1 is 7. 🎉
  ]
  #only("1")[
    #voiceover("So, our final answer is that f of 1 equals 7.")
  ]
  #only("2")[
    #voiceover("This means when we input 1 into our cubic function, it outputs 7. Great job on solving this problem!")
  ]
]