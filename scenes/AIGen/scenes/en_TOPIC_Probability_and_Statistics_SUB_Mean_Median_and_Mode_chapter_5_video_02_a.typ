#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Mode with Complex Numbers]
#v(40pt)
#only("1-")[- The mode is the number that appears most frequently in a set 📊]
#v(20pt)
#only("2-")[- Given set: (2, 4, 2, 5, 3, 4, 3) 🔢]
#v(20pt)
#only("3-")[- Count the frequency of each number in the set 🔍]
#v(20pt)
#only("4-")[- Identify the number with the highest frequency 🏆]
#v(20pt)
#only("5-")[- The mode of the set is 2 and 4, as they both appear twice 🎉]
#only("1")[
#voiceover("Great job on solving the problem! Let's go through the solution step-by-step. First, remember that the mode is the number that appears most frequently in a set.")
]
#only("2")[
#voiceover("The given set is: 2, 4, 2, 5, 3, 4, 3.")
]
#only("3")[
#voiceover("Next, we need to count the frequency of each number in the set. Let's do that.")
]
#only("4")[
#voiceover("Now, we identify the number with the highest frequency. In this case, both 2 and 4 appear twice.")
]
#only("5")[
#voiceover("Therefore, the mode of the set is 2 and 4, as they both appear twice.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Counting Frequencies]
#v(40pt)
#only("1-")[- 2 appears 2 times]
#v(20pt)
#only("2-")[- 4 appears 2 times]
#v(20pt)
#only("3-")[- 5 appears 1 time]
#v(20pt)
#only("4-")[- 3 appears 2 times]
#only("1")[
#voiceover("Let's count the frequency of each number in the set. The number 2 appears 2 times.")
]
#only("2")[
#voiceover("The number 4 also appears 2 times.")
]
#only("3")[
#voiceover("The number 5 appears only once.")
]
#only("4")[
#voiceover("And the number 3 appears 2 times.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Identifying the Mode]
#v(40pt)
#only("1-")[- Numbers with highest frequency: 2, 4, and 3]
#v(20pt)
#only("2-")[- Mode of the set: 2 and 4]
#only("1")[
#voiceover("Now, we identify the numbers with the highest frequency. In this case, 2, 4, and 3 all appear 2 times.")
]
#only("2")[
#voiceover("However, since we are looking for the mode, we see that 2 and 4 are the numbers that appear most frequently. Therefore, the mode of the set is 2 and 4.")
]
]