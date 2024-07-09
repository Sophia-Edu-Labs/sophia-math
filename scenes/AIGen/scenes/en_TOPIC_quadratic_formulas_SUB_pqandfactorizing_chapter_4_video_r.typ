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
  #only("3-")[- Let's review the process step-by-step 📝]
  
  #only("1")[
    #voiceover("Let's review factorizing quadratic equations. Quadratic equations are essential in many real-world problems, from physics to economics.")
  ]
  #only("2")[
    #voiceover("Factorizing is a powerful method to solve these equations. It allows us to break down complex expressions into simpler parts.")
  ]
  #only("3")[
    #voiceover("We'll go through the process step-by-step to refresh our understanding.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Factorizing Process 🔍]
  #v(40pt)
  #only("1-")[1️⃣ Identify the quadratic equation: $a x^2 + b x + c = 0$]
  #only("2-")[2️⃣ Rewrite as product: $(x + p)(x + q) = 0$]
  #only("3-")[3️⃣ Find $p$ and $q$ where $p + q = b/a$ and $p dot q = c/a$]
  #only("4-")[4️⃣ Solve: $x = -p$ or $x = -q$]
  
  #only("1")[
    #voiceover("First, we identify our quadratic equation in the standard form a x squared plus b x plus c equals zero.")
  ]
  #only("2")[
    #voiceover("Next, we aim to rewrite this as a product of two binomials: x plus p, times x plus q, equals zero.")
  ]
  #only("3")[
    #voiceover("To find p and q, we use two conditions: p plus q equals b divided by a, and p times q equals c divided by a.")
  ]
  #only("4")[
    #voiceover("Finally, we solve the equation. The solutions are x equals negative p or x equals negative q.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Example and Summary 📚]
  #v(20pt)
  #only("1-")[Example: $x^2 + 5x + 6 = 0$]
  #only("2-")[$(x + 2)(x + 3) = 0$]
  #only("3-")[Solutions: $x = -2$ or $x = -3$]
  #v(20pt)
  #only("4-")[Summary:
  - Factorizing simplifies solving 🔑
  - Works for many quadratic equations 📊
  - Practice improves speed and accuracy 🏋️]
  
  #only("1")[
    #voiceover("Let's look at a quick example. Consider the equation x squared plus 5x plus 6 equals zero.")
  ]
  #only("2")[
    #voiceover("We can factor this as x plus 2 times x plus 3 equals zero.")
  ]
  #only("3")[
    #voiceover("The solutions are x equals negative 2 or x equals negative 3.")
  ]
  #only("4")[
    #voiceover("To summarize, factorizing simplifies the process of solving quadratic equations. It works for many quadratic equations, and with practice, you'll improve your speed and accuracy.")
  ]
]