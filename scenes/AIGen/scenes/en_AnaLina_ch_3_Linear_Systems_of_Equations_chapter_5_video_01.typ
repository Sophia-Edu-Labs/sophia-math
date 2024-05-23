#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Solution Set of Linear Systems]
#v(40pt)
#only("1-")[- Depends on the rank of matrices 🔢]
#v(20pt)
#only("2-")[- Coefficient matrix $A$ and augmented matrix $[A|b]$]
#only("1")[
#voiceover("The solution set of a linear system can be unique, infinite, or nonexistent. This depends on the rank of two matrices: the coefficient matrix A and the augmented matrix [A|b].")
]
#only("2")[
#voiceover("The coefficient matrix A contains the coefficients of the variables in the linear system, while the augmented matrix [A|b] also includes the constant terms.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Unique Solution]
#v(40pt)
#only("1-")[- $"rank"(A) = "rank"([A|b]) = n$]
#v(20pt)
#only("2-")[- $n$ is the number of variables]
#only("1")[
#voiceover("The system has a unique solution if the rank of A equals the rank of [A|b], and this rank is equal to n, where n is the number of variables.")
]
#only("2")[
#voiceover("In this case, the system is consistent and has exactly one solution.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Infinite Solutions]
#v(40pt)
#only("1-")[- $"rank"(A) = "rank"([A|b]) < n$]
#v(20pt)
#only("2-")[- System is consistent]
#only("1")[
#voiceover("If the rank of A equals the rank of [A|b], but this rank is less than n, the system has infinitely many solutions.")
]
#only("2")[
#voiceover("The system is consistent, but there are not enough equations to uniquely determine all variables.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[No Solution]
#v(40pt)
#only("1-")[- $"rank"(A) < "rank"([A|b])$]
#v(20pt)
#only("2-")[- System is inconsistent ❌]
#only("1")[
#voiceover("If the rank of A is less than the rank of [A|b], the system has no solution.")
]
#only("2")[
#voiceover("In this case, the system is inconsistent. The equations contradict each other, so there is no solution that satisfies all equations simultaneously.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Unique solution: $"rank"(A) = "rank"([A|b]) = n$ ✅]
#v(20pt)
#only("2-")[- Infinite solutions: $"rank"(A) = "rank"([A|b]) < n$ ∞]
#v(20pt)
#only("3-")[- No solution: $"rank"(A) < "rank"([A|b])$ ❌]
#only("1")[
#voiceover("To summarize, a linear system has a unique solution if the rank of A equals the rank of [A|b] and this rank is equal to the number of variables.")
]
#only("2")[
#voiceover("It has infinitely many solutions if the rank of A equals the rank of [A|b] but is less than the number of variables.")
]
#only("3")[
#voiceover("And it has no solution if the rank of A is less than the rank of [A|b].")
]
]