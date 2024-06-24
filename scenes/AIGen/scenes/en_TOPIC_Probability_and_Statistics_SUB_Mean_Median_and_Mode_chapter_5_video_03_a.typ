#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Mode with Complex Numbers]
#v(40pt)
#only("1-")[- Given set: $(2, 5, 3, 3, 4, 5, 1, 2)$]
#v(20pt)
#only("2-")[- Mode: the number that appears most frequently 🔢]
#v(20pt)
#only("3-")[- Frequency count: $2 arrow 2$, $5 arrow 2$, $3 arrow 2$, $4 arrow 1$, $1 arrow 1$]
#v(20pt)
#only("4-")[- Mode: $2, 3, 5$ (all appear twice)]
#only("1")[
#voiceover("Great, that's it! Let's go through the correct solution step-by-step. First, we are given the set of numbers: 2, 5, 3, 3, 4, 5, 1, 2.")
]
#only("2")[
#voiceover("The mode is the number that appears most frequently in the set.")
]
#only("3")[
#voiceover("We count the frequency of each number: 2 appears twice, 5 appears twice, 3 appears twice, 4 appears once, and 1 appears once.")
]
#only("4")[
#voiceover("Since 2, 3, and 5 all appear twice, they are the modes of this set.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Frequency Count]
#v(40pt)
#only("1-")[
#table(
fill: (row, _) => if row == 0 { gray } else { white },
columns: (auto, auto),
inset: 10pt,
align: horizon,
[*Number*], [*Frequency*],
[$ 2 $], [$ 2 $],
[$ 5 $], [$ 2 $],
[$ 3 $], [$ 2 $],
[$ 4 $], [$ 1 $],
[$ 1 $], [$ 1 $]
)
]
#only("1")[
#voiceover("Here is a table showing the frequency count of each number in the set.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[- Mode: $2, 3, 5$ (each appears twice) 🎉]
#only("1")[
#voiceover("In conclusion, the mode of the set is 2, 3, and 5, as each of these numbers appears twice. Well done!")
]
]