#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Composition of Functions]
#v(40pt)

#only("1-")[
Given:
- $f(x) = x^2$
- $g(x) = 3x + 1$
]
#only("1")[
#voiceover("That's not quite right. Let's go through the correct solution together to find the composition f of g of x, given f of x equals x squared and g of x equals 3x plus 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Approach]
#v(40pt)

#only("1-")[- Substitute $g(x)$ into $f(x)$]
#only("2-")[- Simplify the resulting expression]

#only("1")[
#voiceover("To find the composition, we'll substitute g of x into f of x.")
]
#only("2")[
#voiceover("Then, we'll simplify the resulting expression.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution]
#v(40pt)

#only("1-")[$ f(g(x)) = (g(x))^2 $]
#only("1")[
#voiceover("We start by writing f of g of x equals g of x squared.")
]

#v(10pt)

#only("2-")[#align(center)[#text(fill:aqua)[⇓ Substitute $g(x) = 3x + 1$]]]
#only("2")[
#voiceover("Now, we substitute g of x equals 3x plus 1 into the expression.")
]

#v(10pt)

#only("3-")[$ f(g(x)) = (3x + 1)^2 $]
#only("3")[
#voiceover("This gives us f of g of x equals open parenthesis 3x plus 1 close parenthesis squared.")
]

#v(10pt)

#only("4-")[#align(center)[#text(fill:aqua)[⇓ Expand the square]]]
#only("4")[
#voiceover("Next, we expand the square.")
]

#v(10pt)

#only("5-")[$ f(g(x)) = 9x^2 + 6x + 1 $]
#only("5")[
#voiceover("Expanding the square, we get f of g of x equals 9 x squared plus 6x plus 1.")
]

#v(20pt)

#only("6-")[Therefore, $f(g(x)) = 9x^2 + 6x + 1$ 🎉]
#only("6")[
#voiceover("Therefore, the composition f of g of x equals 9 x squared plus 6x plus 1. Great work!")
]
]