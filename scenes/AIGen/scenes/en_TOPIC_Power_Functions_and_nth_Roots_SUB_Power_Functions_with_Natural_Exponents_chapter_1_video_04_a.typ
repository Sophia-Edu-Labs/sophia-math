#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Evaluating Power Functions]
#v(40pt)
// Introduction to the problem
#only("1-")[- Given: $f(x) = x^5$]
#v(20pt)
#only("2-")[- Find: $f(1)$]
#v(20pt)
#only("3-")[- Solution: Substitute $x = 1$ into $f(x)$]
#v(20pt)
#only("4-")[- Calculate: $f(1) = 1^5$]
#v(20pt)
#only("5-")[- Result: $f(1) = 1$]
#only("1")[
#voiceover("Great job on answering the question correctly! Let's go through the solution step-by-step. We are given the function f of x equals x to the power of 5.")
]
#only("2")[
#voiceover("We need to find the value of the function at x equals 1.")
]
#only("3")[
#voiceover("To do this, we substitute x with 1 in the function f of x.")
]
#only("4")[
#voiceover("Now, we calculate the value. One to the power of five is one.")
]
#only("5")[
#voiceover("So, the result is f of 1 equals 1.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Substitution]
#v(40pt)
// Detailed substitution process
#only("1-")[- $f(x) = x^5$]
#v(20pt)
#only("2-")[- Substitute $x = 1$: $f(1) = 1^5$]
#only("1")[
#voiceover("Let's look at the substitution process in more detail. We start with the function f of x equals x to the power of 5.")
]
#only("2")[
#voiceover("We substitute x with 1, so we get f of 1 equals 1 to the power of 5.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Calculation]
#v(40pt)
// Calculation process
#only("1-")[- $1^5 = 1 \cdot 1 \cdot 1 \cdot 1 \cdot 1$]
#v(20pt)
#only("2-")[- $1^5 = 1$]
#only("1")[
#voiceover("Now let's calculate the value. One to the power of five means multiplying one by itself five times.")
]
#only("2")[
#voiceover("One times one times one times one times one equals one. So, one to the power of five is one.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
// Final result
#only("1-")[- $f(1) = 1$]
#only("1")[
#voiceover("In conclusion, we have found that f of 1 equals 1. Great job!")
]
]