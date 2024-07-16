#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("No worries! Let's go through the correct solution step by step together.")
]

#text(size: 30pt, weight: "bold")[Multiplying Fractions]

#v(40pt)

#only("2-")[#text()[$5 dot 3/4$]]
// The initial multiplication expression is shown from slide 2 onward

#only("2")[
#voiceover("We start with the expression 5 times 3 over 4.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]

#v(40pt)

#only("1-")[- Multiply the numerator by the integer]
// The first step is shown from slide 1 onward

#only("2-")[- Keep the denominator the same]
// The second step is shown from slide 2 onward

#v(20pt)

#only("3-")[$5 dot 3/4 = 15/4$]
// The final result is shown from slide 3 onward

#only("1")[
#voiceover("First, we multiply the numerator by the integer. In this case, we multiply 5 by 3.")
]

#only("2")[
#voiceover("Next, we keep the denominator the same, which is 4.")
]

#only("3")[
#voiceover("So, 5 times 3 over 4 equals 15 over 4.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]

#v(40pt)

#only("1-")[$5 dot 3/4 = 15/4$]
// The final answer is shown from slide 1 onward

#only("1")[
#voiceover("Therefore, the final answer is 15 over 4. Well done!")
]
]