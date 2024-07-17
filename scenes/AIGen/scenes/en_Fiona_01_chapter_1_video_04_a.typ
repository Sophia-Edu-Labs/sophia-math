#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great, you recognized that correctly! Let's go through the solution step by step together.")
]

#text(size: 30pt, weight: "bold")[Absolute and Relative Frequency]

#v(40pt)

#only("2-")[#text()[- Absolute frequency: number of times an event occurs]]
#only("2")[
#voiceover("First, let's recall the concept of absolute frequency. It is simply the number of times an event occurs.")
]

#v(20pt)

#only("3-")[#text()[- Relative frequency: ratio of absolute frequency to total number of trials]]
#only("3")[
#voiceover("Next, the relative frequency is the ratio of the absolute frequency to the total number of trials.")
]

]


#slide()[
#text(size: 30pt, weight: "bold")[Solution Steps]

#v(40pt)

#only("1-")[- Identify the relevant numbers (1, 2, 3)]
#only("1")[
#voiceover("To solve the problem, we first identify the relevant numbers, which are 1, 2, and 3.")
]

#v(20pt)

#only("2-")[- Count their occurrences (9 times)]
#only("2")[
#voiceover("Next, we count how many times these numbers occur. In this case, they occur 9 times.")
]

#v(20pt)

#only("3-")[- Calculate the relative frequency (9/20)]
#only("3")[
#voiceover("Then, we calculate the relative frequency by dividing the absolute frequency by the total number of trials, which is 20.")
]

#v(20pt)

#only("4-")[- Simplify the fraction (0.45)]
#only("4")[
#voiceover("Finally, we simplify the fraction 9/20 to get 0.45.")
]

]


#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]

#v(40pt)

#only("1-")[- Absolute frequency: 9]
#only("1")[
#voiceover("So, the absolute frequency of drawing a number less than 4 is 9.")
]

#v(20pt)

#only("2-")[- Relative frequency: 0.45]
#only("2")[
#voiceover("And the relative frequency is 0.45.")
]

]