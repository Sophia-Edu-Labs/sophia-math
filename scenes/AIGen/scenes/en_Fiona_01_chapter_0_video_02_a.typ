#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great job on recognizing the correct answer! Let's go through the solution step by step together.")
]
#text(size: 30pt, weight: "bold")[Absolute Frequency of Rolling a 6]
#v(40pt)
#only("2-")[- Roll outcomes: 1, 2, 2, 4, 5, 6, 6, 6, 3, 6 🎲]
// The roll outcomes are shown from slide 2 onward
#only("2")[
#voiceover("We start by looking at the outcomes of the 10 dice rolls: 1, 2, 2, 4, 5, 6, 6, 6, 3, and 6.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Counting the Sixes]
#v(40pt)
#only("1-")[- Count the number of times 6 appears in the list 🔢]
// The instruction to count the sixes is shown from slide 1 onward
#only("2-")[- 6 appears 4 times in the list 📊]
// The count of sixes is shown from slide 2 onward
#only("1")[
#voiceover("Next, we count the number of times the number 6 appears in the list.")
]
#only("2")[
#voiceover("In this case, the number 6 appears 4 times.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[- The absolute frequency of rolling a 6 is 4 🎉]
// The conclusion is shown from slide 1 onward
#only("1")[
#voiceover("Therefore, the absolute frequency of rolling a 6 is 4. Well done!")
]
]