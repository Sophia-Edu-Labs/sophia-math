#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Simplifying Rational Exponents]
#v(40pt)
#only("1-")[#align(center)[$((16^(1/4))^2)^2 = ?$]]
#only("1")[
#voiceover("Great job! That's the correct answer. Let's see how we can simplify this expression step by step.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Simplify Inner Exponent]
#v(40pt)
#only("1-")[- $16^(1/4) = 2$]
#v(20pt)
#only("2-")[- $(16^(1/4))^2 = (2)^2$]
#only("1")[
#voiceover("First, let's simplify the innermost exponent. 16 to the power of 1/4 equals 2, because the fourth root of 16 is 2.")
]
#only("2")[
#voiceover("So, we can rewrite the expression as 2 squared, squared.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Simplify Outer Exponent]
#v(40pt)
#only("1-")[- $(2)^2 = 4$]
#v(20pt)
#only("2-")[- $((2)^2)^2 = (4)^2$]
#only("1")[
#voiceover("Next, let's simplify 2 squared. 2 squared equals 4.")
]
#only("2")[
#voiceover("So, now we have 4 squared.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Simplify Final Expression]
#v(40pt)
#only("1-")[- $(4)^2 = 16$]
#only("1")[
#voiceover("Finally, 4 squared equals 16.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution]
#v(40pt)
#only("1-")[- $((16^(1/4))^2)^2 = 16$ 🎉]
#only("1")[
#voiceover("Therefore, the simplified expression is 16. Well done!")
]
]