#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Introduction to Chain Rule]
  #v(40pt)
  
  #only("1-")[- Differentiating composite functions 🔗]
  #v(20pt)
  #only("2-")[- Function inside another function 📦]
  #v(20pt)
  #only("3-")[- Example: $f(g(x))$ where $f(x) = x^2$ and $g(x) = x + 1$]
  
  #only("1")[
    #voiceover("Welcome to our introduction to the chain rule. Today, we'll explore a powerful tool in calculus that helps us differentiate composite functions.")
  ]
  
  #only("2")[
    #voiceover("But what exactly is a composite function? It's when we have one function inside another function. This might sound complex, but it's actually quite common in mathematics and real-world applications.")
  ]
  
  #only("3")[
    #voiceover("Let's look at a simple example. Imagine we have two functions: f of x equals x squared, and g of x equals x plus 1. Now, what if we wanted to combine these into a composite function? We could write this as f of g of x. This means we first apply g, then apply f to the result.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Composite Functions]
  #v(40pt)
  
  #only("1-")[- $f(g(x)) = (x+1)^2$]
  #v(20pt)
  #only("2-")[- Step 1: Calculate $g(x) = x + 1$]
  #v(20pt)
  #only("3-")[- Step 2: Use result in $f(x) = x^2$]
  #v(20pt)
  #only("4-")[- Result: $f(g(x)) = (x+1)^2 = x^2 + 2x + 1$]
  
  #only("1")[
    #voiceover("Let's break down our composite function f of g of x step by step.")
  ]
  
  #only("2")[
    #voiceover("First, we calculate g of x, which is x plus 1.")
  ]
  
  #only("3")[
    #voiceover("Then, we use this result as the input for f. Remember, f of x is x squared.")
  ]
  
  #only("4")[
    #voiceover("So, f of g of x becomes x plus 1, all squared. If we expand this, we get x squared plus 2x plus 1. This is our composite function.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Why Chain Rule?]
  #v(40pt)
  
  #only("1-")[- How to differentiate $f(g(x))$? 🤔]
  #v(20pt)
  #only("2-")[- Can't use basic differentiation rules 🚫]
  #v(20pt)
  #only("3-")[- Chain rule: special technique for composite functions 🔗]
  
  #only("1")[
    #voiceover("Now, here's the challenge: how do we differentiate this composite function?")
  ]
  
  #only("2")[
    #voiceover("We can't simply use the basic differentiation rules we've learned so far. The function inside complicates things.")
  ]
  
  #only("3")[
    #voiceover("This is where the chain rule comes in. It's a special technique designed specifically for differentiating composite functions like this one.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)
  
  #only("1-")[- Chain rule: for differentiating composite functions 🔗]
  #v(20pt)
  #only("2-")[- Composite function: function inside another function 📦]
  #v(20pt)
  #only("3-")[- Necessary when basic differentiation rules don't apply 🧮]
  
  #only("1")[
    #voiceover("To summarize, the chain rule is a method used for differentiating composite functions.")
  ]
  
  #only("2")[
    #voiceover("A composite function is when we have one function inside another, like f of g of x.")
  ]
  
  #only("3")[
    #voiceover("We need the chain rule when our usual differentiation rules aren't enough to handle these more complex functions. In our next lesson, we'll dive into how to actually apply the chain rule. Stay tuned!")
  ]
]