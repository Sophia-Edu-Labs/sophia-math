#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Introduction to Product Rule]
  #v(40pt)
  
  #only("1-")[- Differentiation of product functions 📊✖️]
  #v(20pt)
  #only("2-")[- Example: $f(x) = x^2 dot sin(x)$]
  #v(20pt)
  #only("3-")[- How to differentiate? 🤔]
  #v(20pt)
  #only("4-")[- Enter: The Product Rule! 🎉]

  #only("1")[
    #voiceover("Welcome to our introduction to the Product Rule in calculus. Today, we're going to explore a powerful tool for differentiating functions that are products of two or more functions.")
  ]
  #only("2")[
    #voiceover("Let's consider an example to motivate our discussion. Imagine we have a function f of x equal to x squared times sine of x. How would we find the derivative of this function?")
  ]
  #only("3")[
    #voiceover("At first glance, this might seem challenging. We know how to differentiate x squared, and we know how to differentiate sine of x, but how do we handle their product?")
  ]
  #only("4")[
    #voiceover("This is where the Product Rule comes in handy. It's a special rule designed specifically for differentiating products of functions.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[The Product Rule]
  #v(40pt)
  
  #only("1-")[- For $f(x) = u(x) dot v(x)$]
  #v(20pt)
  #only("2-")[- $f'(x) = u'(x)v(x) + u(x)v'(x)$]
  #v(20pt)
  #only("3-")[- "First times the derivative of the second"]
  #v(10pt)
  #only("3-")[- "Plus second times the derivative of the first"]

  #only("1")[
    #voiceover("The Product Rule is used when we have a function f of x that is the product of two functions, let's call them u of x and v of x.")
  ]
  #only("2")[
    #voiceover("The rule states that the derivative of f of x is equal to the derivative of u times v, plus u times the derivative of v.")
  ]
  #only("3")[
    #voiceover("A handy way to remember this is: 'First times the derivative of the second, plus second times the derivative of the first'. This mnemonic can help you recall the rule easily.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)
  
  #only("1-")[- Product Rule: For differentiating products of functions]
  #v(20pt)
  #only("2-")[- Formula: $f'(x) = u'(x)v(x) + u(x)v'(x)$]
  #v(20pt)
  #only("3-")[- Powerful tool in calculus toolbox 🧰]

  #only("1")[
    #voiceover("To summarize, the Product Rule is a crucial tool in calculus for differentiating functions that are products of two or more functions.")
  ]
  #only("2")[
    #voiceover("Remember the formula: The derivative of f of x equals u prime of x times v of x, plus u of x times v prime of x.")
  ]
  #only("3")[
    #voiceover("This rule significantly expands our ability to differentiate complex functions, making it a powerful addition to our calculus toolbox. In the next lesson, we'll dive deeper into applying this rule to various examples.")
  ]
]