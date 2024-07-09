#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving Quadratic Equations]
  #v(40pt)
  #only("1-")[- Equation: $x^2 - 6x + 9 = 0$]
  #v(20pt)
  #only("2-")[- Using p-q formula: $x = -p/2 ± sqrt((p/2)^2 - q)$]
  #v(20pt)
  #only("3-")[- Where $p = -6$ and $q = 9$]
  #only("1")[
    #voiceover("Not quite, but let's go through the correct solution step-by-step. We start with the quadratic equation x squared minus 6x plus 9 equals zero.")
  ]
  #only("2")[
    #voiceover("To solve this, we'll use the p-q formula. The formula states that x equals negative p over 2, plus or minus the square root of p over 2 squared minus q.")
  ]
  #only("3")[
    #voiceover("In our equation, p is equal to negative 6, and q is equal to 9.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Applying the Formula]
  #v(40pt)
  #only("1-")[- Step 1: $x = -(-6)/2 ± sqrt(((-6)/2)^2 - 9)$]
  #v(20pt)
  #only("2-")[- Step 2: $x = 3 ± sqrt(9 - 9)$]
  #v(20pt)
  #only("3-")[- Step 3: $x = 3 ± sqrt(0) = 3 ± 0$]
  #only("1")[
    #voiceover("Let's apply the formula. We substitute negative 6 for p and 9 for q.")
  ]
  #only("2")[
    #voiceover("Simplifying, we get x equals 3 plus or minus the square root of 9 minus 9.")
  ]
  #only("3")[
    #voiceover("This simplifies to 3 plus or minus the square root of 0, which is just 3 plus or minus 0.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Solution]
  #v(40pt)
  #only("1-")[- $x = 3$]
  #v(20pt)
  #only("2-")[- The equation has one solution: 3]
  #v(20pt)
  #only("3-")[💡 This is a perfect square trinomial!]
  #only("1")[
    #voiceover("Therefore, our final solution is x equals 3.")
  ]
  #only("2")[
    #voiceover("The equation has only one solution, which is 3.")
  ]
  #only("3")[
    #voiceover("It's worth noting that this equation is a perfect square trinomial, which is why we get only one solution.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Verification]
  #v(40pt)
  #only("1-")[- Let's verify: $(3)^2 - 6(3) + 9 = 0$]
  #v(20pt)
  #only("2-")[- $9 - 18 + 9 = 0$]
  #v(20pt)
  #only("3-")[- $0 = 0$ ✅]
  #only("1")[
    #voiceover("Let's verify our solution by plugging 3 back into the original equation.")
  ]
  #only("2")[
    #voiceover("3 squared minus 6 times 3 plus 9 equals 9 minus 18 plus 9.")
  ]
  #only("3")[
    #voiceover("This simplifies to 0 equals 0, confirming that our solution is correct.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)
  #only("1-")[- We solved $x^2 - 6x + 9 = 0$ using the p-q formula 📊]
  #v(20pt)
  #only("2-")[- The solution is $x = 3$ 🎉]
  #v(20pt)
  #only("3-")[- This is a special case with only one solution 🔍]
  #only("1")[
    #voiceover("To summarize, we solved the quadratic equation x squared minus 6x plus 9 equals 0 using the p-q formula.")
  ]
  #only("2")[
    #voiceover("We found that the solution is x equals 3.")
  ]
  #only("3")[
    #voiceover("This is a special case where we have only one solution, which occurs when the equation represents a perfect square trinomial. Well done on solving this problem!")
  ]
]