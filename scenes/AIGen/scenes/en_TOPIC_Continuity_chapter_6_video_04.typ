#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Calculation Rules for Continuous Functions 🧮]
#v(40pt)
#only("1-")[- Sum Rule: $lim_(x->a) (f(x) + g(x)) = lim_(x->a) f(x) + lim_(x->a) g(x)$]
#v(20pt)
#only("2-")[- Product Rule: $lim_(x->a) (f(x) dot g(x)) = lim_(x->a) f(x) dot lim_(x->a) g(x)$]
#v(20pt)
#only("3-")[- Quotient Rule: $lim_(x->a) (f(x) / g(x)) = lim_(x->a) f(x) / lim_(x->a) g(x)$, if $lim_(x->a) g(x) != 0$]

#only("1")[
#voiceover("Continuous functions follow certain calculation rules. First, there's the sum rule. It states that the limit of a sum is equal to the sum of the limits.")
]
#only("2")[
#voiceover("Next, we have the product rule. It says that the limit of a product is equal to the product of the limits.")
]
#only("3")[
#voiceover("Finally, there's the quotient rule. It states that the limit of a quotient is equal to the quotient of the limits, provided that the limit of the denominator is not zero.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example 📝]
#v(40pt)
#only("1-")[If $f(x) = x^2$ and $g(x) = 2x$, find $lim_(x -> 2) (f(x) + g(x))$.]
#v(20pt)
#only("2-")[Solution: $lim_(x -> 2) (x^2) + lim_(x -> 2) (2x) = 2^2 + 2 dot 2 = 4 + 4 = 8$]

#only("1")[
#voiceover("Let's look at an example. If f of x equals x squared and g of x equals 2x, we want to find the limit as x approaches 2 of f of x plus g of x.")
]
#only("2")[
#voiceover("To solve this, we apply the sum rule. The limit of x squared as x approaches 2 plus the limit of 2x as x approaches 2 equals 2 squared plus 2 times 2, which simplifies to 4 plus 4, or 8.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Importance of Continuity 🌉]
#v(40pt)
#only("1-")[- Continuity ensures smooth transitions 🎢]
#v(20pt)
#only("2-")[- Important in physics, engineering, and other fields 🌍]
#v(20pt)
#only("3-")[- Allows for predictable behavior and stability 📈]

#only("1")[
#voiceover("Continuity is a crucial property because it ensures smooth transitions. There are no sudden jumps or breaks in the function.")
]
#only("2")[
#voiceover("This is important in many fields, such as physics and engineering, where smooth transitions are necessary for systems to work properly.")
]
#only("3")[
#voiceover("Continuity allows for predictable behavior and stability in these systems. That's why understanding the calculation rules for continuous functions is so valuable.")
]
]