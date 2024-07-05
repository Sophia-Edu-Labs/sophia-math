#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Power Rule for Derivatives]
  #v(40pt)
  
  #only("1-")[📚 Calculus: Finding rates of change]
  #v(20pt)
  #only("2-")[🔍 Focus: $ f(x) = x^n $]
  #v(20pt)
  #only("3-")[❓ Question: How to find $ f'(x) $?]
  #v(20pt)
  #only("4-")[🧠 Power Rule: A shortcut!]

  #only("1")[
    #voiceover("Welcome to our exploration of the Power Rule for Derivatives! In calculus, we often need to find rates of change, which is where derivatives come in.")
  ]
  #only("2")[
    #voiceover("Today, we'll focus on a specific type of function: f of x equals x to the power of n, where n is any real number.")
  ]
  #only("3")[
    #voiceover("Our question is: How do we find the derivative of this function? In other words, how do we calculate f prime of x?")
  ]
  #only("4")[
    #voiceover("The Power Rule provides us with a shortcut to answer this question. Let's dive in and see how it works!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[The Power Rule]
  #v(40pt)
  
  #only("1-")[📐 Rule: If $ f(x) = x^n $, then $ f'(x) = n x^(n-1) $]
  #v(20pt)
  #only("2-")[🔢 Steps:
    1. Take the exponent (n)
    2. Multiply it by $ x^(n-1) $]
  #v(20pt)
  #only("3-")[✨ Result: New function with reduced power]

  #only("1")[
    #voiceover("Here's the Power Rule: If f of x equals x to the power of n, then f prime of x equals n times x to the power of n minus 1.")
  ]
  #only("2")[
    #voiceover("To apply this rule, we follow two simple steps. First, we take the exponent n. Then, we multiply it by x to the power of n minus 1.")
  ]
  #only("3")[
    #voiceover("The result is a new function where the power has been reduced by 1. This elegant rule simplifies the process of finding derivatives for power functions.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Example and Recap]
  #v(40pt)
  
  #only("1-")[📝 Example: $ f(x) = x^3 $]
  #v(20pt)
  #only("2-")[🧮 Apply Power Rule:
    $ f'(x) = 3 x^(3-1) = 3x^2 $]
  #v(20pt)
  #only("3-")[🔑 Key Points:
    - Exponent becomes coefficient
    - Power reduces by 1]

  #only("1")[
    #voiceover("Let's look at an example to solidify our understanding. Consider the function f of x equals x cubed.")
  ]
  #only("2")[
    #voiceover("Applying the Power Rule, we get: f prime of x equals 3 times x to the power of 3 minus 1, which simplifies to 3 x squared.")
  ]
  #only("3")[
    #voiceover("To recap, the Power Rule tells us that the derivative of x to the n is n times x to the n minus 1. The exponent becomes the coefficient, and the power reduces by 1. This powerful rule simplifies differentiation for a wide range of functions!")
  ]
]