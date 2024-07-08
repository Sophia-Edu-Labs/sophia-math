#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Power Functions]
  #v(40pt)
  #only("1-")[
    $f(x) = 8 / x^2$
  ]
  #v(20pt)
  #only("2-")[
    Question: What is $f(1/2)$?
  ]
  #only("1")[
    #voiceover("Great job on tackling this power function question! Let's walk through the solution step-by-step. We're dealing with the function f of x equals 8 divided by x squared.")
  ]
  #only("2")[
    #voiceover("Our task is to find the value of f of one-half. Let's break this down.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Substitute x with 1/2]
  #v(40pt)
  #only("1-")[
    $f(1/2) = 8 / (1/2)^2$
  ]
  #v(20pt)
  #only("2-")[
    💡 Remember: $(1/2)^2$ means $(1/2) dot (1/2)$
  ]
  #only("1")[
    #voiceover("Our first step is to substitute x with one-half in our function. This gives us f of one-half equals 8 divided by one-half squared.")
  ]
  #only("2")[
    #voiceover("It's important to remember that one-half squared means one-half multiplied by one-half.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Simplify (1/2)²]
  #v(40pt)
  #only("1-")[
    $(1/2)^2 = 1/4$
  ]
  #v(20pt)
  #only("2-")[
    $f(1/2) = 8 / (1/4)$
  ]
  #only("1")[
    #voiceover("Now, let's simplify one-half squared. One-half multiplied by one-half equals one-fourth.")
  ]
  #only("2")[
    #voiceover("Substituting this back into our equation, we get f of one-half equals 8 divided by one-fourth.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Simplify the Division]
  #v(40pt)
  #only("1-")[
    $8 / (1/4) = 8 dot 4 = 32$
  ]
  #v(20pt)
  #only("2-")[
    💡 Tip: Dividing by a fraction is the same as multiplying by its reciprocal
  ]
  #only("1")[
    #voiceover("The final step is to simplify this division. Remember, dividing by a fraction is the same as multiplying by its reciprocal. So, 8 divided by one-fourth is equal to 8 multiplied by 4, which equals 32.")
  ]
  #only("2")[
    #voiceover("This is a handy tip to remember when dealing with fractions in division.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[
    $f(1/2) = 32$
  ]
  #v(20pt)
  #only("2-")[
    🎉 Well done!
  ]
  #only("1")[
    #voiceover("So, our final answer is that f of one-half equals 32.")
  ]
  #only("2")[
    #voiceover("Excellent work! You've successfully solved this power function problem. Remember, breaking down complex problems into smaller steps can make them much more manageable.")
  ]
]