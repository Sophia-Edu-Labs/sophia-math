#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Review: Constant Multiple Rule 📏]
  #v(40pt)
  #only("1-")[- Recall: Derivatives measure rate of change 📈]
  #only("2-")[- Constant multiple rule simplifies calculations 🧮]
  #only("3-")[- Let's review this important rule 🔍]

  #only("1")[
    #voiceover("Let's review the constant multiple rule for derivatives. As we know, derivatives are essential for measuring rates of change in various functions.")
  ]
  #only("2")[
    #voiceover("The constant multiple rule is a powerful tool that simplifies our calculations when dealing with functions multiplied by constants.")
  ]
  #only("3")[
    #voiceover("Let's take a closer look at this important rule and how it works.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[The Constant Multiple Rule]
  #v(40pt)
  #only("1-")[Rule: $dif/"dx" (c f(x)) = c dif/"dx" (f(x))$]
  #v(20pt)
  #only("2-")[Where:]
  #only("3-")[- $c$ is a constant]
  #only("4-")[- $f(x)$ is a function of $x$]

  #only("1")[
    #voiceover("The constant multiple rule states that the derivative of a constant times a function is equal to the constant times the derivative of the function.")
  ]
  #only("2")[
    #voiceover("Let's break this down:")
  ]
  #only("3")[
    #voiceover("c is a constant, which means it doesn't change as x changes.")
  ]
  #only("4")[
    #voiceover("f of x is any function of x that we want to differentiate.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Example Application 🌟]
  #v(40pt)
  #only("1-")[Let's differentiate: $y = 5x^2$]
  #v(20pt)
  #only("2-")[Step 1: Identify $c$ and $f(x)$]
  #only("3-")[$c = 5$, $f(x) = x^2$]
  #v(20pt)
  #only("4-")[Step 2: Apply the rule]
  #only("5-")[$dif/"dx" (5x^2) = 5 dif/"dx" (x^2)$]
  #v(20pt)
  #only("6-")[Step 3: Differentiate $f(x)$]
  #only("7-")[$= 5 (2x) = 10x$]

  #only("1")[
    #voiceover("Let's apply this rule to an example. Say we want to differentiate y equals 5 x squared.")
  ]
  #only("2")[
    #voiceover("First, we identify the constant and the function.")
  ]
  #only("3")[
    #voiceover("Here, c is 5, and f of x is x squared.")
  ]
  #only("4")[
    #voiceover("Now, we apply the constant multiple rule.")
  ]
  #only("5")[
    #voiceover("The derivative of 5 x squared equals 5 times the derivative of x squared.")
  ]
  #only("6")[
    #voiceover("We know the derivative of x squared is 2x.")
  ]
  #only("7")[
    #voiceover("So, our final answer is 5 times 2x, which equals 10x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary 📝]
  #v(40pt)
  #only("1-")[- Constant Multiple Rule: $dif/"dx" (c f(x)) = c dif/"dx" (f(x))$]
  #only("2-")[- Simplifies derivatives with constant factors]
  #only("3-")[- Remember: $c$ is constant, $f(x)$ is a function]
  #only("4-")[- Useful in various applications 🚀]

  #only("1")[
    #voiceover("To summarize, the constant multiple rule states that the derivative of a constant times a function is the constant times the derivative of the function.")
  ]
  #only("2")[
    #voiceover("This rule greatly simplifies our calculations when dealing with functions that have constant factors.")
  ]
  #only("3")[
    #voiceover("Always remember that c must be a constant, while f of x can be any differentiable function.")
  ]
  #only("4")[
    #voiceover("This rule is incredibly useful in various applications, from physics to economics, wherever we need to find rates of change.")
  ]
]