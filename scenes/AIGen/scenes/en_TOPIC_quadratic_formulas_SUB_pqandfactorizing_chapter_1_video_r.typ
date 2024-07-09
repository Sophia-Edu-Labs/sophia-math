#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Review: Quadratic Equations 📊]
  #v(40pt)
  #only("1-")[- Real-world problems often involve quadratic relationships 🌍]
  #only("2-")[- Quadratic equations: $a x^2 + b x + c = 0$ 📝]
  #only("3-")[- p-q formula: a powerful tool for solving these equations 🛠️]
  
  #only("1")[
    #voiceover("Let's review quadratic equations and the p-q formula. Many real-world problems involve quadratic relationships.")
  ]
  #only("2")[
    #voiceover("A quadratic equation has the general form a x squared plus b x plus c equals zero, where a, b, and c are constants and a is not equal to zero.")
  ]
  #only("3")[
    #voiceover("The p-q formula is a powerful tool we use to solve these equations. Let's review how it works.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[The p-q Formula]
  #v(40pt)
  #only("1-")[Standard form: $a x^2 + b x + c = 0$]
  #only("2-")[Divide by $a$: $x^2 + (b/a) x + (c/a) = 0$]
  #only("3-")[Let $p = b/a$ and $q = c/a$]
  #only("4-")[p-q form: $x^2 + p x + q = 0$]
  #only("5-")[p-q formula: $x_(1,2) = -p/2 ± sqrt((p/2)^2 - q)$]
  
  #only("1")[
    #voiceover("We start with the standard form of a quadratic equation: a x squared plus b x plus c equals zero.")
  ]
  #only("2")[
    #voiceover("To apply the p-q formula, we first divide the entire equation by a.")
  ]
  #only("3")[
    #voiceover("We then define p as b divided by a, and q as c divided by a.")
  ]
  #only("4")[
    #voiceover("This gives us the p-q form of the quadratic equation: x squared plus p x plus q equals zero.")
  ]
  #only("5")[
    #voiceover("Finally, we can apply the p-q formula: x equals negative p over 2, plus or minus the square root of p over 2 squared minus q.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary 📝]
  #v(40pt)
  #only("1-")[- p-q formula solves $x^2 + p x + q = 0$ 🧮]
  #only("2-")[- Solution: $x_(1,2) = -p/2 ± sqrt((p/2)^2 - q)$ 🔍]
  #only("3-")[- Efficient for many quadratic equations 🚀]
  #only("4-")[- Practice to master its application! 💪]
  
  #only("1")[
    #voiceover("To recap, the p-q formula is used to solve quadratic equations in the form x squared plus p x plus q equals zero.")
  ]
  #only("2")[
    #voiceover("The formula gives us the solutions: x equals negative p over 2, plus or minus the square root of p over 2 squared minus q.")
  ]
  #only("3")[
    #voiceover("This formula is efficient for solving many quadratic equations.")
  ]
  #only("4")[
    #voiceover("Remember, practice is key to mastering the application of the p-q formula!")
  ]
]