#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Review: Mode 🎯]
#v(40pt)
#only("1-")[- The mode is the number that appears most frequently in a data set. 🔢]
#only("2-")[- A set can have multiple modes or no mode at all. 📊]
#only("3-")[- Let's review the concept of mode through examples. 🧮]
#only("1")[
#voiceover("Let's review the concept of mode. The mode is the number that appears most frequently in a data set.")
]
#only("2")[
#voiceover("A data set can have multiple modes or no mode at all.")
]
#only("3")[
#voiceover("Let's look at some examples to better understand the concept of mode.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example: Single Mode]
#v(40pt)
#only("1-")[- Data set: $1, 2, 2, 3, 4$]
#only("2-")[- Mode: $2$]
#only("1")[
#voiceover("Consider the data set: 1, 2, 2, 3, 4. Here, the number 2 appears most frequently.")
]
#only("2")[
#voiceover("Therefore, the mode of this data set is 2.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example: Multiple Modes]
#v(40pt)
#only("1-")[- Data set: $1, 1, 2, 3, 3$]
#only("2-")[- Modes: $1, 3$]
#only("1")[
#voiceover("Now consider the data set: 1, 1, 2, 3, 3. Here, both 1 and 3 appear most frequently.")
]
#only("2")[
#voiceover("Therefore, this data set has two modes: 1 and 3.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example: No Mode]
#v(40pt)
#only("1-")[- Data set: $1, 2, 3, 4, 5$]
#only("2-")[- No mode]
#only("1")[
#voiceover("Consider the data set: 1, 2, 3, 4, 5. Here, no number appears more than once.")
]
#only("2")[
#voiceover("Therefore, this data set has no mode.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Mode: Most frequently appearing number 🔢]
#only("2-")[- Can have multiple modes 📊]
#only("3-")[- Can have no mode at all 🚫]
#only("1")[
#voiceover("To summarize, the mode is the number that appears most frequently in a data set.")
]
#only("2")[
#voiceover("A data set can have multiple modes if multiple numbers appear with the same highest frequency.")
]
#only("3")[
#voiceover("A data set can also have no mode if no number appears more than once.")
]
]