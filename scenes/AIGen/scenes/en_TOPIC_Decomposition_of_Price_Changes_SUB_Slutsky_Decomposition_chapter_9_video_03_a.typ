#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Finding the Minimum Value]
#v(40pt)
#only("1-")[- Given: $f(x) = x^2 - 4x + 7$]
#only("1")[
#voiceover("Great job! You correctly found the minimum value of the function f of x equals x squared minus 4x plus 7. Let's go through the solution step by step.")
]
#only("2")[
#voiceover("First, we are given the function f of x equals x squared minus 4x plus 7.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Differentiate]
#v(40pt)
#only("1-")[- $dif f / dif x = 2x - 4$]
#only("1")[
#voiceover("To find the minimum value, we first differentiate the function. The derivative of f with respect to x is 2x minus 4.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Set Derivative to Zero]
#v(40pt)
#only("1-")[- Set $2x - 4 = 0$]
#v(20pt)
#only("2-")[- Solve for $x$: $x = 2$]
#only("1")[
#voiceover("Next, we set the derivative equal to zero. This gives us the equation 2x minus 4 equals 0.")
]
#only("2")[
#voiceover("Solving this equation for x, we get x equals 2.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Evaluate at Critical Point]
#v(40pt)
#only("1-")[- Evaluate $f(2)$:]
#v(20pt)
#only("2-")[- $f(2) = 2^2 - 4 * 2 + 7 = 3$]
#only("1")[
#voiceover("The final step is to evaluate the function at this critical point. We calculate f of 2.")
]
#only("2")[
#voiceover("f of 2 equals 2 squared minus 4 times 2 plus 7, which simplifies to 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Minimum Value]
#v(40pt)
#only("1-")[- The minimum value of $f(x)$ is 3. 🎉]
#only("1")[
#voiceover("Therefore, the minimum value of the function f of x equals x squared minus 4x plus 7 is 3. Fantastic work!")
]
]