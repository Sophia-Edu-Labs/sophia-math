#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Evaluating Power Functions]
#v(40pt)
#only("1-")[- $f(x) = x^4$]
#only("2-")[- Evaluate at $x = 3$]
#only("1")[
#voiceover("Nice try! Let's review the correct solution step-by-step. We start with the function f of x equals x to the power of 4.")
]
#only("2")[
#voiceover("Now, we need to evaluate this function at x equals 3.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Substitute $x$ with $3$]
#v(40pt)
#only("1-")[- $f(3) = 3^4$]
#only("1")[
#voiceover("First, we substitute x with 3 in the function. So, f of 3 equals 3 to the power of 4.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Calculate $3^4$]
#v(40pt)
#only("1-")[- $3^4 = 3 * 3 * 3 * 3$]
#only("2-")[- $3 * 3 = 9$]
#only("3-")[- $9 * 3 = 27$]
#only("4-")[- $27 * 3 = 81$]
#only("1")[
#voiceover("Next, we need to calculate 3 to the power of 4. This means multiplying 3 by itself four times: 3 times 3 times 3 times 3.")
]
#only("2")[
#voiceover("First, we multiply 3 by 3, which equals 9.")
]
#only("3")[
#voiceover("Then, we multiply 9 by 3, which equals 27.")
]
#only("4")[
#voiceover("Finally, we multiply 27 by 3, which equals 81.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]
#v(40pt)
#only("1-")[- $f(3) = 81$]
#only("1")[
#voiceover("So, the final answer is f of 3 equals 81.")
]
]