#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving Quadratic Equations]
  #v(40pt)
  #only("1-")[- Equation: $x^2 - 2x - 3 = 0$]
  #v(20pt)
  #only("2-")[- Using p-q formula: $x = -p/2 ± sqrt((p/2)^2 + q)$]
  #v(20pt)
  #only("3-")[- Where $p = -2$ and $q = -3$]
  #only("1")[
    #voiceover("No worries, let's go through the correct solution step-by-step. We start with the equation x squared minus two x minus three equals zero.")
  ]
  #only("2")[
    #voiceover("To solve this, we'll use the p-q formula. This formula states that x equals negative p over two, plus or minus the square root of p over two squared plus q.")
  ]
  #only("3")[
    #voiceover("In our equation, p equals negative two and q equals negative three.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Applying the Formula]
  #v(40pt)
  #only("1-")[- $x = -(-2)/2 ± sqrt(((-2)/2)^2 + (-3))$]
  #v(20pt)
  #only("2-")[- $x = 1 ± sqrt(1 - 3)$]
  #v(20pt)
  #only("3-")[- $x = 1 ± sqrt(-2)$]
  #only("1")[
    #voiceover("Now, let's plug these values into our formula. We get x equals negative of negative two over two, plus or minus the square root of negative two over two squared plus negative three.")
  ]
  #only("2")[
    #voiceover("Simplifying, we get x equals one plus or minus the square root of one minus three.")
  ]
  #only("3")[
    #voiceover("Which further simplifies to x equals one plus or minus the square root of negative two.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Simplifying the Result]
  #v(40pt)
  #only("1-")[- $x = 1 ± sqrt(2)i$]
  #v(20pt)
  #only("2-")[- $x = 1 + sqrt(2)i$ or $x = 1 - sqrt(2)i$]
  #v(20pt)
  #only("3-")[- But we're looking for real solutions... 🤔]
  #only("1")[
    #voiceover("Now, the square root of negative two can be written as i times the square root of two, where i is the imaginary unit.")
  ]
  #only("2")[
    #voiceover("This gives us two complex solutions: x equals one plus the square root of two i, or x equals one minus the square root of two i.")
  ]
  #only("3")[
    #voiceover("However, we're looking for real solutions to this equation. So what went wrong?")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Correcting Our Approach]
  #v(40pt)
  #only("1-")[- We used the wrong formula! 😅]
  #v(20pt)
  #only("2-")[- Correct formula: $x = -b/(2a) ± sqrt((b/(2a))^2 - c/a)$]
  #v(20pt)
  #only("3-")[- Where $a = 1$, $b = -2$, and $c = -3$]
  #only("1")[
    #voiceover("The issue is that we used the wrong formula! The p-q formula is for equations in the form x squared plus p x plus q equals zero.")
  ]
  #only("2")[
    #voiceover("For our equation, we should use the more general quadratic formula: x equals negative b over two a, plus or minus the square root of b over two a squared minus c over a.")
  ]
  #only("3")[
    #voiceover("In our equation, a equals one, b equals negative two, and c equals negative three.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving with the Correct Formula]
  #v(40pt)
  #only("1-")[- $x = -(-2)/(2(1)) ± sqrt(((-2)/(2(1)))^2 - (-3)/1)$]
  #v(20pt)
  #only("2-")[- $x = 1 ± sqrt(1 + 3)$]
  #v(20pt)
  #only("3-")[- $x = 1 ± sqrt(4)$ = $1 ± 2$]
  #only("1")[
    #voiceover("Let's apply this formula. We get x equals negative of negative two over two times one, plus or minus the square root of negative two over two times one squared, minus negative three over one.")
  ]
  #only("2")[
    #voiceover("Simplifying, we get x equals one plus or minus the square root of one plus three.")
  ]
  #only("3")[
    #voiceover("Which simplifies to x equals one plus or minus the square root of four, which is one plus or minus two.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[- $x = 1 + 2 = 3$ or $x = 1 - 2 = -1$]
  #v(20pt)
  #only("2-")[- Solutions: $x = 3$ or $x = -1$ ✅]
  #v(20pt)
  #only("3-")[💡 Always check your solutions!]
  #only("1")[
    #voiceover("This gives us our two solutions: x equals one plus two, which is three, or x equals one minus two, which is negative one.")
  ]
  #only("2")[
    #voiceover("So our final answer is: x equals three or x equals negative one.")
  ]
  #only("3")[
    #voiceover("Remember, it's always a good idea to check your solutions by plugging them back into the original equation. Great work on solving this quadratic equation!")
  ]
]