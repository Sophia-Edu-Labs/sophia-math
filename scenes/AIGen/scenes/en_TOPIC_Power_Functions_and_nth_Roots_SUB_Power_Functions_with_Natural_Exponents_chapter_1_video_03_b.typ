#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Evaluating Power Functions]
// The title "Evaluating Power Functions" is shown on this slide
#v(40pt)
#only("1-")[- Given: $f(x) = x^4$]
#v(20pt)
#only("2-")[- Evaluate at $x = 3$]
#v(20pt)
#only("3-")[- Substitute $x = 3$ into $f(x)$]
#v(20pt)
#only("4-")[- Calculate $3^4$]
#v(20pt)
#only("5-")[- Result: $81$]
#only("1")[
#voiceover("It seems you didn't get the right answer. Let's go through the correct solution step-by-step. First, we are given the function f of x equals x to the power of 4.")
]
#only("2")[
#voiceover("We need to evaluate this function at x equals 3.")
]
#only("3")[
#voiceover("To do this, we substitute x equals 3 into the function.")
]
#only("4")[
#voiceover("Next, we calculate 3 to the power of 4.")
]
#only("5")[
#voiceover("The result is 81. So, f of 3 equals 81.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Substitution Step]
// The title "Substitution Step" is shown on this slide
#v(40pt)
#only("1-")[- $f(x) = x^4$]
#v(20pt)
#only("2-")[- $f(3) = 3^4$]
#only("1")[
#voiceover("First, we start with the function f of x equals x to the power of 4.")
]
#only("2")[
#voiceover("Then, we substitute x equals 3 into the function, giving us f of 3 equals 3 to the power of 4.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Calculation Step]
// The title "Calculation Step" is shown on this slide
#v(40pt)
#only("1-")[- $3^4 = 3 * 3 * 3 * 3$]
#v(20pt)
#only("2-")[- $3^4 = 81$]
#only("1")[
#voiceover("Now, we calculate 3 to the power of 4. This means multiplying 3 by itself four times.")
]
#only("2")[
#voiceover("So, 3 times 3 times 3 times 3 equals 81.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]
// The title "Final Answer" is shown on this slide
#v(40pt)
#only("1-")[- $f(3) = 81$]
#only("1")[
#voiceover("Therefore, the final answer is f of 3 equals 81.")
]
]