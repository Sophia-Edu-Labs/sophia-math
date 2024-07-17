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

#text(size: 30pt, weight: "bold")[Absolute Frequency of Drawing a 5]

#v(40pt)

#only("2-")[- Given sequence: 1, 2, 2, 3, 4, 5, 5, 5, 5, 3, 4, 2, 1, 5, 6, 3, 6, 5, 3, 4]
// The given sequence is shown from slide 2 onward

#only("2")[
#voiceover("We are given the sequence of card draws: 1, 2, 2, 3, 4, 5, 5, 5, 5, 3, 4, 2, 1, 5, 6, 3, 6, 5, 3, 4.")
]

]


#slide()[
#only("1")[
#voiceover("To find the absolute frequency of drawing a 5, we need to count how many times the number 5 appears in the sequence.")
]

#text(size: 30pt, weight: "bold")[Counting the 5s]

#v(40pt)

#only("2-")[- Count the occurrences of 5]
// The instruction to count the occurrences of 5 is shown from slide 2 onward

#only("2")[
#voiceover("Let's count the occurrences of the number 5 in the sequence.")
]

]


#slide()[
#only("1")[
#voiceover("We see that the number 5 appears six times in the sequence. So, the absolute frequency of drawing a 5 is 6.")
]

#text(size: 30pt, weight: "bold")[Final Answer]

#v(40pt)

#only("2-")[- Absolute frequency of 5: 6 🎉]
// The final answer is shown from slide 2 onward

#only("2")[
#voiceover("The absolute frequency of drawing a 5 is 6. Well done!")
]

]