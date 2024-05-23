#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap the dimension formula for linear mappings.")
]
#text(size: 30pt, weight: "bold")[Dimension Formula 📏]
// The title "Dimension Formula" with a ruler emoji is shown on this slide
#v(40pt)

#only("2")[
#voiceover("For a linear mapping T from vector space V to vector space W, the dimension formula states that the dimension of V equals the dimension of the kernel of T plus the dimension of the image of T.")
]
#only("2-")[$ "dim"(V) = "dim"("ker"(T)) + "dim"("im"(T)) $]
// The dimension formula is shown from slide 2 onward

#v(40pt)

#only("3")[
#voiceover("Here, the kernel of T, denoted as ker T, is the set of all vectors v in V such that T of v equals the zero vector.")
]
#only("3-")[- $"ker"(T) = \{v ∈ V | T(v) = 0\}$ 🎯]
// The definition of the kernel is shown from slide 3 onward, with a target emoji

#v(20pt)

#only("4")[
#voiceover("And the image of T, denoted as im T, is the set of all vectors w in W such that w equals T of v for some vector v in V.")
]
#only("4-")[- $"im"(T) = \{w ∈ W | w = T(v) "for some" v ∈ V\}$ 📸]
// The definition of the image is shown from slide 4 onward, with a camera emoji

#v(40pt)

#only("5")[
#voiceover("This formula helps us understand the relationship between the dimensions of the domain, kernel, and image of a linear mapping.")
]
#only("5-")[🧩 Relates dimensions of domain, kernel, and image]
// A point about the formula relating dimensions is shown from slide 5 onward, with a puzzle piece emoji

]

#slide()[
#only("1")[
#voiceover("Let's visualize this with an example.")
]
#text(size: 30pt, weight: "bold")[Example 🌐]
// The title "Example" with a globe emoji is shown on this slide
#v(40pt)

#only("2")[
#voiceover("Consider a linear mapping T from R 4 to R 3 with the dimension of the kernel of T being 2.")
]
#only("2-")[- $T: ℝ^4 -> ℝ^3$ with $"dim"("ker"(T)) = 2$]
// The example setup is shown from slide 2 onward

#v(20pt)

#only("3")[
#voiceover("Using the dimension formula, we have the dimension of R 4 equals the dimension of the kernel of T plus the dimension of the image of T.")
]
#only("3-")[$ "dim"(ℝ^4) = "dim"("ker"(T)) + "dim"("im"(T)) $]
// The dimension formula applied to the example is shown from slide 3 onward

#v(20pt)

#only("4")[
#voiceover("We know the dimension of R 4 is 4, and the dimension of the kernel of T is given as 2. Substituting these values, we get 4 equals 2 plus the dimension of the image of T.")
]
#only("4-")[$ 4 = 2 + "dim"("im"(T)) $]
// The substitution into the formula is shown from slide 4 onward

#v(20pt)

#only("5")[
#voiceover("Solving for the dimension of the image of T, we find that it must be 2.")
]
#only("5-")[$ "dim"("im"(T)) = 4 - 2 = 2 $]
// The solution for the dimension of the image is shown from slide 5 onward

#v(40pt)

#only("6")[
#voiceover("This example illustrates how the dimension formula helps us find the dimension of the image when we know the dimensions of the domain and kernel.")
]
#only("6-")[💡 Helps find unknown dimensions]
// A point about the formula helping find unknown dimensions is shown from slide 6 onward, with a light bulb emoji

]

#slide()[
#only("1")[
#voiceover("In summary, the dimension formula for linear mappings is a powerful tool in linear algebra.")
]
#text(size: 30pt, weight: "bold")[Summary 🎬]
// The title "Summary" with a clapper board emoji is shown on this slide
#v(40pt)

#only("2-")[- Relates dimensions of domain, kernel, and image 🧩]
// The point about the formula relating dimensions is shown from slide 2 onward, with a puzzle piece emoji

#v(20pt)

#only("3-")[- Helps find unknown dimensions 💡]
// The point about the formula helping find unknown dimensions is shown from slide 3 onward, with a light bulb emoji

#v(20pt)

#only("4-")[- Key formula: $ "dim"(V) = "dim"("ker"(T)) + "dim"("im"(T)) $ 🔑]
// The dimension formula is shown from slide 4 onward, with a key emoji

#v(40pt)

#only("5")[
#voiceover("It's a key formula that relates the dimensions of the domain, kernel, and image of a linear mapping, and it helps us find unknown dimensions when we have partial information.")
]

#only("6")[
#voiceover("With this, we conclude our recap of the dimension formula for linear mappings.")
]

]