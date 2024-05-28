#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Calculation Rules]
#v(40pt)
#only("1-")[- Continuous functions follow certain rules]
#v(20pt)
#only("2-")[- Examples: sum, product, quotient rules]
#only("1")[
#voiceover("Continuous functions follow certain calculation rules that make working with them easier.")
]
#only("2")[
#voiceover("Some examples of these rules are the sum rule, the product rule, and the quotient rule.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Sum Rule]
#v(40pt)
#only("1-")[If $f$ and $g$ are continuous at $a$, then:]
#v(20pt)
#only("2-")[$ lim_(x->a) (f(x) + g(x)) = lim_(x->a) f(x) + lim_(x->a) g(x) $]
#v(20pt)
#only("3-")[In words: The limit of a sum is the sum of the limits ➕]
#only("1")[
#voiceover("Let's start with the sum rule. If f and g are continuous functions at a point a, then...")
]
#only("2")[
#voiceover("the limit of f of x plus g of x, as x approaches a, is equal to the limit of f of x, as x approaches a, plus the limit of g of x, as x approaches a.")
]
#only("3")[
#voiceover("In other words, the limit of a sum is the sum of the limits.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Product Rule]
#v(40pt)
#only("1-")[If $f$ and $g$ are continuous at $a$, then:]
#v(20pt)
#only("2-")[$ lim_(x->a) (f(x) g(x)) = lim_(x->a) f(x) lim_(x->a) g(x) $]
#v(20pt)
#only("3-")[In words: The limit of a product is the product of the limits ✖]
#only("1")[
#voiceover("Similarly, the product rule states that if f and g are continuous at a, then...")
]
#only("2")[
#voiceover("the limit of f of x times g of x, as x approaches a, is equal to the limit of f of x, as x approaches a, times the limit of g of x, as x approaches a.")
]
#only("3")[
#voiceover("In other words, the limit of a product is the product of the limits.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Quotient Rule]
#v(40pt)
#only("1-")[If $f$ and $g$ are continuous at $a$, and $lim_(x->a) g(x) != 0$, then:]
#v(20pt)
#only("2-")[$ lim_(x->a) (f(x) / g(x)) = lim_(x->a) f(x) / lim_(x->a) g(x) $]
#v(20pt)
#only("3-")[In words: The limit of a quotient is the quotient of the limits ➗]
#only("1")[
#voiceover("Finally, the quotient rule. If f and g are continuous at a, and the limit of g of x, as x approaches a, is not zero, then...")
]
#only("2")[
#voiceover("the limit of f of x divided by g of x, as x approaches a, is equal to the limit of f of x, as x approaches a, divided by the limit of g of x, as x approaches a.")
]
#only("3")[
#voiceover("In other words, the limit of a quotient is the quotient of the limits, as long as we're not dividing by zero.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Sum rule: $ lim_(x->a) (f(x) + g(x)) = lim_(x->a) f(x) + lim_(x->a) g(x) $]
#v(20pt)
#only("2-")[- Product rule: $ lim_(x->a) (f(x) g(x)) = lim_(x->a) f(x) lim_(x->a) g(x) $]
#v(20pt)
#only("3-")[- Quotient rule: $ lim_(x->a) (f(x) / g(x)) = lim_(x->a) f(x) / lim_(x->a) g(x) $]
#only("1")[
#voiceover("To recap, the sum rule says that the limit of a sum is the sum of the limits.")
]
#only("2")[
#voiceover("The product rule says that the limit of a product is the product of the limits.")
]
#only("3")[
#voiceover("And the quotient rule says that the limit of a quotient is the quotient of the limits, provided the limit in the denominator is not zero.")
]
]