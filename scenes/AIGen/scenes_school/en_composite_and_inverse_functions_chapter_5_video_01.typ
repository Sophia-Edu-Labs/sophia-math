#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Inverse Functions]
#v(40pt)
#only("1-")[- Functions that "undo" each other 🔄]
#v(20pt)
#only("2-")[- Example: $f(x) = 2x + 1$ and $g(x) = (x - 1) / 2$]
#only("1")[
#voiceover("Inverse functions are functions that undo each other. If you apply one function and then its inverse, you get back to where you started.")
]
#only("2")[
#voiceover("For example, consider the function $f(x) = 2x + 1$ and its inverse $g(x) = (x - 1) / 2$.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Composition of Functions]
#v(40pt)
#only("1-")[- Applying one function to the result of another 🎨]
#v(20pt)
#only("2-")[- Denoted as $(f ∘ g)(x)$ or $f(g(x))$]
#v(20pt)
#only("3-")[- Example: $(f ∘ g)(x) = f(g(x)) = 2((x - 1) / 2) + 1 = x$]
#only("1")[
#voiceover("Composition of functions means applying one function to the result of another.")
]
#only("2")[
#voiceover("It's denoted as $f$ composed with $g$, or $f$ of $g$ of $x$.")
]
#only("3")[
#voiceover("In our example, $f$ composed with $g$ gives us $f$ of $g$ of $x$, which simplifies to just $x$.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Identity Function]
#v(40pt)
#only("1-")[- Function that leaves its input unchanged 🆔]
#v(20pt)
#only("2-")[- Denoted as $I(x) = x$]
#v(20pt)
#only("3-")[- Property: $(f ∘ f^(-1))(x) = (f^(-1) ∘ f)(x) = I(x) = x$]
#only("1")[
#voiceover("The identity function is a function that leaves its input unchanged.")
]
#only("2")[
#voiceover("It's denoted as $I$ of $x$ equals $x$.")
]
#only("3")[
#voiceover("A key property of inverse functions is that when you compose a function with its inverse, in either order, you get the identity function.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Verifying Inverse Functions]
#v(40pt)
#only("1-")[- Compose the functions in both orders]
#v(20pt)
#only("2-")[- Check if the result is the identity function]
#v(20pt)
#only("3-")[- Example: $(g ∘ f)(x) = g(f(x)) = ((2x + 1) - 1) / 2 = x$]
#only("1")[
#voiceover("To verify if two functions are inverses of each other, we compose them in both orders.")
]
#only("2")[
#voiceover("If the result of both compositions is the identity function, then the functions are indeed inverses.")
]
#only("3")[
#voiceover("In our example, $g$ composed with $f$ also gives us the identity function, confirming that $f$ and $g$ are inverses.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Inverse functions undo each other 🔄]
#v(20pt)
#only("2-")[- Composition applies one function to the result of another 🎨]
#v(20pt)
#only("3-")[- Composing a function with its inverse gives the identity function 🆔]
#only("1")[
#voiceover("In summary, inverse functions undo each other.")
]
#only("2")[
#voiceover("Composition of functions means applying one function to the result of another.")
]
#only("3")[
#voiceover("And if you compose a function with its inverse, in either order, you get the identity function. This is a key property that helps us verify if two functions are indeed inverses of each other.")
]
]