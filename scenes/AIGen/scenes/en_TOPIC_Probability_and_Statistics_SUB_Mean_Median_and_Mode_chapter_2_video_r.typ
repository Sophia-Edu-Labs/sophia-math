#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Review: Mode in Statistics 📊]
#v(40pt)
#only("1-")[- The mode is the number that appears most frequently in a set. 🔢]
#only("2-")[- A set can have more than one mode. 🔄]
#only("3-")[- Some sets may have no mode at all. 🚫]
#only("1")[
#voiceover("Let's review the concept of mode in statistics. The mode is the number that appears most frequently in a set.")
]
#only("2")[
#voiceover("It's important to note that a set can have more than one mode. This happens when multiple numbers appear with the same highest frequency.")
]
#only("3")[
#voiceover("Additionally, some sets may have no mode at all if no number repeats.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Review]
#v(40pt)
#only("1-")[- Consider the set: $ {1, 2, 2, 3, 4, 4, 4, 5} $]
#only("2-")[- Frequency of each number: $1: 1, 2: 2, 3: 1, 4: 3, 5: 1$]
#only("3-")[- Mode is the number with the highest frequency: $4$]
#only("1")[
#voiceover("Consider the set of numbers: 1, 2, 2, 3, 4, 4, 4, 5.")
]
#only("2")[
#voiceover("Let's count the frequency of each number. The number 1 appears once, 2 appears twice, 3 appears once, 4 appears three times, and 5 appears once.")
]
#only("3")[
#voiceover("The mode is the number with the highest frequency, which in this case is 4, as it appears three times.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Multiple Modes]
#v(40pt)
#only("1-")[- Consider the set: $ {1, 2, 2, 3, 3, 4, 5} $]
#only("2-")[- Frequency of each number: $1: 1, 2: 2, 3: 2, 4: 1, 5: 1$]
#only("3-")[- Modes are the numbers with the highest frequency: $2, 3$]
#only("1")[
#voiceover("Now, consider a different set of numbers: 1, 2, 2, 3, 3, 4, 5.")
]
#only("2")[
#voiceover("Counting the frequency, we see that the number 1 appears once, 2 appears twice, 3 appears twice, 4 appears once, and 5 appears once.")
]
#only("3")[
#voiceover("In this case, the mode is not a single number. Both 2 and 3 appear with the highest frequency of twice. Therefore, the set has two modes: 2 and 3.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[No Mode]
#v(40pt)
#only("1-")[- Consider the set: $ {1, 2, 3, 4, 5} $]
#only("2-")[- Frequency of each number: $1: 1, 2: 1, 3: 1, 4: 1, 5: 1$]
#only("3-")[- No number repeats, so there is no mode. 🚫]
#only("1")[
#voiceover("Finally, consider the set of numbers: 1, 2, 3, 4, 5.")
]
#only("2")[
#voiceover("Counting the frequency, we see that each number appears exactly once.")
]
#only("3")[
#voiceover("Since no number repeats, this set has no mode.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Mode: number that appears most frequently. 🔢]
#only("2-")[- A set can have more than one mode. 🔄]
#only("3-")[- Some sets may have no mode at all. 🚫]
#only("1")[
#voiceover("To summarize, the mode is the number that appears most frequently in a set.")
]
#only("2")[
#voiceover("A set can have more than one mode if multiple numbers appear with the same highest frequency.")
]
#only("3")[
#voiceover("And some sets may have no mode at all if no number repeats.")
]
]