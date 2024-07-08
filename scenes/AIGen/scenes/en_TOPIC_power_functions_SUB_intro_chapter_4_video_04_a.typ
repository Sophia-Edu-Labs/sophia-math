#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great job! You've correctly identified the power function. Let's go through the solution step-by-step to understand why f of x equals two over x is the correct answer.")
]

#text(size: 30pt, weight: "bold")[Power Function with Negative Exponent]

#v(40pt)

#only("2-")[#text()[$ f(x) = 2/x $]]

#only("2")[
#voiceover("We're looking at the function f of x equals two divided by x. This is indeed a power function with a negative exponent.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[General Form of Power Functions]

#v(40pt)

#only("1-")[$ f(x) = a x^b $]
#v(20pt)
#only("2-")[Where:
- $a$ is a constant (coefficient)
- $b$ is the exponent]

#only("1")[
#voiceover("Let's recall the general form of a power function. It's f of x equals a times x to the power of b,")
]

#only("2")[
#voiceover("where a is a constant, often called the coefficient, and b is the exponent.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Rewriting Our Function]

#v(40pt)

#only("1-")[$ f(x) = 2/x $]
#v(20pt)
#only("2-")[$ f(x) = 2 x^(-1) $]

#only("1")[
#voiceover("Now, let's look at our function: f of x equals two divided by x.")
]

#only("2")[
#voiceover("We can rewrite this as f of x equals two times x to the power of negative one. This is because dividing by x is the same as multiplying by x to the power of negative one.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Identifying Components]

#v(40pt)

#only("1-")[In $ f(x) = 2 x^(-1) $:]
#v(20pt)
#only("2-")[- $a = 2$ (coefficient)]
#v(20pt)
#only("3-")[- $b = -1$ (exponent)]

#only("1")[
#voiceover("Let's identify the components of our function.")
]

#only("2")[
#voiceover("The coefficient a is 2,")
]

#only("3")[
#voiceover("and the exponent b is negative one.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Verifying the Point (1, 2)]

#v(40pt)

#only("1-")[Given point: $(1, 2)$]
#v(20pt)
#only("2-")[$ f(1) = 2/1 = 2 $]
#v(20pt)
#only("3-")[✅ Passes through (1, 2)]

#only("1")[
#voiceover("Now, let's verify that this function passes through the point one comma two.")
]

#only("2")[
#voiceover("If we input x equals 1 into our function, we get f of 1 equals 2 divided by 1, which equals 2.")
]

#only("3")[
#voiceover("This confirms that our function indeed passes through the point one comma two.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]

#v(40pt)

#only("1-")[- Power function: $ f(x) = 2/x $ or $ 2x^(-1) $]
#v(20pt)
#only("2-")[- Coefficient $a = 2$]
#v(20pt)
#only("3-")[- Negative exponent $b = -1$]
#v(20pt)
#only("4-")[- Passes through (1, 2) ✅]

#only("1")[
#voiceover("To summarize, we've found a power function f of x equals two divided by x, which can also be written as two times x to the power of negative one.")
]

#only("2")[
#voiceover("It has a coefficient of 2,")
]

#only("3")[
#voiceover("a negative exponent of negative one,")
]

#only("4")[
#voiceover("and it passes through the point one comma two. Well done on solving this problem!")
]
]