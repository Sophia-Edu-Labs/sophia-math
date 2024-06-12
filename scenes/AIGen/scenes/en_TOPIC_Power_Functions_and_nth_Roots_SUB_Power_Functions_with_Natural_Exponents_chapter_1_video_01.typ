#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Evaluating Power Functions]
#v(40pt)
#only("1-")[- Power functions: $f(x) = x^n$]
#v(20pt)
#only("2-")[- Example: $f(x) = x^3$]
#v(20pt)
#only("3-")[- How to evaluate: Substitute $x$ and calculate $x^n$]
#only("1")[
#voiceover("Welcome! Today, we will learn how to evaluate power functions. A power function is of the form f of x equals x raised to the power of n.")]
#only("2")[
#voiceover("For example, consider the power function f of x equals x cubed.")]
#only("3")[
#voiceover("To evaluate a power function, we substitute the value of x and calculate x raised to the power of n.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Evaluation]
#v(40pt)
#only("1-")[- Step 1: Substitute $x$]
#v(20pt)
#only("2-")[- Step 2: Calculate $x^n$]
#v(20pt)
#only("3-")[- Example: $f(2) = 2^3$]
#v(20pt)
#only("4-")[- Calculation: $2^3 = 8$]
#only("1")[
#voiceover("Let's break it down step by step. First, we substitute the value of x into the function.")]
#only("2")[
#voiceover("Next, we calculate x raised to the power of n.")]
#only("3")[
#voiceover("For example, if we want to evaluate f of 2 for the function f of x equals x cubed, we substitute 2 for x.")]
#only("4")[
#voiceover("Then, we calculate 2 cubed, which equals 8.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Recap]
#v(40pt)
#only("1-")[- Power function: $f(x) = x^n$]
#v(20pt)
#only("2-")[- Substitute $x$ and calculate $x^n$]
#v(20pt)
#only("3-")[- Example: $f(2) = 2^3 = 8$]
#only("1")[
#voiceover("To recap, a power function is of the form f of x equals x raised to the power of n.")]
#only("2")[
#voiceover("To evaluate it, we substitute the value of x and calculate x raised to the power of n.")]
#only("3")[
#voiceover("For example, for the function f of x equals x cubed, f of 2 equals 2 cubed, which is 8.")]
]