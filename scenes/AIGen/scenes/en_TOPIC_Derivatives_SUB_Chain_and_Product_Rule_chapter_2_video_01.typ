#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Combining Chain Rule and Product Rule]
  #v(40pt)

  #only("1-")[📚 Complex functions in calculus]
  #v(20pt)
  #only("2-")[🔗 Chain Rule: For composite functions]
  #v(20pt)
  #only("3-")[✖️ Product Rule: For multiplied functions]
  #v(20pt)
  #only("4-")[🤝 Sometimes, we need both!]

  #only("1")[
    #voiceover("In calculus, we often encounter complex functions that require multiple differentiation rules to solve. Today, we'll explore a situation where we need to combine two important rules: the chain rule and the product rule.")
  ]
  #only("2")[
    #voiceover("You might remember the chain rule, which we use for differentiating composite functions - that is, functions within functions.")
  ]
  #only("3")[
    #voiceover("And you're probably familiar with the product rule, which we use when differentiating the product of two functions.")
  ]
  #only("4")[
    #voiceover("But what happens when we face a function that's both a product and a composition? That's when we need to combine these rules. Let's look at an example to understand this better.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Example: $f(x) = x^2 sin(x^3)$]
  #v(40pt)

  #only("1-")[🔍 Identify the structure:]
  #v(20pt)
  #only("2-")[   - Product: $x^2$ and $sin(x^3)$]
  #v(20pt)
  #only("3-")[   - Composition: $sin(x^3)$]
  #v(20pt)
  #only("4-")[🧮 We need both rules!]

  #only("1")[
    #voiceover("Let's consider the function f of x equals x squared times sine of x cubed. How would we differentiate this?")
  ]
  #only("2")[
    #voiceover("First, we need to recognize the structure of this function. It's a product of two parts: x squared and sine of x cubed.")
  ]
  #only("3")[
    #voiceover("But there's more. The sine of x cubed is a composite function - it's sine of something, and that something is x cubed.")
  ]
  #only("4")[
    #voiceover("This means we'll need to use both the product rule and the chain rule to differentiate this function correctly.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)

  #only("1-")[🔀 Complex functions may require multiple rules]
  #v(20pt)
  #only("2-")[🧠 Analyze the function structure]
  #v(20pt)
  #only("3-")[🛠️ Apply rules in the correct order]
  #v(20pt)
  #only("4-")[💪 Practice makes perfect!]

  #only("1")[
    #voiceover("To summarize, when dealing with complex functions in calculus, we often need to combine different differentiation rules.")
  ]
  #only("2")[
    #voiceover("The key is to carefully analyze the structure of the function. Is it a product? A composition? Or both?")
  ]
  #only("3")[
    #voiceover("Once you've identified the structure, you can apply the necessary rules in the correct order to find the derivative.")
  ]
  #only("4")[
    #voiceover("Remember, mastering this skill takes practice. The more complex functions you encounter and solve, the better you'll become at recognizing when and how to combine these rules.")
  ]
]