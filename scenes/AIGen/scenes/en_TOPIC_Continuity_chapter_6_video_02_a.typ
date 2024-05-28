#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Calculation Rules for Continuous Functions]
#v(40pt)
Which of the following is a calculation rule for continuous functions?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[a) Sum rule]#only("2-")[#text(fill:green)[a) Sum rule]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Product rule]#only("3-")[#text(fill:green)[b) Product rule]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) Quotient rule]#only("4-")[#text(fill:green)[c) Quotient rule]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned green, because it is correct.
#only("-4")[d) All of the above]#only("5-")[#text(fill:green)[d) All of the above]]
#only("1")[#voiceover("That's not quite right. Let's review the correct solution.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Sum Rule]
#v(40pt)
#only("1-")[If $f$ and $g$ are continuous at $c$, then $f + g$ is continuous at $c$ and]
#v(20pt)
#only("2-")[$(f + g)(c) = f(c) + g(c)$]
#v(40pt)
#only("1")[#voiceover("First, let's look at the sum rule. If f and g are continuous functions at a point c, then their sum, f plus g, is also continuous at c.")]
#only("2")[#voiceover("Moreover, the value of the sum at c is equal to the sum of the individual function values at c.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Product Rule]
#v(40pt)
#only("1-")[If $f$ and $g$ are continuous at $c$, then $fg$ is continuous at $c$ and]
#v(20pt)
#only("2-")[$(fg)(c) = f(c)g(c)$]
#v(40pt)
#only("1")[#voiceover("Similarly, the product rule states that if f and g are continuous at c, then their product, f times g, is also continuous at c.")]
#only("2")[#voiceover("And the value of the product at c is equal to the product of the individual function values at c.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Quotient Rule]
#v(40pt)
#only("1-")[If $f$ and $g$ are continuous at $c$ and $g(c) != 0$, then $f/g$ is continuous at $c$ and]
#v(20pt)
#only("2-")[$f/g(c) = f(c)/g(c)$]
#v(40pt)
#only("1")[#voiceover("Finally, the quotient rule. If f and g are continuous at c, and g of c is not equal to zero, then their quotient, f divided by g, is also continuous at c.")]
#only("2")[#voiceover("In this case, the value of the quotient at c is equal to the quotient of the individual function values at c.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Let $f(x) = x^2$ and $g(x) = sin(x)$. Both are continuous everywhere.]
#v(20pt)
#only("2-")[Then $f + g$, $fg$, and $f/g$ (where $g != 0$) are also continuous functions.]
#v(40pt)
#only("1")[#voiceover("Let's consider an example. Suppose f of x equals x squared and g of x equals sine of x. We know that both of these functions are continuous everywhere.")]
#only("2")[#voiceover("Then, by the rules we just discussed, the sum of f and g, the product of f and g, and the quotient of f and g (as long as g is not zero) are also continuous functions.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Sum, product, and quotient of continuous functions are continuous 🧮]
#v(20pt)
#only("2-")[- Value at a point is the sum, product, or quotient of the values 📍]
#v(20pt)
#only("3-")[- Key tool in analyzing and constructing continuous functions 🔑]
#only("1")[#voiceover("In summary, the sum, product, and quotient of continuous functions are also continuous.")]
#only("2")[#voiceover("The value of the resulting function at a point is the sum, product, or quotient of the values of the component functions at that point.")]
#only("3")[#voiceover("These rules are a key tool in analyzing and constructing continuous functions.")]
]