#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great, you recognized that correctly! Let's go through the solution step by step together.")
]

#text(size: 30pt, weight: "bold")[Multiplying Fractions]

#v(40pt)

#only("2-")[#text()[$5 dot 7/8$]]
// The multiplication expression is shown from slide 2 onward

#only("2")[
#voiceover("We start with the expression 5 multiplied by seven eighths.")
]

]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]

#v(40pt)

#only("1-")[- Convert 5 to a fraction: $5/1$]
// Converting 5 to a fraction is shown from slide 1 onward

#v(20pt)

#only("2-")[- Multiply the numerators: $5 dot 7$]
// Multiplying the numerators is shown from slide 2 onward

#v(20pt)

#only("3-")[- Multiply the denominators: $1 dot 8$]
// Multiplying the denominators is shown from slide 3 onward

#v(20pt)

#only("4-")[- Result: $35/8$]
// The result of the multiplication is shown from slide 4 onward

#only("1")[
#voiceover("First, we convert 5 to a fraction, which is 5 over 1.")
]

#only("2")[
#voiceover("Next, we multiply the numerators together, which gives us 5 times 7.")
]

#only("3")[
#voiceover("Then, we multiply the denominators together, which gives us 1 times 8.")
]

#only("4")[
#voiceover("So, the result of the multiplication is thirty-five over eight.")
]

]


#slide()[
#text(size: 30pt, weight: "bold")[Simplifying the Result]

#v(40pt)

#only("1-")[- Convert $35/8$ to a mixed number]
// Converting to a mixed number is shown from slide 1 onward

#v(20pt)

#only("2-")[- $35/8 = 4 3/8$]
// The mixed number result is shown from slide 2 onward

#only("1")[
#voiceover("Now, let's convert thirty-five over eight to a mixed number.")
]

#only("2")[
#voiceover("Thirty-five divided by eight is four with a remainder of three. So, the mixed number is four and three eighths.")
]

]


#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]

#v(40pt)

#only("1-")[- $5 dot 7/8 = 35/8$ or $4 3/8$]
// The final answer is shown from slide 1 onward

#only("1")[
#voiceover("Therefore, the final answer is thirty-five over eight or four and three eighths.")
]
]