#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear Mapping Recap]
#v(40pt)
#only("1")[
#voiceover("Let's recap what we've learned about linear mappings.")
]
#only("2-")[
- Function between vector spaces
]
#only("2")[
#voiceover("A linear mapping is a function between two vector spaces.")
]
#only("3-")[
- Preserves vector addition and scalar multiplication
]
#only("3")[
#voiceover("It preserves vector addition and scalar multiplication.")
]
#only("4-")[
$ T(u + v) = T(u) + T(v) $
$ T(c u) = c T(u) $
]
#only("4")[
#voiceover("This means that T of u plus v equals T of u plus T of v, and T of c times u equals c times T of u.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Properties 🔍]
#v(40pt)
#only("1-")[
- $ T(0) = 0 $
]
#only("1")[
#voiceover("Some important properties of linear mappings include: T of the zero vector equals the zero vector.")
]
#only("2-")[
- $ T(c u + d v) = c T(u) + d T(v) $
]
#only("2")[
#voiceover("And T of c times u plus d times v equals c times T of u plus d times T of v, for any vectors u and v and scalars c and d.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Kernel and Image 🌽🖼]
#v(40pt)
#only("1-")[
- Kernel: $ "ker"(T) = {v ∈ V | T(v) = 0} $
]
#only("1")[
#voiceover("The kernel of a linear mapping T is the set of all vectors v in the domain V such that T of v equals the zero vector.")
]
#only("2-")[
- Image: $ "im"(T) = {w ∈ W | w = T(v) "for some" v ∈ V} $
]
#only("2")[
#voiceover("The image of T is the set of all vectors w in the codomain W such that w equals T of v for some vector v in the domain V.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dimension Formula 📏]
#v(40pt)
#only("1-")[
$ "dim"(V) = "dim"("ker"(T)) + "dim"("im"(T)) $
]
#only("1")[
#voiceover("The dimension formula states that the dimension of the domain V equals the dimension of the kernel of T plus the dimension of the image of T.")
]
#only("2-")[
- Helps understand relationship between kernel and image
]
#only("2")[
#voiceover("This formula helps us understand the relationship between the kernel and image of a linear mapping and their dimensions.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[
- Linear mapping: function between vector spaces that preserves addition and scalar multiplication 🗺
]
#only("1")[
#voiceover("In summary, a linear mapping is a function between vector spaces that preserves vector addition and scalar multiplication.")
]
#only("2-")[
- Key properties: $ T(0) = 0 $, $ T(c u + d v) = c T(u) + d T(v) $ 🔑
]
#only("2")[
#voiceover("Its key properties include T of zero equals zero, and T of c u plus d v equals c T of u plus d T of v.")
]
#only("3-")[
- Kernel and image provide insights 🔍
]
#only("3")[
#voiceover("The kernel and image of a linear mapping provide important insights into its behavior.")
]
#only("4-")[
- Dimension formula connects domain, kernel, and image 🔗
]
#only("4")[
#voiceover("And the dimension formula connects the dimensions of the domain, kernel, and image.")
]
]