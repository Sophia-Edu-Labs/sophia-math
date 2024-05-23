#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Invertibility and Rank]
#v(40pt)
#only("1-")[A matrix $A$ is invertible ⟺ $"rank"(A) = "number of rows"(A)$ 🔄]
#v(20pt)
#only("2-")[Example: Consider $A = mat(1, 2; 3, 4)$]
#v(20pt)
#only("3-")[
$"rank"(A) = 2$ ✅
$"number of rows"(A) = 2$ ✅
]
#v(20pt)
#only("4-")[∴ $A$ is invertible]
#only("1")[
#voiceover("A matrix A is invertible if and only if its rank is equal to its number of rows or columns.")
]
#only("2")[
#voiceover("Let's consider an example. Take the matrix A equals 1, 2; 3, 4.")
]
#only("3")[
#voiceover("The rank of A is 2, as both rows are linearly independent. The number of rows of A is also 2.")
]
#only("4")[
#voiceover("Therefore, A is invertible.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Why this Criterion?]
#v(40pt)
#only("1-")[Rank = Dimension of Column Space 📏]
#v(20pt)
#only("2-")[For invertibility, we need:]
#v(20pt)
#only("3-")[Column Space = Entire $ℝ^n$ 🌍]
#v(20pt)
#only("4-")[∴ $"rank"(A) = n$ for an $n × n$ matrix $A$]
#only("1")[
#voiceover("Why does this criterion for invertibility make sense? Well, the rank of a matrix is the dimension of its column space.")
]
#only("2")[
#voiceover("For a matrix to be invertible, we need...")
]
#only("3")[
#voiceover("...its column space to span the entire R n space.")
]
#only("4")[
#voiceover("This means that for an n by n matrix A, its rank must be n for it to be invertible.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Checking Invertibility]
#v(40pt)
#only("1-")[1. Calculate rank using Gaussian Elimination 🧮]
#v(20pt)
#only("2-")[2. Check if rank = number of rows 📋]
#v(20pt)
#only("3-")[3. If yes, matrix is invertible! 🎉]
#only("1")[
#voiceover("So, how do we check if a matrix is invertible?")
]
#only("2")[
#voiceover("First, calculate the rank using Gaussian Elimination. Then, check if the rank equals the number of rows.")
]
#only("3")[
#voiceover("If it does, the matrix is invertible!")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Invertibility ⟺ Rank = Number of Rows 🔄]
#v(20pt)
#only("2-")[- Rank = Dimension of Column Space 📏]
#v(20pt)
#only("3-")[- For invertibility, Column Space must span $ℝ^n$ 🌍]
#only("1")[
#voiceover("In summary, a matrix is invertible if and only if its rank equals its number of rows.")
]
#only("2")[
#voiceover("Remember, the rank is the dimension of the column space...")
]
#only("3")[
#voiceover("...and for invertibility, the column space must span the entire R n space.")
]
]