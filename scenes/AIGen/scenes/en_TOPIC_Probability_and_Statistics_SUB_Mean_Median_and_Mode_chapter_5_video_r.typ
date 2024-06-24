#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Review: Mode with Complex Numbers 🧮]
#v(40pt)
#only("1-")[- The mode is the number that appears most frequently in a set. 🔢]
#only("2-")[- A set can have multiple modes or no mode at all. 🔄]
#only("3-")[- Let's review these concepts with examples. 📚]
#only("1")[
#voiceover("In this review, we will discuss the concept of mode in the context of complex numbers. The mode is the number that appears most frequently in a set.")
]
#only("2")[
#voiceover("A set can have multiple modes or no mode at all. Let's review these concepts with some examples.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example 1: Single Mode]
#v(40pt)
#only("1-")[
#voiceover("Consider the set of numbers: 1, 2, 2, 3, 4. The number 2 appears most frequently, so the mode is 2.")
]
#only("2-")[
#text()[$\{1, 2, 2, 3, 4\}$]
#v(20pt)
#text(fill: red)[Mode: 2]
]
#only("2")[
#voiceover("In this set, the number 2 appears most frequently, so the mode is 2.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example 2: Multiple Modes]
#v(40pt)
#only("1-")[
#voiceover("Consider the set of numbers: 1, 2, 2, 3, 3, 4. Both 2 and 3 appear most frequently, so the set has two modes: 2 and 3.")
]
#only("2-")[
#text()[$\{1, 2, 2, 3, 3, 4\}$]
#v(20pt)
#text(fill: red)[Modes: 2, 3]
]
#only("2")[
#voiceover("In this set, both 2 and 3 appear most frequently, so the set has two modes: 2 and 3.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example 3: No Mode]
#v(40pt)
#only("1-")[
#voiceover("Consider the set of numbers: 1, 2, 3, 4, 5. No number appears more than once, so the set has no mode.")
]
#only("2-")[
#text()[$\{1, 2, 3, 4, 5\}$]
#v(20pt)
#text(fill: red)[No Mode]
]
#only("2")[
#voiceover("In this set, no number appears more than once, so the set has no mode.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- The mode is the number that appears most frequently. 🔢]
#only("2-")[- A set can have multiple modes or no mode at all. 🔄]
#only("3-")[- Examples help illustrate these concepts. 📚]
#only("1")[
#voiceover("To summarize, the mode is the number that appears most frequently in a set.")
]
#only("2")[
#voiceover("A set can have multiple modes or no mode at all.")
]
#only("3")[
#voiceover("Examples help illustrate these concepts clearly.")
]
]