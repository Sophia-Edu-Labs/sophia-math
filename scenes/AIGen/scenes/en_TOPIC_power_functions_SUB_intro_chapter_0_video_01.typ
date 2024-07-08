#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Introduction to Quadratic Functions]
  #v(40pt)
  
  #only("1-")[📈 Parabolic shape in real-life:]
  #v(20pt)
  #only("2-")[- 🏀 Path of a basketball]
  #v(20pt)
  #only("3-")[- 💡 Light from car headlights]
  #v(20pt)
  #only("4-")[- 🌊 Water fountain spray]

  #only("1")[
    #voiceover("Welcome to our introduction to quadratic functions. Have you ever wondered why certain things in nature follow a curved path?")
  ]
  #only("2")[
    #voiceover("For instance, when you throw a basketball, it follows a curved path through the air.")
  ]
  #only("3")[
    #voiceover("Or consider the beam of light from car headlights, which forms a curved shape on the road.")
  ]
  #only("4")[
    #voiceover("Even the spray of water from a fountain forms a beautiful curved arc. These are all examples of quadratic functions in action!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[The Quadratic Function]
  #v(40pt)
  
  #only("1-")[General form: $ f(x) = a x^2 + b x + c $]
  #v(20pt)
  #only("2-")[Where:]
  #v(10pt)
  #only("3-")[- $a ≠ 0$ (coefficient of $x^2$)]
  #v(10pt)
  #only("4-")[- $b$ (coefficient of $x$)]
  #v(10pt)
  #only("5-")[- $c$ (constant term)]

  #only("1")[
    #voiceover("A quadratic function has a specific form. It's generally written as f of x equals a x squared plus b x plus c.")
  ]
  #only("2")[
    #voiceover("Let's break down what each part means:")
  ]
  #only("3")[
    #voiceover("a is the coefficient of x squared. It's important to note that a cannot be zero, because if it were, we wouldn't have a quadratic function.")
  ]
  #only("4")[
    #voiceover("b is the coefficient of x.")
  ]
  #only("5")[
    #voiceover("And c is the constant term. All of these - a, b, and c - are constants, meaning they're fixed numbers.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Recap: Quadratic Functions]
  #v(40pt)
  
  #only("1-")[📊 Form: $ f(x) = a x^2 + b x + c $]
  #v(20pt)
  #only("2-")[🔑 Key points:]
  #v(10pt)
  #only("3-")[- $a$, $b$, $c$ are constants]
  #v(10pt)
  #only("4-")[- $a ≠ 0$]
  #v(10pt)
  #only("5-")[- 📈 Creates a parabola shape]

  #only("1")[
    #voiceover("Let's recap what we've learned about quadratic functions.")
  ]
  #only("2")[
    #voiceover("The key points to remember are:")
  ]
  #only("3")[
    #voiceover("First, a, b, and c are constants. This means they're fixed numbers that don't change.")
  ]
  #only("4")[
    #voiceover("Second, a must not be equal to zero. If a were zero, we'd no longer have a quadratic function.")
  ]
  #only("5")[
    #voiceover("Finally, quadratic functions create a parabola shape when graphed. This is why we see this curved shape in many real-world situations, like the path of a thrown ball or the spray of a fountain.")
  ]
]