#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[n-th Roots of Negative Numbers]
#v(40pt)
#only("1-")[- n-th root: $root(n, a)$ where $a^(1/n) = root(n, a)$]
#v(20pt)
#only("2-")[- Example: $root(2, 9) = 3$ since $3^2 = 9$]
#only("1")[
#voiceover("An n-th root of a number a is a value that, when raised to the power of n, gives a. It's denoted as the n-th root of a.")
]
#only("2")[
#voiceover("For example, the square root, or 2nd root, of 9 is 3, because 3 squared equals 9.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Even n-th Roots]
#v(40pt)
#only("1-")[- When n is even, like 2, 4, 6, ...]
#v(20pt)
#only("2-")[- Example: $root(2, -4) = ?$]
#v(20pt)
#only("3-")[- No real number squared equals a negative 🤔]
#only("1")[
#voiceover("Now, let's consider what happens when we try to find an even n-th root, like a square root, 4th root, 6th root, and so on, of a negative number.")
]
#only("2")[
#voiceover("For instance, what is the square root of negative 4?")
]
#only("3")[
#voiceover("We know that no real number, when squared, equals a negative number.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Complex Numbers]
#v(40pt)
#only("1-")[- Numbers of the form $a + bi$, where $i = sqrt(-1)$]
#v(20pt)
#only("2-")[- Example: $2 + 3i$, $-4 - 5i$]
#v(20pt)
#only("3-")[- Even n-th roots of negatives are complex!]
#only("1")[
#voiceover("This is where complex numbers come in. Complex numbers are numbers of the form a plus b i, where a and b are real numbers and i is the imaginary unit, defined as the square root of negative 1.")
]
#only("2")[
#voiceover("Examples of complex numbers include 2 plus 3i and negative 4 minus 5i.")
]
#only("3")[
#voiceover("It turns out that the even n-th roots of negative numbers are always complex numbers!")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[- $root(2, -4) = 2i$ since $(2i)^2 = -4$]
#v(20pt)
#only("2-")[- $root(4, -16) = 1 + i$ since $(1 + i)^4 = -16$]
#only("1")[
#voiceover("For example, the square root of negative 4 is 2i, because 2i squared equals negative 4.")
]
#only("2")[
#voiceover("Similarly, the 4th root of negative 16 is 1 plus i, because 1 plus i to the 4th power equals negative 16.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- n-th roots: $root(n, a)$ where $a^(1/n) = root(n, a)$]
#v(20pt)
#only("2-")[- Even n-th roots of negatives are complex 🧮]
#v(20pt)
#only("3-")[- Complex numbers: $a + bi$, where $i = sqrt(-1)$]
#only("1")[
#voiceover("In summary, n-th roots are values that, when raised to the power of n, give the original number.")
]
#only("2")[
#voiceover("When we try to find even n-th roots of negative numbers, we always end up with complex numbers.")
]
#only("3")[
#voiceover("Complex numbers are numbers of the form a plus b i, where i is the imaginary unit, defined as the square root of negative 1.")
]
]