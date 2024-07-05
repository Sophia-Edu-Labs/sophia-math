#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Constant Multiple Rule for Derivatives]
  #v(40pt)

  #only("1-")[📊 Scaling functions and their derivatives]
  #v(20pt)
  #only("2-")[🤔 What happens when we multiply a function by a constant?]
  #v(20pt)
  #only("3-")[💡 Introducing the Constant Multiple Rule]

  #only("1")[
    #voiceover("Welcome to our exploration of the Constant Multiple Rule for Derivatives. This rule is crucial for understanding how scaling functions affects their derivatives.")
  ]
  #only("2")[
    #voiceover("Imagine you're analyzing the growth of a population, and you suddenly realize the initial count was off by a factor of 2. How would this affect the rate of change? This is where the Constant Multiple Rule comes in handy.")
  ]
  #only("3")[
    #voiceover("The Constant Multiple Rule provides a simple yet powerful way to handle these situations. Let's dive in and see how it works!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[The Constant Multiple Rule]
  #v(40pt)

  #only("1-")[Rule: $ (d/"dx")(c f(x)) = c (d/"dx" f(x)) $]
  #v(20pt)
  #only("2-")[Where:]
  #v(10pt)
  #only("2-")[- $c$ is a constant]
  #v(10pt)
  #only("3-")[- $f(x)$ is a differentiable function]
  #v(20pt)
  #only("4-")[💡 The derivative of a constant times a function]
  #v(10pt)
  #only("4-")[   is the constant times the derivative of the function]

  #only("1")[
    #voiceover("The Constant Multiple Rule states that the derivative of a constant times a function is equal to the constant times the derivative of the function. Let's break this down.")
  ]
  #only("2")[
    #voiceover("In this rule, c represents a constant. This could be any number, like 2, 5, or even pi.")
  ]
  #only("3")[
    #voiceover("f of x represents a differentiable function. This means we can find its derivative.")
  ]
  #only("4")[
    #voiceover("In simpler terms, when we multiply a function by a constant before taking the derivative, it's the same as taking the derivative first and then multiplying by the constant. This rule greatly simplifies many derivative calculations.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)

  #only("1-")[📌 Constant Multiple Rule: $ (d/"dx")(c f(x)) = c (d/"dx" f(x)) $]
  #v(20pt)
  #only("2-")[🔑 Key Points:]
  #v(10pt)
  #only("2-")[- Simplifies derivative calculations]
  #v(10pt)
  #only("3-")[- Applies to any constant and differentiable function]
  #v(10pt)
  #only("4-")[- Order doesn't matter: multiply then differentiate]
  #v(10pt)
  #only("4-")[  or differentiate then multiply]

  #only("1")[
    #voiceover("Let's recap what we've learned about the Constant Multiple Rule for derivatives.")
  ]
  #only("2")[
    #voiceover("This rule is a powerful tool that simplifies many derivative calculations, especially when dealing with scaled functions.")
  ]
  #only("3")[
    #voiceover("It applies to any constant multiplied by any differentiable function, making it widely applicable in calculus.")
  ]
  #only("4")[
    #voiceover("Remember, the beauty of this rule is that the order doesn't matter. You can multiply the function by a constant and then differentiate, or differentiate first and then multiply by the constant. The result will be the same!")
  ]
]