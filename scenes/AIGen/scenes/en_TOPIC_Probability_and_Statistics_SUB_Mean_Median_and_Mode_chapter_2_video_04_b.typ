#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Introduction to Mode]
#v(40pt)
#only("1-")[- Mode: the number that appears most frequently in a data set 📊]
#v(20pt)
#only("2-")[- Given data set: $ (5, 5, 6, 7, 7, 8) $]
#v(20pt)
#only("3-")[- Count the frequency of each number 🔢]
#v(20pt)
#only("4-")[- Identify the number(s) with the highest frequency 🏆]
#v(20pt)
#only("5-")[- Mode of the set: $ 5 $ and $ 7 $]
#only("1")[
#voiceover("That's okay, let's review the correct solution step-by-step. First, the mode is the number that appears most frequently in a data set.")
]
#only("2")[
#voiceover("In this exercise, we are given the data set: 5, 5, 6, 7, 7, 8.")
]
#only("3")[
#voiceover("Next, we need to count the frequency of each number in the set. We have two 5s, one 6, two 7s, and one 8.")
]
#only("4")[
#voiceover("After counting the frequencies, we identify the number or numbers with the highest frequency. Here, both 5 and 7 appear twice, which is more frequent than the other numbers.")
]
#only("5")[
#voiceover("Therefore, the mode of the set is 5 and 7.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Counting Frequencies]
#v(40pt)
#only("1-")[- $5$: $2$ times]
#v(20pt)
#only("2-")[- $6$: $1$ time]
#v(20pt)
#only("3-")[- $7$: $2$ times]
#v(20pt)
#only("4-")[- $8$: $1$ time]
#only("1")[
#voiceover("Let's count the frequencies of each number in the set. The number 5 appears 2 times.")
]
#only("2")[
#voiceover("The number 6 appears 1 time.")
]
#only("3")[
#voiceover("The number 7 appears 2 times.")
]
#only("4")[
#voiceover("And the number 8 appears 1 time.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Identifying the Mode]
#v(40pt)
#only("1-")[- Highest frequency: $2$ times]
#v(20pt)
#only("2-")[- Numbers with highest frequency: $5$ and $7$]
#v(20pt)
#only("3-")[- Mode of the set: $5$ and $7$]
#only("1")[
#voiceover("Now, we identify the highest frequency, which is 2 times.")
]
#only("2")[
#voiceover("The numbers that appear with this highest frequency are 5 and 7.")
]
#only("3")[
#voiceover("Therefore, the mode of the set is 5 and 7.")
]
]