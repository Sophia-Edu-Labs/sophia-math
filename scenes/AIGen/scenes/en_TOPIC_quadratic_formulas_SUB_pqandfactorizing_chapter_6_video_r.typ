#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Review: Factorizing Quadratic Equations 🧮]
  #v(40pt)
  #only("1-")[- Quadratic equations appear in many real-world problems 🌍]
  #only("2-")[- Factorizing is a key method to solve them ✅]
  #only("3-")[- Let's review the process with some examples 📝]

  #only("1")[
    #voiceover("Let's review factorizing quadratic equations. Quadratic equations are essential in many real-world applications, from physics to economics.")
  ]
  #only("2")[
    #voiceover("Factorizing is a powerful method to solve these equations. It allows us to break down complex expressions into simpler parts.")
  ]
  #only("3")[
    #voiceover("We'll go through the process step by step with some examples to reinforce our understanding and improve our speed.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Factorizing Process 🔍]
  #v(40pt)
  #only("1-")[1. Identify the quadratic equation: $a x^2 + b x + c = 0$]
  #only("2-")[2. Find two numbers that:
    - Multiply to give $a c$
    - Add to give $b$]
  #only("3-")[3. Rewrite the middle term using these numbers]
  #only("4-")[4. Group terms and factor out common factors]
  #only("5-")[5. Set each factor to zero and solve]

  #only("1")[
    #voiceover("Let's review the factorizing process. First, we identify the quadratic equation in the standard form a x squared plus b x plus c equals zero.")
  ]
  #only("2")[
    #voiceover("Next, we find two numbers that multiply to give a c and add to give b. This is often the trickiest part.")
  ]
  #only("3")[
    #voiceover("Then, we rewrite the middle term using these numbers we found.")
  ]
  #only("4")[
    #voiceover("After that, we group the terms and factor out common factors.")
  ]
  #only("5")[
    #voiceover("Finally, we set each factor to zero and solve for x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Example: $x^2 + 5x + 6 = 0$ 🌟]
  #v(20pt)
  #only("1-")[1. Identify: $a=1$, $b=5$, $c=6$]
  #only("2-")[2. Find numbers: $2$ and $3$ (2 × 3 = 6, 2 + 3 = 5)]
  #only("3-")[3. Rewrite: $x^2 + 2x + 3x + 6 = 0$]
  #only("4-")[4. Group and factor: $(x^2 + 2x) + (3x + 6) = 0$
               $x(x + 2) + 3(x + 2) = 0$
               $(x + 3)(x + 2) = 0$]
  #only("5-")[5. Solve: $x = -3$ or $x = -2$]

  #only("1")[
    #voiceover("Let's work through an example: x squared plus 5x plus 6 equals zero. We identify a equals 1, b equals 5, and c equals 6.")
  ]
  #only("2")[
    #voiceover("We need to find two numbers that multiply to give 6 and add to give 5. These numbers are 2 and 3.")
  ]
  #only("3")[
    #voiceover("We rewrite the middle term: x squared plus 2x plus 3x plus 6 equals zero.")
  ]
  #only("4")[
    #voiceover("Now we group the terms: x squared plus 2x, plus 3x plus 6 equals zero. We factor out the common factors: x times x plus 2, plus 3 times x plus 2 equals zero. This gives us x plus 3 times x plus 2 equals zero.")
  ]
  #only("5")[
    #voiceover("Finally, we set each factor to zero and solve. x equals negative 3 or x equals negative 2.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary 📚]
  #v(40pt)
  #only("1-")[- Factorizing is a powerful method for quadratic equations 💪]
  #only("2-")[- Key steps: identify, find numbers, rewrite, group, solve 🔑]
  #only("3-")[- Practice improves speed and accuracy 🏃‍♂️]
  #only("4-")[- Remember: not all quadratics can be easily factored 🤔]

  #only("1")[
    #voiceover("To summarize, factorizing is a powerful method for solving quadratic equations.")
  ]
  #only("2")[
    #voiceover("The key steps are: identify the coefficients, find the right numbers, rewrite the equation, group terms, and solve.")
  ]
  #only("3")[
    #voiceover("Remember, practice is crucial for improving your speed and accuracy in factorizing.")
  ]
  #only("4")[
    #voiceover("However, keep in mind that not all quadratic equations can be easily factored. In such cases, other methods like the quadratic formula may be necessary.")
  ]
]