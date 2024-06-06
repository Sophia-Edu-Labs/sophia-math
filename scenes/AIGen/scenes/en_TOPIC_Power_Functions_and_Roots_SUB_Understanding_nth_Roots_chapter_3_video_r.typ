#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap how to simplify n-th roots.")
]
#text(size: 30pt, weight: "bold")[Simplifying n-th Roots 🌱]
// The title "Simplifying n-th Roots" with a seedling emoji is shown on this slide
#v(40pt)
#only("2")[
#voiceover("To simplify an n-th root, we factor the number inside the root.")
]
#only("2-")[
- Factor the number inside the root
]
// The bullet point "Factor the number inside the root" is shown from slide 2 onward
#v(40pt)
#only("3")[
#voiceover("For example, let's simplify the cube root of 27. We can factor 27 as 3 times 3 times 3.")
]
#only("3-")[
$ root(3, 27) = root(3, 3 dot 3 dot 3)$
]
// The factorization of the cube root of 27 is shown from slide 3 onward
#v(40pt)
#only("4")[
#voiceover("Using the property that the n-th root of a product is the product of the n-th roots, we can simplify this further.")
]
#only("4-")[
$ = root(3, 3) dot root(3, 3) dot root(3, 3)$
]
// The simplification using the product property is shown from slide 4 onward
#v(40pt)
#only("5")[
#voiceover("The cube root of 3 is simply 3, so we get 3 times 3 times 3, which equals 3.")
]
#only("5-")[
$ = 3$
]
// The final simplification to 3 is shown from slide 5 onward
]

#slide()[
#only("1")[
#voiceover("Here's another example. Let's simplify the fourth root of 81.")
]
#text(size: 30pt, weight: "bold")[Example: $root(4, 81)$ 🧮]
// The title "Example: fourth root of 81" with a calculator emoji is shown on this slide
#v(40pt)
#only("2")[
#voiceover("81 can be factored as 3 to the power of 4.")
]
#only("2-")[
$ root(4, 81) = root(4, 3^4)$
]
// The factorization of 81 as 3^4 is shown from slide 2 onward
#v(40pt)
#only("3")[
#voiceover("Using the property that the n-th root of a power is the base raised to the power divided by n, we can simplify this.")
]
#only("3-")[
$ = 3^(4/4) = 3^1$
]
// The simplification using the power property is shown from slide 3 onward
#v(40pt)
#only("4")[
#voiceover("3 to the power of 1 is simply 3, so the fourth root of 81 simplifies to 3.")
]
#only("4-")[
$ = 3$
]
// The final simplification to 3 is shown from slide 4 onward
]

#slide()[
#only("1")[
#voiceover("In summary, to simplify n-th roots:")
]
#text(size: 30pt, weight: "bold")[Recap 🔍]
#v(40pt)
#only("2")[
#voiceover("Factor the number inside the root,")
]
#only("2-")[
1. Factor the number inside the root
]
#v(20pt)
#only("3")[
#voiceover("Use the property that the n-th root of a product is the product of the n-th roots,")
]
#only("3-")[
2. $root(n, a dot b) = root(n, a) dot root(n, b)$
]
#v(20pt)
#only("4")[
#voiceover("And use the property that the n-th root of a power is the base raised to the power divided by n.")
]
#only("4-")[
3. $root(n, a^m) = a^(m/n)$
]
#v(40pt)
#only("5")[
#voiceover("With these steps, you can simplify n-th roots effectively.")
]
]