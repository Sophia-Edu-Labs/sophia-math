#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Review: Solving Quadratic Equations 📚]
  #v(40pt)
  #only("1-")[- Quadratic equations appear in many real-world problems 🌍]
  #only("2-")[- The p-q formula is a powerful tool for solving them 🛠️]
  #only("3-")[- Let's review how to use it effectively 🔍]

  #only("1")[
    #voiceover("Let's review solving quadratic equations using the p-q formula. Quadratic equations are essential in many real-world applications, from physics to economics.")
  ]
  #only("2")[
    #voiceover("The p-q formula is a powerful tool that allows us to solve these equations quickly and efficiently.")
  ]
  #only("3")[
    #voiceover("Let's review how to use this formula effectively to solve quadratic equations.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[The p-q Formula 🧮]
  #v(40pt)
  #only("1-")[Standard form: $a x^2 + b x + c = 0$]
  #v(20pt)
  #only("2-")[p-q form: $x^2 + p x + q = 0$]
  #v(20pt)
  #only("3-")[p-q formula: $x_(1,2) = -p/2 ± sqrt((p/2)^2 - q)$]

  #only("1")[
    #voiceover("Let's start by reviewing the standard form of a quadratic equation: a x squared plus b x plus c equals zero, where a, b, and c are constants and a is not equal to zero.")
  ]
  #only("2")[
    #voiceover("To use the p-q formula, we first need to transform the equation into p-q form: x squared plus p x plus q equals zero. Here, p equals b divided by a, and q equals c divided by a.")
  ]
  #only("3")[
    #voiceover("The p-q formula itself is: x equals negative p over 2, plus or minus the square root of p over 2 squared minus q. This gives us the two solutions to the quadratic equation.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Applying the Formula: Step by Step 👣]
  #v(40pt)
  #only("1-")[1. Identify p and q 🔍]
  #only("2-")[2. Substitute into the formula ➕]
  #only("3-")[3. Calculate the solutions ✅]

  #only("1")[
    #voiceover("Now, let's review the steps to apply the p-q formula. First, we need to identify p and q in our equation.")
  ]
  #only("2")[
    #voiceover("Next, we substitute these values into the p-q formula.")
  ]
  #only("3")[
    #voiceover("Finally, we calculate the solutions by simplifying the expression inside the square root and then finding the two values of x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Example: Solving a Quadratic Equation 🌟]
  #v(40pt)
  #only("1-")[Given equation: $x^2 - 6x + 8 = 0$]
  #only("2-")[Identify: $p = -6$, $q = 8$]
  #only("3-")[Apply: $x_(1,2) = -(-6)/2 ± sqrt(((-6)/2)^2 - 8)$]
  #only("4-")[Simplify: $x_(1,2) = 3 ± sqrt(9 - 8) = 3 ± 1$]
  #only("5-")[Solutions: $x_1 = 4$, $x_2 = 2$]

  #only("1")[
    #voiceover("Let's solve an example: x squared minus 6x plus 8 equals zero.")
  ]
  #only("2")[
    #voiceover("First, we identify p and q. Here, p equals negative 6, and q equals 8.")
  ]
  #only("3")[
    #voiceover("Now, we apply the p-q formula: x equals negative of negative 6 over 2, plus or minus the square root of negative 6 over 2 squared minus 8.")
  ]
  #only("4")[
    #voiceover("Simplifying, we get: x equals 3 plus or minus the square root of 9 minus 8, which is 3 plus or minus 1.")
  ]
  #only("5")[
    #voiceover("This gives us two solutions: x1 equals 4, and x2 equals 2.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary: Key Points 📝]
  #v(40pt)
  #only("1-")[- Transform to p-q form: $x^2 + p x + q = 0$ 🔄]
  #only("2-")[- Apply formula: $x_(1,2) = -p/2 ± sqrt((p/2)^2 - q)$ 🧮]
  #only("3-")[- Practice identifying p and q quickly 🏃‍♂️]
  #only("4-")[- Remember: Two solutions in most cases ✌️]

  #only("1")[
    #voiceover("To recap, always start by transforming your equation to p-q form: x squared plus p x plus q equals zero.")
  ]
  #only("2")[
    #voiceover("Then apply the formula: x equals negative p over 2, plus or minus the square root of p over 2 squared minus q.")
  ]
  #only("3")[
    #voiceover("Practice identifying p and q quickly to speed up your problem-solving.")
  ]
  #only("4")[
    #voiceover("And remember, in most cases, you'll find two solutions to your quadratic equation.")
  ]
]