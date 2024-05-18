#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap the concept of dimension in linear algebra.")
]
#text(size: 30pt, weight: "bold")[Dimension]
// The title "Dimension" is shown on this slide
#v(40pt)
#only("2")[
#voiceover("The dimension of a vector space is the number of vectors in a basis for that space.")
]
#only("2-")[
- Dimension = number of vectors in a basis 🧮
]
// The bullet point is shown from slide 2 onward
]

#slide()[
#text(size: 30pt, weight: "bold")[Basis]
// The title "Basis" is shown on this slide
#v(40pt)
#only("1")[
#voiceover("Recall that a basis is a set of linearly independent vectors that span the entire space.")
]
#only("1-")[
- Basis: linearly independent vectors that span the space 🎯
]
// The bullet point is shown from slide 1 onward
#v(20pt)
#only("2")[
#voiceover("For example, in R^2, the standard basis is the set of vectors (1, 0) and (0, 1).")
]
#only("2-")[
- Example: Standard basis for $RR^2$: $mat(1;0)$, $mat(0;1)$
]
// The example is shown from slide 2 onward
]

#slide()[
#text(size: 30pt, weight: "bold")[Dimension and Basis]
// The title "Dimension and Basis" is shown on this slide
#v(40pt)
#only("1")[
#voiceover("The number of vectors in this basis is 2, which is the dimension of R^2.")
]
#only("1-")[
- $"dim"(RR^2) = 2$ because standard basis has 2 vectors
]
// The dimension of R^2 is shown from slide 1 onward
#v(20pt)
#only("2")[
#voiceover("Similarly, the dimension of R^3 is 3, because its standard basis, (1, 0, 0), (0, 1, 0), and (0, 0, 1), has 3 vectors.")
]
#only("2-")[
- $"dim"(RR^3) = 3$ because standard basis has 3 vectors
]
// The dimension of R^3 is shown from slide 2 onward
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
// The title "Summary" is shown on this slide
#v(40pt)
#only("1")[
#voiceover("In summary, the dimension of a vector space is a fundamental property that tells us the size of the space.")
]
#only("1-")[
- Dimension: fundamental property of a vector space 📏
]
// The first summary point is shown from slide 1 onward
#v(20pt)
#only("2")[
#voiceover("It is determined by the number of vectors in any basis for the space.")
]
#only("2-")[
- Determined by the number of vectors in a basis 🧮
]
// The second summary point is shown from slide 2 onward
#v(20pt)
#only("3")[
#voiceover("Understanding dimension is crucial for many applications in linear algebra and beyond.")
]
#only("3-")[
- Crucial concept in linear algebra and its applications 🌟
]
// The third summary point is shown from slide 3 onward
]