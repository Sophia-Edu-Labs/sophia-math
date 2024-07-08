#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Review: Chain Rule 🔗]
  #v(40pt)
  #only("1-")[- Composite functions are common in calculus 📚]
  #only("2-")[- Chain rule helps differentiate these functions 🔍]
  #only("3-")[- Let's review the chain rule and its application 🧮]
  
  #only("1")[
    #voiceover("Let's review the chain rule, a fundamental concept in calculus. We often encounter composite functions in mathematics.")
  ]
  #only("2")[
    #voiceover("The chain rule is a powerful tool that helps us differentiate these composite functions efficiently.")
  ]
  #only("3")[
    #voiceover("Let's review how the chain rule works and how we apply it.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Chain Rule: Definition 📏]
  #v(40pt)
  #only("1-")[Composite function: $f(g(x))$]
  #v(20pt)
  #only("2-")[Chain Rule: $dif/dx (f(g(x))) = f'(g(x)) dot g'(x)$]
  #v(20pt)
  #only("3-")[- Differentiate outer function $f$]
  #only("4-")[- Multiply by derivative of inner function $g$]
  
  #only("1")[
    #voiceover("Let's start with a composite function. This is a function in the form f of g of x, where g is applied first, and then f is applied to the result.")
  ]
  #only("2")[
    #voiceover("The chain rule states that the derivative of f of g of x with respect to x equals f prime of g of x, multiplied by g prime of x.")
  ]
  #only("3")[
    #voiceover("To apply the chain rule, we first differentiate the outer function f,")
  ]
  #only("4")[
    #voiceover("and then multiply it by the derivative of the inner function g.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Example Application 🌟]
  #v(40pt)
  #only("1-")[Let $f(x) = sin(x^2)$]
  #v(20pt)
  #only("2-")[Outer function: $f(x) = sin(x)$]
  #only("3-")[Inner function: $g(x) = x^2$]
  #v(20pt)
  #only("4-")[Applying Chain Rule:]
  #only("5-")[$f'(x) = cos(x^2) dot 2x$]
  
  #only("1")[
    #voiceover("Let's review an example. Consider the function f of x equals sine of x squared.")
  ]
  #only("2")[
    #voiceover("Here, the outer function is sine of x,")
  ]
  #only("3")[
    #voiceover("and the inner function is x squared.")
  ]
  #only("4")[
    #voiceover("Now, let's apply the chain rule.")
  ]
  #only("5")[
    #voiceover("The derivative of f of x is cosine of x squared, which is the derivative of sine, multiplied by two x, which is the derivative of x squared.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary 📝]
  #v(40pt)
  #only("1-")[- Chain rule: tool for composite functions 🛠️]
  #only("2-")[- Formula: $dif/dx (f(g(x))) = f'(g(x)) dot g'(x)$]
  #only("3-")[- Steps: Differentiate outer, multiply by inner derivative]
  #only("4-")[- Crucial for complex function differentiation 🧠]
  
  #only("1")[
    #voiceover("To recap, the chain rule is a powerful tool for differentiating composite functions.")
  ]
  #only("2")[
    #voiceover("Remember the formula: the derivative of f of g of x with respect to x equals f prime of g of x, multiplied by g prime of x.")
  ]
  #only("3")[
    #voiceover("The steps are: differentiate the outer function, then multiply by the derivative of the inner function.")
  ]
  #only("4")[
    #voiceover("This rule is crucial for differentiating complex functions in calculus and has wide applications in various fields of mathematics and science.")
  ]
]