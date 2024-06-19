#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Mode Calculation]
#v(40pt)
#only("1-")[- Given set: $\{1, 2, 2, 3, 4\}$]
#v(20pt)
#only("2-")[- Mode: the number that appears most frequently 🏆]
#v(20pt)
#only("3-")[- Count the occurrences of each number 🔢]
#v(20pt)
#only("4-")[- Identify the number with the highest frequency 📈]
#v(20pt)
#only("5-")[- Mode of the set: $2$ 🎉]
#only("1")[
#voiceover("Not quite. Let's go through the correct solution step-by-step. We start with the given set of numbers: 1, 2, 2, 3, 4.")
]
#only("2")[
#voiceover("The mode is the number that appears most frequently in the set.")
]
#only("3")[
#voiceover("Next, we count the occurrences of each number in the set.")
]
#only("4")[
#voiceover("We then identify the number with the highest frequency.")
]
#only("5")[
#voiceover("In this set, the number 2 appears most frequently, so the mode of the set is 2.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Counting Occurrences]
#v(40pt)
#only("1-")[- $1$: appears $1$ time]
#v(20pt)
#only("2-")[- $2$: appears $2$ times]
#v(20pt)
#only("3-")[- $3$: appears $1$ time]
#v(20pt)
#only("4-")[- $4$: appears $1$ time]
#only("1")[
#voiceover("Let's count the occurrences of each number. The number 1 appears one time.")
]
#only("2")[
#voiceover("The number 2 appears two times.")
]
#only("3")[
#voiceover("The number 3 appears one time.")
]
#only("4")[
#voiceover("The number 4 appears one time.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Identifying the Mode]
#v(40pt)
#only("1-")[- Highest frequency: $2$ (appears $2$ times)]
#v(20pt)
#only("2-")[- Mode: $2$ 🎉]
#only("1")[
#voiceover("Now, we identify the number with the highest frequency. The number 2 appears two times, which is the highest frequency.")
]
#only("2")[
#voiceover("Therefore, the mode of the set is 2. Well done!")
]
]