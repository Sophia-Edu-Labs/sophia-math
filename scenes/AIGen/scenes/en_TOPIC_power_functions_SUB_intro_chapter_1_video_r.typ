#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Review: Cubic Functions 📊]
  #v(40pt)
  #only("1-")[- Modeling complex real-world phenomena 🌍]
  #only("2-")[- Extending quadratic functions 📈]
  #only("3-")[- Let's review the general form 🔍]

  #only("1")[
    #voiceover("Let's review cubic functions. These are essential for modeling complex real-world phenomena that quadratic functions can't capture.")
  ]
  #only("2")[
    #voiceover("Cubic functions extend the concept of quadratic functions by introducing a third-degree term.")
  ]
  #only("3")[
    #voiceover("Let's review the general form of a cubic function.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[General Form of Cubic Functions]
  #v(40pt)
  #only("1-")[
    #align(center)[
      $ f(x) = a x^3 + b x^2 + c x + d $
    ]
  ]
  #v(20pt)
  #only("2-")[Where:]
  #only("3-")[- $a ≠ 0$ (defining characteristic) 🔑]
  #only("4-")[- $b$, $c$, $d$ can be any real number 🔢]
  #only("5-")[- $a$, $b$, $c$, $d$ are constants ⚖️]

  #only("1")[
    #voiceover("The general form of a cubic function is f of x equals a x cubed plus b x squared plus c x plus d.")
  ]
  #only("2")[
    #voiceover("Let's break down what each part means:")
  ]
  #only("3")[
    #voiceover("a is not equal to zero. This is crucial because it's what makes the function cubic.")
  ]
  #only("4")[
    #voiceover("b, c, and d can be any real number, including zero.")
  ]
  #only("5")[
    #voiceover("a, b, c, and d are all constants, meaning they don't change as x changes.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary: Cubic Functions 📝]
  #v(40pt)
  #only("1-")[- Form: $f(x) = a x^3 + b x^2 + c x + d$ 📊]
  #only("2-")[- $a ≠ 0$ defines cubic nature 🔑]
  #only("3-")[- $b$, $c$, $d$ are any real numbers 🔢]
  #only("4-")[- All coefficients are constants ⚖️]
  #only("5-")[- Models complex phenomena 🌍]

  #only("1")[
    #voiceover("To summarize, we've reviewed that a cubic function has the form f of x equals a x cubed plus b x squared plus c x plus d.")
  ]
  #only("2")[
    #voiceover("The coefficient a must not be zero, as this defines the cubic nature of the function.")
  ]
  #only("3")[
    #voiceover("The coefficients b, c, and d can be any real number.")
  ]
  #only("4")[
    #voiceover("All coefficients - a, b, c, and d - are constants.")
  ]
  #only("5")[
    #voiceover("Understanding cubic functions allows us to model complex phenomena in various fields, from physics to economics.")
  ]
]