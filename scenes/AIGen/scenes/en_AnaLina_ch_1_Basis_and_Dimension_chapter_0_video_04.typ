#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap the concept of linear independence. 🎓")
]
#text(size: 30pt, weight: "bold")[Linear Independence 🎭]
// The title "Linear Independence" is shown on this slide
#v(40pt)
#only("2")[
#voiceover("A set of vectors is linearly independent if no vector in the set can be written as a linear combination of the others.")
]
#only("2-")[
- No vector is a linear combination of others 🚫
]
// The bullet point about no vector being a linear combination is shown from slide 2 onward
]

#slide()[
#only("1")[
#voiceover("For example, let's consider the vectors mat(1; 0) and mat(0; 1). These vectors are linearly independent.")
]
#text(size: 30pt, weight: "bold")[Example 1 🌟]
#v(40pt)
#only("1-")[
- Vectors: $mat(1; 0)$, $mat(0; 1)$
]
// The example vectors are shown from slide 1 onward
#v(20pt)
#only("2")[
#voiceover("Neither mat(1; 0) nor mat(0; 1) can be written as a scalar multiple of the other. They are the standard basis vectors for R^2.")
]
#only("2-")[
- Linearly independent ✅
]
// The conclusion that the vectors are linearly independent is shown from slide 2 onward
]

#slide()[
#only("1")[
#voiceover("On the other hand, the vectors mat(1; 1) and mat(2; 2) are linearly dependent.")
]
#text(size: 30pt, weight: "bold")[Example 2 🌠]
#v(40pt)
#only("1-")[
- Vectors: $mat(1; 1)$, $mat(2; 2)$
]
#v(20pt)
#only("2")[
#voiceover("We can write mat(2; 2) as 2 times mat(1; 1). So one vector is a scalar multiple of the other.")
]
#only("2-")[
- $mat(2; 2) = 2 mat(1; 1)$
]
#v(20pt)
#only("3")[
#voiceover("Therefore, these vectors are linearly dependent.")
]
#only("3-")[
- Linearly dependent ❌
]
]

#slide()[
#only("1")[
#voiceover("To test for linear independence, we can set up a matrix with the vectors as columns and row reduce.")
]
#text(size: 30pt, weight: "bold")[Testing Linear Independence 🧪]
#v(40pt)
#only("1-")[
- Set up matrix with vectors as columns 📜
]
#v(20pt)
#only("2")[
#voiceover("If the reduced matrix has a pivot in each column, the vectors are linearly independent.")
]
#only("2-")[
- Row reduce 🔄
]
#v(20pt)
#only("3")[
#voiceover("Otherwise, if there is a free variable, the vectors are linearly dependent.")
]
#only("3-")[
- Check for pivots 🔍
]
]

#slide()[
#only("1")[
#voiceover("In summary, linear independence is a crucial property of vectors.")
]
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[
- Linear independence: No vector is a linear combination of others 🎨
]
#v(20pt)
#only("2")[
#voiceover("It's a necessary condition for a set of vectors to form a basis for a vector space.")
]
#only("2-")[
- Important for basis 🏗️
]
#v(20pt)
#only("3")[
#voiceover("We can test linear independence by row reducing a matrix formed by the vectors.")
]
#only("3-")[
- Test by row reduction 🧮
]
#only("4")[
#voiceover("Keep practicing to solidify your understanding of this fundamental concept! 💪")
]
]