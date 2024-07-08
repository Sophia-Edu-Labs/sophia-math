#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Review: Chain Rule and Product Rule 🔗✖️]
  #v(40pt)
  #only("1-")[- Complex functions often involve compositions and products 🧩]
  #only("2-")[- Chain Rule: For nested functions 🔗]
  #only("3-")[- Product Rule: For multiplied functions ✖️]
  #only("4-")[- Sometimes, we need both! 🤝]

  #only("1")[
    #voiceover("Let's review how we can combine the chain rule and product rule. In calculus, we often encounter complex functions that involve both compositions and products of simpler functions.")
  ]
  #only("2")[
    #voiceover("We've learned about the chain rule, which helps us differentiate nested functions.")
  ]
  #only("3")[
    #voiceover("We've also covered the product rule, which allows us to differentiate the product of two functions.")
  ]
  #only("4")[
    #voiceover("But what happens when we need to use both rules together? That's what we'll review now.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Combining Chain and Product Rules 🤝]
  #v(40pt)
  #only("1-")[Consider: $f(x) = (x^2 + 1) dot sin(x^3)$]
  #v(20pt)
  #only("2-")[Step 1: Identify components]
  #only("3-")[- $u(x) = x^2 + 1$]
  #only("4-")[- $v(x) = sin(x^3)$]
  #v(20pt)
  #only("5-")[Step 2: Apply Product Rule]
  #only("6-")[$f'(x) = u'(x) dot v(x) + u(x) dot v'(x)$]

  #only("1")[
    #voiceover("Let's look at an example. Consider the function f of x equals x squared plus 1, multiplied by sine of x cubed.")
  ]
  #only("2")[
    #voiceover("Our first step is to identify the components of this function.")
  ]
  #only("3")[
    #voiceover("We can see that u of x equals x squared plus 1,")
  ]
  #only("4")[
    #voiceover("and v of x equals sine of x cubed.")
  ]
  #only("5")[
    #voiceover("Now, we apply the product rule to this function.")
  ]
  #only("6")[
    #voiceover("The derivative of f of x equals u prime of x times v of x, plus u of x times v prime of x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Applying Chain Rule 🔗]
  #v(40pt)
  #only("1-")[Step 3: Differentiate $u(x)$]
  #only("2-")[$u'(x) = 2x$]
  #v(20pt)
  #only("3-")[Step 4: Differentiate $v(x)$ using Chain Rule]
  #only("4-")[$v'(x) = cos(x^3) dot 3x^2$]
  #v(20pt)
  #only("5-")[Step 5: Combine results]
  #only("6-")[$f'(x) = 2x dot sin(x^3) + (x^2 + 1) dot cos(x^3) dot 3x^2$]

  #only("1")[
    #voiceover("Now, let's differentiate each component. First, u of x.")
  ]
  #only("2")[
    #voiceover("The derivative of x squared plus 1 is simply 2x.")
  ]
  #only("3")[
    #voiceover("Next, we need to differentiate v of x, which is where we'll use the chain rule.")
  ]
  #only("4")[
    #voiceover("The derivative of sine of x cubed is cosine of x cubed, times the derivative of x cubed, which is 3 x squared.")
  ]
  #only("5")[
    #voiceover("Finally, we combine these results into our product rule formula.")
  ]
  #only("6")[
    #voiceover("The final result is: f prime of x equals 2x times sine of x cubed, plus x squared plus 1, times cosine of x cubed, times 3 x squared.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary 📝]
  #v(40pt)
  #only("1-")[- Identify product and composition structures 🧩]
  #only("2-")[- Apply Product Rule first ✖️]
  #only("3-")[- Use Chain Rule for nested functions 🔗]
  #only("4-")[- Combine results carefully 🤝]

  #only("1")[
    #voiceover("To summarize, when dealing with complex functions, first identify the product and composition structures.")
  ]
  #only("2")[
    #voiceover("Then, apply the product rule to break down the function.")
  ]
  #only("3")[
    #voiceover("Use the chain rule for any nested functions within the components.")
  ]
  #only("4")[
    #voiceover("Finally, carefully combine all the results. This approach allows us to differentiate even the most complex functions!")
  ]
]