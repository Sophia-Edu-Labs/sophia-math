#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Changing Basis]
#v(40pt)
Changing the basis involves finding a new set of ____ vectors.
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) dependent]#only("2-")[#text(fill:red)[a) dependent]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) independent]#only("3-")[#text(fill:red)[b) independent]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) basis]#only("4-")[#text(fill:green)[c) basis]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) orthogonal]#only("5-")[#text(fill:red)[d) orthogonal]]

#only("1")[
#voiceover("Not quite. Let's take a look at the correct solution.")
]
#only("2")[
#voiceover("a) dependent is incorrect. When changing basis, we're looking for a new set of basis vectors, which are linearly independent by definition.")
]
#only("3")[
#voiceover("b) independent is close, but not quite right. While basis vectors are indeed linearly independent, 'independent' alone is not the best term to describe the new set of vectors we're looking for when changing basis.")
]
#only("4")[
#voiceover("c) basis is correct! When changing basis, we're specifically looking for a new set of basis vectors that span the same space as the original basis.")
]
#only("5")[
#voiceover("d) orthogonal is incorrect. While it's often convenient to work with orthogonal basis vectors, it's not a requirement when changing basis. The new basis vectors don't need to be orthogonal.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[1. Recall the definition of a basis 📚]
#v(20pt)
#only("2-")[   - A set of linearly independent vectors that span a space]
#v(40pt)
#only("3-")[2. Understand what changing basis means 🔄]
#v(20pt)
#only("4-")[   - Finding a new set of basis vectors for the same space]
#v(40pt)
#only("1")[
#voiceover("Let's break this down step by step.")
]
#only("2")[
#voiceover("First, recall that a basis is a set of linearly independent vectors that span a space.")
]
#only("3")[
#voiceover("Next, understand that changing basis means finding a new set of basis vectors for the same space.")
]
#only("4")[
#voiceover("In other words, we're looking for a different set of vectors that still span the same space as the original basis.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[1. Identify the key characteristic of the new vectors 🔑]
#v(20pt)
#only("2-")[   - They must form a basis (linearly independent and span the space)]
#v(40pt)
#only("3-")[2. Therefore, when changing basis, we're looking for a new set of #text(weight: "bold")[basis] vectors.]

#only("1")[
#voiceover("The key characteristic of these new vectors is that they must also form a basis.")
]
#only("2")[
#voiceover("This means they must be linearly independent and span the space, just like the original basis vectors.")
]
#only("3")[
#voiceover("Therefore, when changing basis, we're specifically looking for a new set of basis vectors.")
]
]