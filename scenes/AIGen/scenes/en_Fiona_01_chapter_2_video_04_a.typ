#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great job on tackling the exercise! Let's go through the solution step by step together.")
]

#text(size: 30pt, weight: "bold")[Absolute and Relative Frequency]

#v(40pt)

#only("2-")[#text()[- Absolute frequency of traveling to Spain or the USA]]
#only("3-")[#text()[- Relative frequency of traveling to Spain or the USA]]

#only("2")[
#voiceover("First, we need to find the absolute frequency of traveling to Spain or the USA.")
]

#only("3")[
#voiceover("Next, we calculate the relative frequency of traveling to Spain or the USA.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]

#v(40pt)

#only("1-")[- Total number of people surveyed: $19$]
#v(10pt)
#only("2-")[- Number of people who traveled to Spain: $7$]
#v(10pt)
#only("3-")[- Number of people who traveled to the USA: $1$]
#v(10pt)
#only("4-")[- Absolute frequency of traveling to Spain or the USA: $7 + 1 = 8$]
#v(10pt)
#only("5-")[- Relative frequency: $8/19$ or approximately $0.42$]

#only("1")[
#voiceover("The total number of people surveyed is 19.")
]

#only("2")[
#voiceover("Out of these, 7 people traveled to Spain.")
]

#only("3")[
#voiceover("And 1 person traveled to the USA.")
]

#only("4")[
#voiceover("To find the absolute frequency of traveling to Spain or the USA, we add the number of people who traveled to each destination. So, 7 plus 1 equals 8.")
]

#only("5")[
#voiceover("The relative frequency is found by dividing the absolute frequency by the total number of people surveyed. So, 8 divided by 19 is approximately 0.42.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]

#v(40pt)

#only("1-")[- Absolute frequency: $8$]
#v(10pt)
#only("2-")[- Relative frequency: $8/19$ or approximately $0.42$]

#only("1")[
#voiceover("In conclusion, the absolute frequency of traveling to Spain or the USA is 8.")
]

#only("2")[
#voiceover("And the relative frequency is 8 divided by 19, which is approximately 0.42.")
]
]