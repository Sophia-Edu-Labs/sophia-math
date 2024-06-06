#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Great Job! 🎉]
#v(40pt)
#only("1-")[That's the correct answer! Let's see how we can simplify $(-16)^(1/4)$ step by step.]
#only("1")[
#voiceover("Great job! That's the correct answer. Let's see how we can simplify the expression negative 16 to the power of one fourth step by step.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Rewrite as Root]
#v(40pt)
#only("1-")[- $(-16)^(1/4) = root(4, -16)$]
#only("1")[
#voiceover("First, we can rewrite the expression using the root notation. Negative 16 to the power of one fourth is equivalent to the fourth root of negative 16.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Simplify Inside the Root]
#v(40pt)
#only("1-")[- $root(4, -16) = root(4, -1 dot 16)$]
#v(20pt)
#only("2-")[- $root(4, -1 dot 16) = root(4, -1) dot root(4, 16)$]
#only("1")[
#voiceover("Next, we can simplify inside the root. Negative 16 can be written as negative 1 times 16.")
]
#only("2")[
#voiceover("Using the property of roots, we can separate this into the fourth root of negative 1 times the fourth root of 16.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Simplify the Roots]
#v(40pt)
#only("1-")[- $root(4, -1) dot root(4, 16) = i dot 2$]
#only("1")[
#voiceover("Now, let's simplify each root. The fourth root of negative 1 is equal to i, the imaginary unit. The fourth root of 16 is equal to 2.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]
#v(40pt)
#only("1-")[- $(-16)^(1/4) = 2i$]
#only("1")[
#voiceover("Therefore, the final simplified form of negative 16 to the power of one fourth is 2i.")
]
]