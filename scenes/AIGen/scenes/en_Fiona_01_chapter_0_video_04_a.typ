#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great job on attempting the question! Let's go through the solution step by step together.")
]

#text(size: 30pt, weight: "bold")[Absolute and Relative Frequency]

#v(40pt)

#only("2-")[- Absolute frequency: number of times an event occurs]
#only("2")[
#voiceover("First, let's recall that the absolute frequency is the number of times an event occurs.")
]

#v(20pt)

#only("3-")[- Relative frequency: ratio of the absolute frequency to the total number of trials]
#only("3")[
#voiceover("The relative frequency is the ratio of the absolute frequency to the total number of trials.")
]

]


#slide()[
#text(size: 30pt, weight: "bold")[Solution Steps]

#v(40pt)

#only("1-")[- Total number of dice rolls: 10 🎲]
#only("1")[
#voiceover("We are given that the total number of dice rolls is 10.")
]

#v(20pt)

#only("2-")[- Rolling an odd number (1, 3, 5): 3 times]
#only("2")[
#voiceover("The absolute frequency of rolling an odd number, which are 1, 3, and 5, is 3 times.")
]

#v(20pt)

#only("3-")[- Absolute frequency: 3]
#only("3")[
#voiceover("So, the absolute frequency is 3.")
]

#v(20pt)

#only("4-")[- Relative frequency: 3/10 = 0.3]
#only("4")[
#voiceover("To find the relative frequency, we divide the absolute frequency by the total number of trials. Therefore, the relative frequency is 3 divided by 10, which equals 0.3.")
]

]


#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]

#v(40pt)

#only("1-")[- Absolute frequency: 3]
#only("1")[
#voiceover("To summarize, the absolute frequency of rolling an odd number is 3.")
]

#v(20pt)

#only("2-")[- Relative frequency: 0.3]
#only("2")[
#voiceover("And the relative frequency is 0.3.")
]

]