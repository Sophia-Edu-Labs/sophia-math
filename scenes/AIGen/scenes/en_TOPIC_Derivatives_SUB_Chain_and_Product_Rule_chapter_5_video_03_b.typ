#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Chain Rule Application]
#v(40pt)

#only("-1")[$ f(x) = (2x + 3)^5 $]
#v(20pt)
#only("2-")[$ u = 2x + 3 $]
#v(10pt)
#only("3-")[$ f(x) = u^5 $]
#v(20pt)
#only("4-")[$ f'(x) = 5u^4 dot dif u/dif x $]
#v(10pt)
#only("5-")[$ f'(x) = 5u^4 dot 2 $]
#v(10pt)
#only("6-")[$ f'(x) = 5(2x + 3)^4 dot 2 $]
#v(20pt)
#only("7-")[$ f'(2) = 5(2 dot 2 + 3)^4 dot 2 $]
#v(10pt)
#only("8-")[$ f'(2) = 5(7)^4 dot 2 = 16870 $]

#only("1")[
#voiceover("Not quite, but let's go over the correct solution step-by-step. We start with the function f of x equals two x plus three, all raised to the fifth power.")
]

#only("2")[
#voiceover("To apply the chain rule, let's first identify the outer and inner functions. We can let u equal two x plus three.")
]

#only("3")[
#voiceover("This allows us to rewrite our function as f of x equals u to the fifth power.")
]

#only("4")[
#voiceover("Now, we can apply the chain rule. The derivative of f with respect to x equals five u to the fourth power, times the derivative of u with respect to x.")
]

#only("5")[
#voiceover("The derivative of u with respect to x is simply 2.")
]

#only("6")[
#voiceover("Substituting back u equals two x plus three, we get f prime of x equals five times two x plus three, all to the fourth power, times two.")
]

#only("7")[
#voiceover("To find f prime of 2, we substitute x with 2. So, f prime of 2 equals five times two times two plus three, all to the fourth power, times two.")
]

#only("8")[
#voiceover("Simplifying, we get five times seven to the fourth power, times two, which equals sixteen thousand eight hundred and seventy.")
]
]