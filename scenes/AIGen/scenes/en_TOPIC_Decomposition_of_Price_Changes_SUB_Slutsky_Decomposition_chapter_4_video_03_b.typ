#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Not quite. Let's go through the correct Slutsky equation step by step to understand what each part represents.")
]

#text(size: 30pt, weight: "bold")[Slutsky Equation]

#v(40pt)

#only("2-")[$ x_1 - x_0 = (x_s - x_0) + (x_1 - x_s) $]
// The Slutsky equation is shown from slide 2 onward

#only("2")[
#voiceover("The Slutsky equation states that x subscript 1 minus x subscript 0 equals the quantity x subscript s minus x subscript 0, plus the quantity x subscript 1 minus x subscript s.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Components]

#v(40pt)

#only("1-")[- $x_1$: new quantity demanded 📈]
// x_1 is explained from slide 1 onward

#only("2-")[- $x_0$: initial quantity demanded 🎬]
// x_0 is explained from slide 2 onward

#only("3-")[- $x_s$: quantity demanded due to substitution effect 🔄]
// x_s is explained from slide 3 onward

#only("1")[
#voiceover("In this equation, x subscript 1 represents the new quantity demanded after the price change.")
]

#only("2")[
#voiceover("x subscript 0 represents the initial quantity demanded before the price change.")
]

#only("3")[
#voiceover("And x subscript s represents the quantity demanded due to the substitution effect, holding utility constant.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Interpretation]

#v(40pt)

#only("1-")[$ x_1 - x_0 $]
// The total effect is highlighted from slide 1 onward

#only("2-")[#align(center)[#text(fill:aqua)[⇓ Total Effect]]]
// The total effect is labeled in aqua from slide 2 onward

#v(10pt)

#only("3-")[$ (x_s - x_0) $]
// The substitution effect is highlighted from slide 3 onward

#only("4-")[#align(center)[#text(fill:aqua)[⇓ Substitution Effect]]]
// The substitution effect is labeled in aqua from slide 4 onward

#v(10pt)

#only("5-")[$ (x_1 - x_s) $]
// The income effect is highlighted from slide 5 onward

#only("6-")[#align(center)[#text(fill:aqua)[⇓ Income Effect]]]
// The income effect is labeled in aqua from slide 6 onward

#only("1")[
#voiceover("The left-hand side of the equation, x subscript 1 minus x subscript 0, represents the total effect of the price change on the quantity demanded.")
]

#only("3")[
#voiceover("On the right-hand side, the first term in parentheses, x subscript s minus x subscript 0, represents the substitution effect.")
]

#only("5")[
#voiceover("The second term in parentheses, x subscript 1 minus x subscript s, represents the income effect.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Summary]

#v(40pt)

#only("1-")[- Slutsky equation decomposes price effect 🔍]

#v(20pt)

#only("2-")[- Total effect = Substitution effect + Income effect ➗]

#v(20pt)

#only("3-")[- Useful for analyzing consumer behavior 🧍‍♂️🛒]

#only("1")[
#voiceover("In summary, the Slutsky equation decomposes the effect of a price change on the quantity demanded into two parts.")
]

#only("2")[
#voiceover("The total effect is equal to the sum of the substitution effect and the income effect.")
]

#only("3")[
#voiceover("This decomposition is a powerful tool for analyzing how consumers respond to price changes, considering both the change in relative prices and the change in purchasing power.")
]

]