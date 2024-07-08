#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Review: Product Rule 📚]
  #v(40pt)
  #only("1-")[- Used for differentiating products of functions 🔢]
  #only("2-")[- Helps solve complex derivative problems 🧩]
  #only("3-")[- Let's review its application 🔍]

  #only("1")[
    #voiceover("Let's review the product rule, a crucial tool in calculus.")
  ]
  #only("2")[
    #voiceover("This rule is essential when we need to differentiate the product of two or more functions.")
  ]
  #only("3")[
    #voiceover("It allows us to break down complex derivative problems into simpler parts. Let's see how it works.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[The Product Rule]
  #v(40pt)
  #only("1-")[
    $"Given" f(x) "and" g(x):$
  ]
  #v(20pt)
  #only("2-")[
    $dif/dx (f(x) dot g(x)) = f'(x) dot g(x) + f(x) dot g'(x)$
  ]
  #v(20pt)
  #only("3-")[
    Where:
    - $f'(x)$ is the derivative of $f(x)$
    - $g'(x)$ is the derivative of $g(x)$
  ]

  #only("1")[
    #voiceover("The product rule is used when we have two functions multiplied together.")
  ]
  #only("2")[
    #voiceover("It states that the derivative of f of x times g of x is equal to the derivative of f times g, plus f times the derivative of g.")
  ]
  #only("3")[
    #voiceover("Here, f prime of x represents the derivative of f, and g prime of x represents the derivative of g.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Example Application 🔢]
  #v(40pt)
  #only("1-")[
    Find $dif/dx (x^2 dot sin(x))$
  ]
  #v(20pt)
  #only("2-")[
    Let $f(x) = x^2$ and $g(x) = sin(x)$
  ]
  #v(20pt)
  #only("3-")[
    $f'(x) = 2x$
  ]
  #only("4-")[
    $g'(x) = cos(x)$
  ]
  #v(20pt)
  #only("5-")[
    $dif/dx (x^2 dot sin(x)) = 2x dot sin(x) + x^2 dot cos(x)$
  ]

  #only("1")[
    #voiceover("Let's apply the product rule to find the derivative of x squared times sine of x.")
  ]
  #only("2")[
    #voiceover("We'll let f of x be x squared and g of x be sine of x.")
  ]
  #only("3")[
    #voiceover("The derivative of x squared is 2x.")
  ]
  #only("4")[
    #voiceover("And the derivative of sine of x is cosine of x.")
  ]
  #only("5")[
    #voiceover("Applying the product rule, we get 2x times sine of x, plus x squared times cosine of x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary 📝]
  #v(40pt)
  #only("1-")[- Product rule: $dif/dx (f dot g) = f' dot g + f dot g'$ 🔑]
  #only("2-")[- Breaks complex derivatives into simpler parts 🧩]
  #only("3-")[- Useful for products of functions 🔢]
  #only("4-")[- Practice for mastery! 💪]

  #only("1")[
    #voiceover("To summarize, the product rule allows us to differentiate the product of two functions.")
  ]
  #only("2")[
    #voiceover("It breaks down complex derivatives into simpler parts that we can handle separately.")
  ]
  #only("3")[
    #voiceover("This rule is incredibly useful when dealing with products of functions in calculus.")
  ]
  #only("4")[
    #voiceover("Remember, practice is key to mastering the product rule and applying it effectively!")
  ]
]