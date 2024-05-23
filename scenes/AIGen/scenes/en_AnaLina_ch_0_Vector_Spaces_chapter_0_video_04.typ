#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap what we've learned about vector spaces.")
]
#text(size: 30pt, weight: "bold")[Vector Spaces Recap]
// The title "Vector Spaces Recap" is shown on this slide
#v(40pt)
#only("2")[
#voiceover("A vector space is a collection of vectors that can be added together and multiplied by scalars.")
]
#only("2-")[
- Collection of vectors
- Addition and scalar multiplication
]
// The bullet points are shown from slide 2 onward
]

#slide()[
#text(size: 30pt, weight: "bold")[Properties]
// The title "Properties" is shown on this slide
#v(40pt)
#only("1")[
#voiceover("These operations satisfy certain properties:")
]
#only("1-")[
- Closure under addition and scalar multiplication 🔒
- Existence of a zero vector 0️⃣
- Associativity, commutativity, distributivity ➕✖️
- Existence of additive inverses ➖
]
// The bullet points are shown from slide 1 onward, using emojis for visual appeal
]

#slide()[
#text(size: 30pt, weight: "bold")[Examples]
// The title "Examples" is shown on this slide
#v(40pt)
#only("1")[
#voiceover("Common examples of vector spaces include:")
]
#only("1-")[
- $RR^n$ (real coordinate space) 📐
- Set of all polynomials 📈
- Set of all continuous functions 📏
]
// The bullet points are shown from slide 1 onward, using emojis for visual appeal
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
// The title "Summary" is shown on this slide
#v(40pt)
#only("1")[
#voiceover("In summary, a vector space is a fundamental concept in linear algebra.")
]
#only("2")[
#voiceover("It's a collection of vectors that can be added and scaled, satisfying key properties.")
]
#only("3")[
#voiceover("Understanding vector spaces is crucial for working with linear equations, matrices, and transformations.")
]
#only("1-")[
- Collection of vectors 📚
]
#only("2-")[
- Addition and scalar multiplication ➕✖️
- Key properties satisfied 🔑
]
#only("3-")[
- Fundamental in linear algebra 🎓
- Crucial for equations, matrices, transformations 📜
]
// The bullet points are shown progressively from slide 1 to 3, using emojis for visual appeal
]