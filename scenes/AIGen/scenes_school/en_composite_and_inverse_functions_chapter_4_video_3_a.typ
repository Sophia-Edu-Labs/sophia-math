#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great job! You're absolutely right. Let's go through the solution step by step.")
]

#text(size: 30pt, weight: "bold")[Given Information]

#v(40pt)

#only("2-")[- Tables for functions $f(x)$ and $g(x)$]
// The given information is shown from slide 2 onward

#only("2")[
#voiceover("We are given tables for two functions, f of x and g of x.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Approach]

#v(40pt)

#only("1-")[- Check if $(a, b)$ in $f(x)$ ⇒ $(b, a)$ in $g(x)$ 🔍]

#only("1")[
#voiceover("To determine if g of x is the inverse of f of x, we need to check if for every pair (a, b) in the table of f of x, there is a corresponding pair (b, a) in the table of g of x.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution]

#v(40pt)

#only("1-")[- Let's check each pair in $f(x)$:]
// The solution starts from slide 1 onward

#v(20pt)

#only("2-")[- $(1, 4)$ in $f(x)$ ⇒ $(4, 1)$ in $g(x)$ ✅]
// The first pair is checked from slide 2 onward

#v(10pt)

#only("3-")[- $(2, 5)$ in $f(x)$ ⇒ $(5, 2)$ in $g(x)$ ✅]
// The second pair is checked from slide 3 onward

#v(10pt)

#only("4-")[- $(3, 6)$ in $f(x)$ ⇒ $(6, 3)$ in $g(x)$ ✅]
// The third pair is checked from slide 4 onward

#only("1")[#voiceover("Let's check each pair in the table of f of x.")]

#only("2")[#voiceover("The pair (1, 4) in f of x corresponds to the pair (4, 1) in g of x.")]

#only("3")[#voiceover("The pair (2, 5) in f of x corresponds to the pair (5, 2) in g of x.")]

#only("4")[#voiceover("The pair (3, 6) in f of x corresponds to the pair (6, 3) in g of x.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]

#v(40pt)

#only("1-")[- All pairs in $f(x)$ have their inverse in $g(x)$ 🎉]

#v(20pt)

#only("2-")[- Therefore, $g(x)$ is the inverse of $f(x)$ 🙌]

#only("1")[#voiceover("We see that for every pair in the table of f of x, there is a corresponding inverse pair in the table of g of x.")]

#only("2")[#voiceover("Therefore, we can conclude that g of x is indeed the inverse function of f of x. Great work on solving this problem!")]
]