#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Finding the Mode]
#v(40pt)
#only("1-")[- Mode: the value that appears most frequently in a data set 📊]
#v(20pt)
#only("2-")[- Given set: (20, 10, 30, 10, 40, 20, 30)]
#v(20pt)
#only("3-")[- Count the frequency of each number]
#v(20pt)
#only("4-")[- Identify the number with the highest frequency]
#only("1")[
#voiceover("Great job! Let's find the mode of the given set. The mode is the value that appears most frequently in a data set.")
]
#only("2")[
#voiceover("The given set is: 20, 10, 30, 10, 40, 20, 30.")
]
#only("3")[
#voiceover("Now, let's count the frequency of each number in the set.")
]
#only("4")[
#voiceover("Finally, we identify the number with the highest frequency.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Counting Frequencies]
#v(40pt)
#only("1-")[- 20: appears 2 times]
#v(20pt)
#only("2-")[- 10: appears 2 times]
#v(20pt)
#only("3-")[- 30: appears 2 times]
#v(20pt)
#only("4-")[- 40: appears 1 time]
#only("1")[
#voiceover("Let's start by counting the frequency of each number. The number 20 appears 2 times.")
]
#only("2")[
#voiceover("The number 10 also appears 2 times.")
]
#only("3")[
#voiceover("The number 30 appears 2 times as well.")
]
#only("4")[
#voiceover("And finally, the number 40 appears 1 time.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Identifying the Mode]
#v(40pt)
#only("1-")[- Numbers with the highest frequency: 20, 10, 30]
#v(20pt)
#only("2-")[- No unique mode: multiple numbers with the same highest frequency]
#only("1")[
#voiceover("Now, let's identify the numbers with the highest frequency. The numbers 20, 10, and 30 each appear 2 times.")
]
#only("2")[
#voiceover("Since there are multiple numbers with the same highest frequency, there is no unique mode for this set.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[- The given set has no unique mode]
#v(20pt)
#only("2-")[- Multiple modes: 20, 10, 30]
#only("1")[
#voiceover("In conclusion, the given set has no unique mode.")
]
#only("2")[
#voiceover("However, we can say that the set has multiple modes: 20, 10, and 30.")
]
]