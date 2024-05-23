#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Dimension Formula]
#v(40pt)
#only("1-")[$ "dim"(V) = "dim"("ker"(T)) + "dim"("im"(T)) $]
#only("1")[
#voiceover("The dimension formula for a linear mapping T from vector space V to vector space W states that the dimension of V equals the dimension of the kernel of T plus the dimension of the image of T.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Kernel and Image]
#v(40pt)
#only("1-")[- 🌽 Kernel: $"ker"(T) = \{v ∈ V | T(v) = 0\}$]
#v(20pt)
#only("2-")[- 🖼 Image: $"im"(T) = \{w ∈ W | w = T(v) "for some" v ∈ V\}$]
#only("1")[
#voiceover("Recall that the kernel of T is the set of all vectors v in V such that T of v equals the zero vector.")
]
#only("2")[
#voiceover("And the image of T is the set of all vectors w in W such that w equals T of v for some vector v in V.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Relationship]
#v(40pt)
#only("1-")[$ "dim"(V) = "dim"("ker"(T)) + "dim"("im"(T)) $]
#v(20pt)
#only("2-")[- 🔍 Examine dimensions]
#v(20pt)
#only("3-")[- 🧩 Pieces of the puzzle]
#only("1")[
#voiceover("Now, the dimension formula tells us something about the relationship between these pieces.")
]
#only("2")[
#voiceover("It says that if we look at the dimensions of these spaces,")
]
#only("3")[
#voiceover("they fit together like pieces of a puzzle. The dimension of the domain space V is split into the dimension of the kernel and the dimension of the image.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[$ T: ℝ^4 → ℝ^3 "with" "dim"("ker"(T)) = 2 $]
#v(20pt)
#only("2-")[$ "dim"(ℝ^4) = 4 $]
#v(20pt)
#only("3-")[$ 2 + "dim"("im"(T)) = 4 $]
#v(20pt)
#only("4-")[$ "dim"("im"(T)) = 2 $]
#only("1")[
#voiceover("For example, consider a linear mapping T from R 4 to R 3 with a kernel of dimension 2.")
]
#only("2")[
#voiceover("We know that the dimension of R 4 is 4.")
]
#only("3")[
#voiceover("So the dimension formula tells us that 2 plus the dimension of the image of T equals 4.")
]
#only("4")[
#voiceover("Solving this, we find that the dimension of the image of T must be 2.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- 📏 Dimension formula relates $"dim"(V)$, $"dim"("ker"(T))$, $"dim"("im"(T))$]
#v(20pt)
#only("2-")[- 🧩 Dimensions fit together like puzzle pieces]
#v(20pt)
#only("3-")[- 💡 Helps understand structure of linear mappings]
#only("1")[
#voiceover("In summary, the dimension formula relates the dimensions of the domain space V, the kernel of T, and the image of T.")
]
#only("2")[
#voiceover("These dimensions fit together like puzzle pieces.")
]
#only("3")[
#voiceover("Understanding this relationship helps us better understand the structure of linear mappings.")
]
]