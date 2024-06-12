#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Evaluating Power Functions]
#v(40pt)
#only("1-")[- Given: $f(x) = x^5$]
#v(20pt)
#only("2-")[- Evaluate at $x = 1$]
#v(20pt)
#only("3-")[- Substitute $x = 1$ into $f(x)$]
#v(20pt)
#only("4-")[- Calculate $1^5$]
#v(20pt)
#only("5-")[- Result: $f(1) = 1$]
#only("1")[
#voiceover("Great job on answering the question correctly! Let's go through the solution step-by-step. We are given the function f of x equals x to the power of 5.")
]
#only("2")[
#voiceover("We need to evaluate this function at x equals 1.")
]
#only("3")[
#voiceover("To do this, we substitute x equals 1 into the function.")
]
#only("4")[
#voiceover("Next, we calculate 1 to the power of 5.")
]
#only("5")[
#voiceover("Finally, we find that f of 1 equals 1.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Substitution]
#v(40pt)
#only("1-")[- Substitute $x = 1$ into $f(x)$]
#v(20pt)
#only("2-")[- $f(1) = 1^5$]
#only("1")[
#voiceover("First, we substitute x equals 1 into the function f of x.")
]
#only("2")[
#voiceover("This gives us f of 1 equals 1 to the power of 5.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Calculation]
#v(40pt)
#only("1-")[- Calculate $1^5$]
#v(20pt)
#only("2-")[- $1^5 = 1$]
#only("1")[
#voiceover("Next, we calculate 1 to the power of 5.")
]
#only("2")[
#voiceover("Since any number to the power of 0 is 1, we have 1 to the power of 5 equals 1.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Result]
#v(40pt)
#only("1-")[- Result: $f(1) = 1$]
#only("1")[
#voiceover("Therefore, the result is f of 1 equals 1.")
]
]