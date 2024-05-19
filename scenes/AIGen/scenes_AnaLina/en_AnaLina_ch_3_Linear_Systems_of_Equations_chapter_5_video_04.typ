#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Solution Set of Linear Systems]
#v(40pt)
#only("1-")[- Depends on the ranks of coefficient matrix $A$ and augmented matrix $[A|b]$]
#v(20pt)
#only("2-")[- Three possibilities: unique, infinite, or nonexistent 🔍]
#only("1")[
#voiceover("The structure of the solution set of a linear system depends on the ranks of the coefficient matrix A and the augmented matrix [A|b].")
]
#only("2")[
#voiceover("There are three possible outcomes: the solution set can be unique, infinite, or nonexistent.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Unique Solution]
#v(40pt)
#only("1-")[- $"rank"(A) = "rank"([A|b]) = n$ (number of variables)]
#v(20pt)
#only("2-")[- Example: $x + y = 2$, $2x - y = 3$ ✅]
#only("1")[
#voiceover("The solution set is unique if the rank of A equals the rank of [A|b], and this rank is equal to the number of variables n.")
]
#only("2")[
#voiceover("For example, the system x plus y equals 2 and 2x minus y equals 3 has a unique solution.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Infinite Solutions]
#v(40pt)
#only("1-")[- $"rank"(A) = "rank"([A|b]) < n$ (number of variables)]
#v(20pt)
#only("2-")[- Example: $x + y = 2$, $2x + 2y = 4$ ♾]
#only("1")[
#voiceover("The solution set is infinite if the rank of A equals the rank of [A|b], but this rank is less than the number of variables n.")
]
#only("2")[
#voiceover("For instance, the system x plus y equals 2 and 2x plus 2y equals 4 has infinitely many solutions.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[No Solution]
#v(40pt)
#only("1-")[- $"rank"(A) < "rank"([A|b])$]
#v(20pt)
#only("2-")[- Example: $x + y = 2$, $x + y = 3$ ❌]
#only("1")[
#voiceover("The system has no solution if the rank of A is less than the rank of [A|b].")
]
#only("2")[
#voiceover("For example, the system x plus y equals 2 and x plus y equals 3 has no solution.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Solution set: unique, infinite, or nonexistent 📊]
#v(20pt)
#only("2-")[- Depends on ranks of coefficient matrix $A$ and augmented matrix $[A|b]$ 🔢]
#v(20pt)
#only("3-")[- Key: compare ranks and number of variables 🗝]
#only("1")[
#voiceover("In summary, the solution set of a linear system can be unique, infinite, or nonexistent.")
]
#only("2")[
#voiceover("This depends on the ranks of the coefficient matrix A and the augmented matrix [A|b].")
]
#only("3")[
#voiceover("The key is to compare these ranks and the number of variables in the system.")
]
]