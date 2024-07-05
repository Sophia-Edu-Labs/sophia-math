#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Sum Rule for Derivatives]
  #v(40pt)
  
  #only("1-")[📚 Calculus: Finding rates of change]
  #v(20pt)
  #only("2-")[🧮 Derivatives: Measure how functions change]
  #v(20pt)
  #only("3-")[❓ What if we add functions?]
  #v(20pt)
  #only("4-")[🔍 Sum Rule: A powerful tool]

  #only("1")[
    #voiceover("Welcome to our exploration of the Sum Rule for Derivatives. In calculus, we often deal with finding rates of change.")
  ]
  #only("2")[
    #voiceover("Derivatives are our primary tool for measuring how functions change. But what happens when we work with more complex functions?")
  ]
  #only("3")[
    #voiceover("For instance, what if we need to find the derivative of a sum of functions? Do we need a new method, or can we use what we already know?")
  ]
  #only("4")[
    #voiceover("This is where the Sum Rule comes in handy. It's a powerful tool that simplifies our work with derivatives of sums. Let's dive in and see how it works!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[The Sum Rule]
  #v(40pt)
  
  #only("1-")[📝 Statement: $ (f(x) + g(x))' = f'(x) + g'(x) $]
  #v(20pt)
  #only("2-")[🔢 Example: $ (x^2 + sin(x))' = 2x + cos(x) $]
  #v(20pt)
  #only("3-")[💡 Intuition: Rate of change of sum = Sum of rates of change]
  #v(20pt)
  #only("4-")[🚀 Simplifies complex derivatives]

  #only("1")[
    #voiceover("The Sum Rule for derivatives states that the derivative of a sum of functions is equal to the sum of their derivatives. In mathematical notation, we write this as: the derivative of f of x plus g of x equals f prime of x plus g prime of x.")
  ]
  #only("2")[
    #voiceover("Let's look at an example. If we have the function x squared plus sine of x, its derivative would be 2x plus cosine of x. We get this by applying the power rule to x squared and the derivative rule for sine to sine of x, then adding the results.")
  ]
  #only("3")[
    #voiceover("Intuitively, this makes sense. The rate of change of a sum is equal to the sum of the individual rates of change. It's like if you're earning money from two jobs - your total rate of earning is the sum of your rates from each job.")
  ]
  #only("4")[
    #voiceover("This rule greatly simplifies the process of finding derivatives for complex functions that involve sums. Instead of trying to derive the entire function at once, we can break it down into simpler parts.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Recap: Sum Rule for Derivatives]
  #v(40pt)
  
  #only("1-")[📌 $(f(x) + g(x))' = f'(x) + g'(x)$]
  #v(20pt)
  #only("2-")[🔑 Key points:]
  #v(10pt)
  #only("3-")[   - Applies to any number of functions]
  #v(10pt)
  #only("4-")[   - Simplifies complex derivatives]
  #v(10pt)
  #only("5-")[   - Intuitive: Sum of individual changes]

  #only("1")[
    #voiceover("Let's recap what we've learned about the Sum Rule for Derivatives. The rule states that the derivative of f of x plus g of x equals f prime of x plus g prime of x.")
  ]
  #only("2")[
    #voiceover("There are a few key points to remember about this rule:")
  ]
  #only("3")[
    #voiceover("First, it applies to any number of functions, not just two. So if you have three, four, or more functions being added, you can still apply this rule.")
  ]
  #only("4")[
    #voiceover("Second, it greatly simplifies the process of finding derivatives for complex functions that involve sums.")
  ]
  #only("5")[
    #voiceover("Lastly, it's intuitive when you think about it as the sum of individual rates of change. This understanding can help you apply the rule more confidently in various situations.")
  ]
]