#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Review: Solving Quadratic Equations 📊]
  #v(40pt)
  #only("1-")[- Quadratic equations appear in many real-world problems 🌍]
  #only("2-")[- Multiple methods for solving: factoring, completing the square, quadratic formula 🧮]
  #only("3-")[- Let's review these methods with examples 📝]

  #only("1")[
    #voiceover("Let's review solving quadratic equations. These equations are crucial in many real-world applications, from physics to economics.")
  ]
  #only("2")[
    #voiceover("We have several methods to solve them, including factoring, completing the square, and using the quadratic formula.")
  ]
  #only("3")[
    #voiceover("Let's review these methods with some examples to enhance our problem-solving skills.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Method 1: Factoring 🔍]
  #v(40pt)
  #only("1-")[Consider: $x^2 + 5x + 6 = 0$]
  #only("2-")[Factor: $(x + 2)(x + 3) = 0$]
  #only("3-")[Set each factor to zero:]
  #only("4-")[   $x + 2 = 0$ or $x + 3 = 0$]
  #only("5-")[Solve: $x = -2$ or $x = -3$]

  #only("1")[
    #voiceover("Let's start with factoring. Consider the equation x squared plus 5x plus 6 equals 0.")
  ]
  #only("2")[
    #voiceover("We can factor this as x plus 2 times x plus 3 equals 0.")
  ]
  #only("3")[
    #voiceover("Now, we set each factor to zero.")
  ]
  #only("4")[
    #voiceover("This gives us x plus 2 equals 0 or x plus 3 equals 0.")
  ]
  #only("5")[
    #voiceover("Solving these, we get x equals negative 2 or x equals negative 3.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Method 2: Quadratic Formula 🔬]
  #v(40pt)
  #only("1-")[For $a x^2 + b x + c = 0$]
  #only("2-")[Use: $x = (-b plus.minus sqrt(b^2 - 4a c)) / (2a)$]
  #only("3-")[Example: $2x^2 - 5x - 3 = 0$]
  #only("4-")[$a=2$, $b=-5$, $c=-3$]
  #only("5-")[$x = (5 plus.minus sqrt((-5)^2 - 4(2)(-3))) / (2(2))$]
  #only("6-")[$x = (5 plus.minus sqrt(25 + 24)) / 4 = (5 plus.minus 7) / 4$]
  #only("7-")[$x = 3$ or $x = -1/2$]

  #only("1")[
    #voiceover("Now, let's review the quadratic formula. For a general quadratic equation ax squared plus bx plus c equals 0,")
  ]
  #only("2")[
    #voiceover("we use the formula: x equals negative b plus or minus the square root of b squared minus 4ac, all divided by 2a.")
  ]
  #only("3")[
    #voiceover("Let's apply this to the equation 2x squared minus 5x minus 3 equals 0.")
  ]
  #only("4")[
    #voiceover("Here, a equals 2, b equals negative 5, and c equals negative 3.")
  ]
  #only("5")[
    #voiceover("Plugging these into our formula, we get x equals 5 plus or minus the square root of negative 5 squared minus 4 times 2 times negative 3, all divided by 2 times 2.")
  ]
  #only("6")[
    #voiceover("Simplifying, we get x equals 5 plus or minus the square root of 49, all divided by 4, which is 5 plus or minus 7, divided by 4.")
  ]
  #only("7")[
    #voiceover("This gives us x equals 3 or x equals negative one-half.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary 📝]
  #v(40pt)
  #only("1-")[- Quadratic equations: $a x^2 + b x + c = 0$ 📊]
  #only("2-")[- Factoring: useful for simple equations 🧩]
  #only("3-")[- Quadratic formula: works for all quadratics 🔬]
  #only("4-")[- Practice different methods for efficiency 💪]

  #only("1")[
    #voiceover("To summarize, we've reviewed solving quadratic equations in the form ax squared plus bx plus c equals 0.")
  ]
  #only("2")[
    #voiceover("Factoring is useful for simpler equations and helps develop algebraic intuition.")
  ]
  #only("3")[
    #voiceover("The quadratic formula is a powerful tool that works for all quadratic equations.")
  ]
  #only("4")[
    #voiceover("Practice using different methods to solve quadratics efficiently. This will enhance your problem-solving skills and accuracy in various mathematical contexts.")
  ]
]