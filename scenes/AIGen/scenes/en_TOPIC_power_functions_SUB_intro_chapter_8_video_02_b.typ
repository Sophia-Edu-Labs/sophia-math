#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving Power Equations]
  #v(40pt)
  #only("1-")[Equation: $2x^4 = 32$]
  #v(20pt)
  #only("2-")[Goal: Solve for $x$]
  #only("1")[
    #voiceover("Not quite, but let's go through the correct solution step-by-step. We start with the equation 2 x to the fourth power equals 32.")
  ]
  #only("2")[
    #voiceover("Our goal is to solve for x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Isolate the Power Term]
  #v(40pt)
  #only("1-")[- Divide both sides by 2:]
  #v(20pt)
  #only("2-")[$ x^4 = 16 $]
  #only("1")[
    #voiceover("First, let's isolate the power term. We do this by dividing both sides of the equation by 2.")
  ]
  #only("2")[
    #voiceover("This gives us x to the fourth power equals 16.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Take the Fourth Root]
  #v(40pt)
  #only("1-")[- Take the fourth root of both sides:]
  #v(20pt)
  #only("2-")[$ root(4, x^4) = root(4, 16) $]
  #v(20pt)
  #only("3-")[$ x = root(4, 16) $]
  #only("1")[
    #voiceover("Now, to isolate x, we need to take the fourth root of both sides.")
  ]
  #only("2")[
    #voiceover("The fourth root of x to the fourth power is just x, so we're left with x equals the fourth root of 16.")
  ]
  #only("3")[
    #voiceover("This simplifies our equation to x equals the fourth root of 16.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Simplify the Root]
  #v(40pt)
  #only("1-")[- Simplify $root(4, 16)$:]
  #v(20pt)
  #only("2-")[$ x = 2 $]
  #v(20pt)
  #only("3-")[✅ Check: $2(2^4) = 2(16) = 32$]
  #only("1")[
    #voiceover("The final step is to simplify the fourth root of 16.")
  ]
  #only("2")[
    #voiceover("The fourth root of 16 is 2, because 2 to the fourth power is 16. So our final answer is x equals 2.")
  ]
  #only("3")[
    #voiceover("We can check our answer by plugging it back into the original equation. 2 times 2 to the fourth power equals 2 times 16, which indeed equals 32.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)
  #only("1-")[- Original equation: $2x^4 = 32$]
  #v(20pt)
  #only("2-")[- Solution: $x = 2$]
  #v(20pt)
  #only("3-")[💡 Remember: nth root is the inverse of nth power!]
  #only("1")[
    #voiceover("To summarize, we started with the equation 2 x to the fourth power equals 32.")
  ]
  #only("2")[
    #voiceover("And we found that the solution is x equals 2.")
  ]
  #only("3")[
    #voiceover("Remember, taking the nth root is the inverse operation of raising to the nth power. This is key in solving power equations!")
  ]
]