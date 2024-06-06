#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Great Job! 🎉]
#v(40pt)
#only("1-")[
Your answer is correct! Let's see how to rationalize $1/root(4, 5)$ step by step.
]
#only("1")[
#voiceover("Great job! Your answer is absolutely correct. Let's now see how we can rationalize the expression 1 over the fourth root of 5 step by step.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Multiply by $root(4, 5^3)/root(4, 5^3)$]
#v(40pt)
#only("1-")[
- $1/root(4, 5) = 1/root(4, 5) * root(4, 5^3)/root(4, 5^3)$
]
#only("1")[
#voiceover("The first step is to multiply the expression by the fourth root of 5 cubed over the fourth root of 5 cubed. This is equivalent to multiplying by 1, so it doesn't change the value of the expression.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Simplify]
#v(40pt)
#only("1-")[
- $1/root(4, 5) * root(4, 5^3)/root(4, 5^3) = root(4, 5^3)/(root(4, 5) * root(4, 5^3))$
]
#only("2-")[
- $root(4, 5^3)/(root(4, 5) * root(4, 5^3)) = root(4, 5^3)/root(4, 5^4)$
]
#only("1")[
#voiceover("Next, we simplify the numerator and denominator. In the numerator, we just have the fourth root of 5 cubed.")
]
#only("2")[
#voiceover("In the denominator, the fourth root of 5 times the fourth root of 5 cubed is equal to the fourth root of 5 to the fourth power.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Simplify Further]
#v(40pt)
#only("1-")[
- $root(4, 5^3)/root(4, 5^4) = root(4, 125)/root(4, 625)$
]
#only("2-")[
- $root(4, 125)/root(4, 625) = 5/25$
]
#only("1")[
#voiceover("We can simplify this further. The fourth root of 5 cubed is equal to the fourth root of 125, and the fourth root of 5 to the fourth power is equal to the fourth root of 625.")
]
#only("2")[
#voiceover("Finally, the fourth root of 125 is 5, and the fourth root of 625 is 25. So our final answer is 5 over 25.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]
#v(40pt)
#only("1-")[
- $1/root(4, 5) = root(4, 5^3)/5$
]
#only("1")[
#voiceover("Therefore, when we rationalize 1 over the fourth root of 5, we get the fourth root of 5 cubed over 5.")
]
]