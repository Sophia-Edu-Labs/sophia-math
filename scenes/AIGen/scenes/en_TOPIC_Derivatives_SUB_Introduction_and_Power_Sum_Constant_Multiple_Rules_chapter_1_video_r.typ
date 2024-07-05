#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Review: Power Rule for Derivatives 📊]
  #v(40pt)
  #only("1-")[- Derivatives measure rate of change 📈]
  #only("2-")[- Power rule simplifies derivative calculations 🧮]
  #only("3-")[- Let's review the power rule with examples 🔍]

  #only("1")[
    #voiceover("Let's review the power rule for derivatives. As we know, derivatives are essential in calculus as they measure the rate of change of a function.")
  ]
  #only("2")[
    #voiceover("The power rule is a powerful tool that simplifies the process of calculating derivatives for polynomial functions.")
  ]
  #only("3")[
    #voiceover("Let's dive into the power rule and review it with some examples.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[The Power Rule 🔢]
  #v(40pt)
  #only("1-")[For $f(x) = x^n$, where $n$ is a constant:]
  #v(20pt)
  #only("2-")[$ f'(x) = n x^(n-1) $]
  #v(20pt)
  #only("3-")[Steps:
    1️⃣ Bring down the power as a coefficient
    2️⃣ Reduce the power by 1]

  #only("1")[
    #voiceover("The power rule states that for a function f of x equals x to the power of n, where n is a constant,")
  ]
  #only("2")[
    #voiceover("the derivative, f prime of x, equals n times x to the power of n minus 1.")
  ]
  #only("3")[
    #voiceover("To apply this rule, we follow two simple steps: First, we bring down the power as a coefficient. Then, we reduce the power by 1.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Example 📝]
  #v(40pt)
  #only("1-")[Let's differentiate $f(x) = x^4$]
  #v(20pt)
  #only("2-")[Step 1: Bring down the power (4) as a coefficient]
  #only("3-")[Step 2: Reduce the power by 1 (4 - 1 = 3)]
  #v(20pt)
  #only("4-")[Result: $f'(x) = 4x^3$]

  #only("1")[
    #voiceover("Let's apply the power rule to an example. Consider the function f of x equals x to the fourth power.")
  ]
  #only("2")[
    #voiceover("First, we bring down the power, 4, as a coefficient.")
  ]
  #only("3")[
    #voiceover("Then, we reduce the power by 1, which gives us 3.")
  ]
  #only("4")[
    #voiceover("The result is f prime of x equals 4 x cubed.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary 📚]
  #v(40pt)
  #only("1-")[- Power Rule: $f(x) = x^n arrow f'(x) = n x^(n-1)$ 🔑]
  #only("2-")[- Simplifies derivative calculations for polynomials 🧮]
  #only("3-")[- Remember: Bring down power, reduce by 1 ⚙️]
  #only("4-")[- Applicable to more complex functions 🔬]

  #only("1")[
    #voiceover("To summarize, the power rule states that for a function f of x equals x to the power of n, its derivative f prime of x equals n times x to the power of n minus 1.")
  ]
  #only("2")[
    #voiceover("This rule greatly simplifies derivative calculations for polynomial functions.")
  ]
  #only("3")[
    #voiceover("Remember the two key steps: bring down the power as a coefficient, and reduce the power by 1.")
  ]
  #only("4")[
    #voiceover("The power rule is a fundamental tool in calculus and can be applied to more complex functions as well.")
  ]
]