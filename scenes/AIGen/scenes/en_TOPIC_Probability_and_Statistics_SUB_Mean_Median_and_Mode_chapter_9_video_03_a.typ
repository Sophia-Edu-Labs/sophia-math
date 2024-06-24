#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Mode of a Data Set]
#v(40pt)
// Introduction to the concept of mode
#only("1-")[- The mode is the number that appears most frequently in a data set 📊]
#v(20pt)
// Example data set
#only("2-")[- Consider the data set: (25, 15, 35, 15, 45, 25, 35) 🔢]
#v(20pt)
// Frequency count introduction
#only("3-")[- We need to count the frequency of each number in the data set 🔍]
#only("1")[
#voiceover("Great job! The mode is the number that appears most frequently in a data set.")
]
#only("2")[
#voiceover("Let's consider the data set: 25, 15, 35, 15, 45, 25, 35.")
]
#only("3")[
#voiceover("To find the mode, we need to count the frequency of each number in the data set.")
]
]




#slide()[
#text(size: 30pt, weight: "bold")[Mode of a Data Set]
#v(40pt)
// Frequency count table
#only("1-")[
#table(
columns: (auto, auto),
inset: 10pt,
align: horizon,
[], [*Number*], [*Frequency*],
[*L*],
[$ 15 $], [$ 2 $],
[$ 25 $], [$ 2 $],
[$ 35 $], [$ 2 $],
[$ 45 $], [$ 1 $]
)
]
#v(20pt)
// Identifying the mode
#only("2-")[- The numbers 15, 25, and 35 each appear twice, which is more frequent than any other number in the set 🏆]
#v(20pt)
// Conclusion
#only("3-")[- Therefore, the mode of the data set is 15, 25, and 35 🎉]
#only("1")[
#voiceover("Here is a frequency count table. The number 15 appears twice, the number 25 appears twice, the number 35 appears twice, and the number 45 appears once.")
]
#only("2")[
#voiceover("We see that the numbers 15, 25, and 35 each appear twice, which is more frequent than any other number in the set.")
]
#only("3")[
#voiceover("Therefore, the mode of the data set is 15, 25, and 35. Well done!")
]
]
