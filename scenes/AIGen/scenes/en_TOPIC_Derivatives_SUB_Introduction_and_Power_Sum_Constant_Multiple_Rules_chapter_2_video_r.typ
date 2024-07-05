#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Review: Sum Rule for Derivatives 📊]
  #v(40pt)
  #only("1-")[- Derivatives are crucial in calculus 📈]
  #only("2-")[- Sum rule simplifies complex derivative calculations 🧮]
  #only("3-")[- Let's review the sum rule with an example 🔍]
  
  #only("1")[
    #voiceover("Let's review the sum rule for derivatives, a key concept in calculus.")
  ]
  #only("2")[
    #voiceover("The sum rule is a powerful tool that simplifies the process of finding derivatives of complex functions.")
  ]
  #only("3")[
    #voiceover("We'll go through the sum rule and illustrate it with an example.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Sum Rule Statement 📜]
  #v(40pt)
  #only("1-")[The sum rule states:]
  #v(20pt)
  #only("2-")[$dif/"dx" (f(x) + g(x)) = dif/"dx" f(x) + dif/"dx" g(x)$]
  #v(20pt)
  #only("3-")[Where $f(x)$ and $g(x)$ are differentiable functions]
  
  #only("1")[
    #voiceover("The sum rule for derivatives can be stated as follows:")
  ]
  #only("2")[
    #voiceover("The derivative of a sum of functions is equal to the sum of their derivatives. In mathematical notation, we write this as: The derivative with respect to x of f of x plus g of x equals the derivative of f of x plus the derivative of g of x.")
  ]
  #only("3")[
    #voiceover("This rule applies when both f of x and g of x are differentiable functions.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Example Application 🔢]
  #v(40pt)
  #only("1-")[Let's differentiate: $y = x^2 + sin(x)$]
  #v(20pt)
  #only("2-")[Step 1: Identify functions]
  #only("3-")[$f(x) = x^2$]
  #only("4-")[$g(x) = sin(x)$]
  #v(20pt)
  #only("5-")[Step 2: Differentiate each function]
  #only("6-")[$dif/"dx" f(x) = 2x$]
  #only("7-")[$dif/"dx" g(x) = cos(x)$]
  #v(20pt)
  #only("8-")[Step 3: Sum the derivatives]
  #only("9-")[$dif/"dx" y = 2x + cos(x)$]
  
  #only("1")[
    #voiceover("Let's apply the sum rule to differentiate the function y equals x squared plus sine of x.")
  ]
  #only("2")[
    #voiceover("First, we identify the two functions being added.")
  ]
  #only("3")[
    #voiceover("We have f of x equals x squared")
  ]
  #only("4")[
    #voiceover("and g of x equals sine of x.")
  ]
  #only("5")[
    #voiceover("Next, we differentiate each function separately.")
  ]
  #only("6")[
    #voiceover("The derivative of x squared is 2x")
  ]
  #only("7")[
    #voiceover("and the derivative of sine of x is cosine of x.")
  ]
  #only("8")[
    #voiceover("Finally, we sum these derivatives.")
  ]
  #only("9")[
    #voiceover("Thus, the derivative of y is 2x plus cosine of x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary 📝]
  #v(40pt)
  #only("1-")[- Sum rule: $dif/"dx" (f(x) + g(x)) = dif/"dx" f(x) + dif/"dx" g(x)$ 🔑]
  #only("2-")[- Simplifies derivative calculations 🧮]
  #only("3-")[- Applies to any number of additive terms ➕]
  #only("4-")[- Essential for differentiating complex functions 📊]
  
  #only("1")[
    #voiceover("To recap, the sum rule for derivatives states that the derivative of a sum is the sum of the derivatives.")
  ]
  #only("2")[
    #voiceover("This rule greatly simplifies the process of calculating derivatives of complex functions.")
  ]
  #only("3")[
    #voiceover("It's important to note that this rule can be extended to any number of additive terms.")
  ]
  #only("4")[
    #voiceover("Understanding and applying the sum rule is essential for differentiating more complex functions in calculus.")
  ]
]