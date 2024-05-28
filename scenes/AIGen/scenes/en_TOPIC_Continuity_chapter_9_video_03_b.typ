#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Continuity]
#v(40pt)
#only("1-")[- Given: $f(x) = x^3 - 3x + 2$]
#only("2-")[- Check continuity at $x = 1$]
#only("1")[
#voiceover("That's okay! Let's go through the correct solution step by step.")
]
#only("2")[
#voiceover("To check continuity at x equals 1, we need to verify two conditions: the function must be defined at x equals 1, and the limit of the function as x approaches 1 must equal the function value at x equals 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Function Value]
#v(40pt)
#only("1-")[$ f(1) = 1^3 - 3 · 1 + 2 $]
#v(10pt)
#only("2-")[$ f(1) = 1 - 3 + 2 $]
#v(10pt)
#only("3-")[$ f(1) = 0 $]
#only("1")[
#voiceover("First, let's calculate the function value at x equals 1. We substitute 1 for x in the function.")
]
#only("2")[
#voiceover("Simplifying, we get 1 minus 3 plus 2.")
]
#only("3")[
#voiceover("This simplifies to 0. So, the function is defined at x equals 1, and its value is 0.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Limit]
#v(40pt)
#only("1-")[$ lim_(x->1) f(x) = lim_(x->1) (x^3 - 3x + 2) $]
#v(10pt)
#only("2-")[$ lim_(x->1) f(x) = 1^3 - 3 · 1 + 2 $]
#v(10pt)
#only("3-")[$ lim_(x->1) f(x) = 1 - 3 + 2 $]
#v(10pt)
#only("4-")[$ lim_(x->1) f(x) = 0 $]
#only("1")[
#voiceover("Next, let's calculate the limit of the function as x approaches 1. The limit of a polynomial function at a point is simply the function value at that point.")
]
#only("2")[
#voiceover("So, we can directly substitute 1 for x in the function.")
]
#only("3")[
#voiceover("Simplifying, we get 1 minus 3 plus 2.")
]
#only("4")[
#voiceover("This simplifies to 0. So, the limit of the function as x approaches 1 is also 0.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Continuity Check]
#v(40pt)
#only("1-")[- Function value at $x = 1$: $f(1) = 0$ ✅]
#v(20pt)
#only("2-")[- Limit as $x -> 1$: $lim_(x->1) f(x) = 0$ ✅]
#v(20pt)
#only("3-")[- $f(1) = lim_(x->1) f(x)$ ✅]
#v(20pt)
#only("4-")[Therefore, $f(x)$ is continuous at $x = 1$ 🎉]
#only("1")[
#voiceover("We found that the function value at x equals 1 is 0.")
]
#only("2")[
#voiceover("And the limit of the function as x approaches 1 is also 0.")
]
#only("3")[
#voiceover("Since the function value and the limit are equal, the two conditions for continuity are satisfied.")
]
#only("4")[
#voiceover("Therefore, we can conclude that the function f of x equals x cubed minus 3x plus 2 is indeed continuous at x equals 1. Great work!")
]
]