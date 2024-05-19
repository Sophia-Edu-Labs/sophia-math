#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Solution Set Structure]
#v(40pt)
#only("-1")[If the rank of the coefficient matrix is equal to the rank of the augmented matrix and less than the number of variables, the solution set is:]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) Unique]#only("2-")[#text(fill:red)[a) Unique]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Infinite]#only("3-")[#text(fill:green)[b) Infinite]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Nonexistent]#only("4-")[#text(fill:red)[c) Nonexistent]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) None of the above]#only("5-")[#text(fill:red)[d) None of the above]]
#only("1")[#voiceover("Great, that's the correct answer! Let's see why.")]
#only("2")[#voiceover("Option a) Unique is incorrect. If the rank of the coefficient matrix equals the rank of the augmented matrix but is less than the number of variables, the system has infinitely many solutions, not a unique solution.")]
#only("3")[#voiceover("Option b) Infinite is indeed the correct answer. When the rank of the coefficient matrix equals the rank of the augmented matrix but is less than the number of variables, the system has infinitely many solutions.")]
#only("4")[#voiceover("Option c) Nonexistent is incorrect. The system would have no solution if the rank of the coefficient matrix was less than the rank of the augmented matrix, which is not the case here.")]
#only("5")[#voiceover("And option d) None of the above is also incorrect, as one of the given options, namely b), is correct.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Explanation]
#v(40pt)
#only("1-")[- Let's consider a system with $m$ equations and $n$ variables.]
#v(20pt)
#only("2-")[- The coefficient matrix $A$ has dimensions $m × n$.]
#v(20pt)
#only("3-")[- The augmented matrix $(A|b)$ has dimensions $m × (n+1)$.]
#v(20pt)
#only("4-")[- If $"rank"(A) = "rank"(A|b) < n$, then:]
#v(20pt)
#only("5-")[  - The system is consistent (has at least one solution) 👍]
#v(20pt)
#only("6-")[  - But there are fewer independent equations than variables 🤏]
#v(20pt)
#only("7-")[  - So some variables can be freely chosen (free variables) 🆓]
#v(20pt)
#only("8-")[  - Leading to infinitely many solutions ∞]
#only("1")[#voiceover("To understand why, let's consider a linear system with m equations and n variables.")]
#only("2")[#voiceover("The coefficient matrix A of this system has dimensions m by n.")]
#only("3")[#voiceover("The augmented matrix, denoted as A augmented by the vector b, has dimensions m by n plus 1.")]
#only("4")[#voiceover("Now, if the rank of A equals the rank of the augmented matrix, and both are less than n, then:")]
#only("5")[#voiceover("The system is consistent, meaning it has at least one solution.")]
#only("6")[#voiceover("However, there are fewer independent equations than variables.")]
#only("7")[#voiceover("This means that some variables can be freely chosen. We call these free variables.")]
#only("8")[#voiceover("And because of these free variables, the system ends up having infinitely many solutions.")]
]