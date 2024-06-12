#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Evaluating Power Functions]
#v(40pt)
#only("1-")[- Given function: $f(x) = x^3$]
#v(20pt)
#only("2-")[- Evaluate at $x = 2$]
#v(20pt)
#only("3-")[- Substitute $x$ with $2$]
#v(20pt)
#only("4-")[- Calculate $2^3$]
#v(20pt)
#only("5-")[- Result: $f(2) = 8$]
#only("1")[
#voiceover("It looks like the answer wasn't quite right. Let's go through the correct solution step-by-step. We start with the given function, f of x equals x cubed.")
]
#only("2")[
#voiceover("Next, we need to evaluate this function at x equals 2.")
]
#only("3")[
#voiceover("To do this, we substitute x with 2 in the function.")
]
#only("4")[
#voiceover("Now, we calculate 2 to the power of 3.")
]
#only("5")[
#voiceover("Finally, we find that 2 to the power of 3 is 8. So, f of 2 equals 8.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Substitution]
#v(40pt)
#only("1-")[- $f(x) = x^3$]
#v(20pt)
#only("2-")[- $f(2) = 2^3$]
#v(20pt)
#only("3-")[- $2^3 = 2 \cdot 2 \cdot 2$]
#v(20pt)
#only("4-")[- $2 \cdot 2 = 4$]
#v(20pt)
#only("5-")[- $4 \cdot 2 = 8$]
#only("1")[
#voiceover("Let's break down the substitution process. We start with the function f of x equals x cubed.")
]
#only("2")[
#voiceover("Substitute x with 2, so we get f of 2 equals 2 cubed.")
]
#only("3")[
#voiceover("Now, we need to calculate 2 cubed, which is 2 times 2 times 2.")
]
#only("4")[
#voiceover("First, we multiply 2 by 2 to get 4.")
]
#only("5")[
#voiceover("Then, we multiply 4 by 2 to get 8. So, f of 2 equals 8.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Result]
#v(40pt)
#only("1-")[- $f(2) = 8$]
#v(20pt)
#only("2-")[- $f(x) = x^3$]
#v(20pt)
#only("3-")[- $f(2) = 2^3$]
#v(20pt)
#only("4-")[- $2^3 = 8$]
#only("1")[
#voiceover("To summarize, we evaluated the function f of x equals x cubed at x equals 2 and found that f of 2 equals 8.")
]
#only("2")[
#voiceover("We started with the function f of x equals x cubed.")
]
#only("3")[
#voiceover("Substituted x with 2 to get f of 2 equals 2 cubed.")
]
#only("4")[
#voiceover("And finally, we calculated 2 cubed to be 8. So, f of 2 equals 8.")
]
]