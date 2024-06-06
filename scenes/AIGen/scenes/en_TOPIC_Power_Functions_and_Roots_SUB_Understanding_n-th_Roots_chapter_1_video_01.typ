#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[n-th Root Notation]
#v(40pt)
#only("1-")[- Denoted as $root(n, a)$]
#v(20pt)
#only("2-")[- $n$ is the index 🔢]
#v(20pt)
#only("3-")[- $a$ is the radicand 📏]
#only("1")[
#voiceover("The notation for n-th roots is written as 'root' followed by the index n and the radicand a in parentheses.")
]
#only("2")[
#voiceover("The letter n represents the index of the root, which tells us what power the result needs to be raised to in order to get the radicand.")
]
#only("3")[
#voiceover("The letter a represents the radicand, which is the number or expression under the root symbol.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Examples]
#v(40pt)
#only("1-")[- Square root: $root(2, 9) = 3$ ⏹]
#v(20pt)
#only("2-")[- Cube root: $root(3, 8) = 2$ 🧊]
#v(20pt)
#only("3-")[- Fourth root: $root(4, 16) = 2$ 🏰]
#only("1")[
#voiceover("For example, the square root of 9, written as 'root' 2 comma 9, equals 3 because 3 squared is 9.")
]
#only("2")[
#voiceover("The cube root of 8, written as 'root' 3 comma 8, equals 2 because 2 cubed is 8.")
]
#only("3")[
#voiceover("And the fourth root of 16, written as 'root' 4 comma 16, equals 2 because 2 to the fourth power is 16.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[General Rule]
#v(40pt)
#only("1-")[$ root(n, a) = b ⟺ b^n = a $]
#v(20pt)
#only("2-")[- $b$ is the n-th root of $a$ 🌱]
#v(20pt)
#only("3-")[- $b$ raised to the $n$-th power equals $a$ 📈]
#only("1")[
#voiceover("In general, 'root' n comma a equals b if and only if b raised to the n-th power equals a.")
]
#only("2")[
#voiceover("This means that b is the n-th root of a...")
]
#only("3")[
#voiceover("...and conversely, if b raised to the n-th power equals a, then b is the n-th root of a.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- n-th root notation: $root(n, a)$ 📝]
#v(20pt)
#only("2-")[- $n$ is the index, $a$ is the radicand 🔍]
#v(20pt)
#only("3-")[- $root(n, a) = b ⟺ b^n = a$ 🔄]
#only("1")[
#voiceover("To summarize, the n-th root notation is written as 'root' followed by the index n and the radicand a in parentheses.")
]
#only("2")[
#voiceover("The letter n represents the index, and a represents the radicand.")
]
#only("3")[
#voiceover("The n-th root of a equals b if and only if b raised to the n-th power equals a.")
]
]