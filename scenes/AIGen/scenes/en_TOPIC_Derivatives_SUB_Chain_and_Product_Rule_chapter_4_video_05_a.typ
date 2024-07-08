#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Product Rule Application]
  #v(40pt)

  #only("1-")[- $f(x) = x sin(x)$]
  #v(20pt)
  #only("2-")[- Product Rule: $(u v)' = u' v + u v'$]
  #v(20pt)
  #only("3-")[- Let $u = x$ and $v = sin(x)$]
  #v(20pt)
  #only("4-")[- $u' = 1$ and $v' = cos(x)$]
  #v(20pt)
  #only("5-")[- $f'(x) = 1 dot sin(x) + x dot cos(x)$]
  #v(20pt)
  #only("6-")[- $f'(x) = sin(x) + x cos(x)$]
  #v(20pt)
  #only("7-")[- $f'(pi) = sin(pi) + pi cos(pi)$]
  #v(20pt)
  #only("8-")[- $f'(pi) = 0 + pi dot (-1) = -pi$]

  #only("1")[
    #voiceover("Great job! That's the correct answer. Let's walk through the solution step-by-step. We start with the function f of x equals x times sine of x.")
  ]
  #only("2")[
    #voiceover("To differentiate this, we'll use the product rule. The product rule states that the derivative of u times v is u prime times v plus u times v prime.")
  ]
  #only("3")[
    #voiceover("In our case, let's set u equal to x and v equal to sine of x.")
  ]
  #only("4")[
    #voiceover("Now, we need to find u prime and v prime. The derivative of x is 1, so u prime equals 1. The derivative of sine x is cosine x, so v prime equals cosine x.")
  ]
  #only("5")[
    #voiceover("Applying the product rule, we get f prime of x equals 1 times sine x plus x times cosine x.")
  ]
  #only("6")[
    #voiceover("Simplifying, we have f prime of x equals sine x plus x cosine x.")
  ]
  #only("7")[
    #voiceover("Now, to find f prime of pi, we substitute pi for x in our derivative formula.")
  ]
  #only("8")[
    #voiceover("We know that sine of pi is 0 and cosine of pi is negative 1. Substituting these values, we get 0 plus pi times negative 1, which simplifies to negative pi. Therefore, f prime of pi equals negative pi.")
  ]
]