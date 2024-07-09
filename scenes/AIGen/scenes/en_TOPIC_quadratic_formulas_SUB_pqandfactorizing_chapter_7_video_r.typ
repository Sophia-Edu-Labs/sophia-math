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
  #only("2-")[- Two main methods: p-q formula and factorizing 🧮]
  #only("3-")[- Let's review these methods step-by-step 📝]
  
  #only("1")[
    #voiceover("Let's review solving quadratic equations. These equations are crucial in many real-world applications, from physics to economics.")
  ]
  #only("2")[
    #voiceover("We'll focus on two main methods for solving quadratic equations: the p-q formula and factorizing.")
  ]
  #only("3")[
    #voiceover("Let's review these methods step-by-step to refresh our understanding.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[The p-q Formula Method 🔢]
  #v(40pt)
  #only("1-")[1️⃣ Standard form: $x^2 + p x + q = 0$]
  #only("2-")[2️⃣ p-q formula: $x_(1,2) = -p/2 ± sqrt((p/2)^2 - q)$]
  #only("3-")[3️⃣ Example: $x^2 - 5x + 6 = 0$]
  #only("4-")[   $p = -5$, $q = 6$]
  #only("5-")[   $x_(1,2) = 5/2 ± sqrt((5/2)^2 - 6)$]
  #only("6-")[   $x_1 = 3$, $x_2 = 2$]
  
  #only("1")[
    #voiceover("Let's start with the p-q formula method. First, we need our equation in standard form: x squared plus p x plus q equals zero.")
  ]
  #only("2")[
    #voiceover("The p-q formula states that x equals negative p over 2, plus or minus the square root of p over 2 squared minus q.")
  ]
  #only("3")[
    #voiceover("Let's apply this to an example: x squared minus 5x plus 6 equals zero.")
  ]
  #only("4")[
    #voiceover("We identify that p equals negative 5 and q equals 6.")
  ]
  #only("5")[
    #voiceover("Plugging these into our formula, we get x equals 5 over 2, plus or minus the square root of 5 over 2 squared minus 6.")
  ]
  #only("6")[
    #voiceover("Solving this gives us our two solutions: x equals 3 and x equals 2.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[The Factorizing Method 🧩]
  #v(40pt)
  #only("1-")[1️⃣ Rewrite as: $(x - r)(x - s) = 0$]
  #only("2-")[2️⃣ Solutions: $x = r$ or $x = s$]
  #only("3-")[3️⃣ Example: $x^2 - 5x + 6 = 0$]
  #only("4-")[   $(x - 3)(x - 2) = 0$]
  #only("5-")[   $x = 3$ or $x = 2$]
  
  #only("1")[
    #voiceover("Now, let's review the factorizing method. The goal is to rewrite our equation as the product of two factors equal to zero.")
  ]
  #only("2")[
    #voiceover("Once we have this form, our solutions are the values that make each factor zero.")
  ]
  #only("3")[
    #voiceover("Let's use the same example: x squared minus 5x plus 6 equals zero.")
  ]
  #only("4")[
    #voiceover("We can factor this as x minus 3 times x minus 2 equals zero.")
  ]
  #only("5")[
    #voiceover("From this, we can see that x equals 3 or x equals 2, giving us the same solutions as before.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary 📝]
  #v(40pt)
  #only("1-")[- p-q formula: Algebraic solution 🧮]
  #only("2-")[- Factorizing: Visual approach 👁️]
  #only("3-")[- Both methods are valid and useful 👍]
  #only("4-")[- Choose based on equation form and personal preference 🤔]
  
  #only("1")[
    #voiceover("To summarize, the p-q formula provides an algebraic solution that works for all quadratic equations.")
  ]
  #only("2")[
    #voiceover("Factorizing offers a more visual approach and can be quicker for simpler equations.")
  ]
  #only("3")[
    #voiceover("Both methods are valid and will give you the correct solutions.")
  ]
  #only("4")[
    #voiceover("Choose the method based on the form of your equation and your personal preference. Practice both to become proficient in solving quadratic equations!")
  ]
]