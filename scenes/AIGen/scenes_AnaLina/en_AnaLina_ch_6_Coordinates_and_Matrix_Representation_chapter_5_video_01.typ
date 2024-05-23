#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Representation]
#v(40pt)
#only("1-")[- Linear mapping $T: V \\to W$ 📐]
#v(20pt)
#only("2-")[- Basis $B$ for $V$, basis $C$ for $W$ 🎛️]
#v(20pt)
#only("3-")[- $[T]_B^C$: matrix rep. of $T$ w.r.t. $B$ and $C$ 🧩]
#only("1")[
#voiceover("Let's consider a linear mapping T from a vector space V to a vector space W.")
]
#only("2")[
#voiceover("We have a basis B for the domain V and a basis C for the codomain W.")
]
#only("3")[
#voiceover("The matrix representation of T with respect to the bases B and C is denoted as T subscript B superscript C.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Change of Basis]
#v(40pt)
#only("1-")[- New basis $B'$ for $V$, new basis $C'$ for $W$ 🔄]
#v(20pt)
#only("2-")[- Change of basis matrices: $P_B^{B'}$, $P_C^{C'}$ 🔀]
#v(20pt)
#only("3-")[- $P_B^{B'} = mat(b_1'; ...; b_n')$, $P_C^{C'} = mat(c_1'; ...; c_m')$ 🧮]
#only("1")[
#voiceover("Now, let's introduce a new basis B prime for V and a new basis C prime for W.")
]
#only("2")[
#voiceover("To transition between the old and new bases, we need change of basis matrices. P subscript B superscript B prime for V, and P subscript C superscript C prime for W.")
]
#only("3")[
#voiceover("The change of basis matrix P subscript B superscript B prime is formed by the new basis vectors b prime 1 to b prime n as its columns. Similarly, P subscript C superscript C prime is formed by the new basis vectors c prime 1 to c prime m.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Matrix Representation w.r.t. New Bases]
#v(40pt)
#only("1-")[- $[T]_{B'}^{C'} = P_C^{C'} [T]_B^C (P_B^{B'})^(-1)$ 🎭]
#v(20pt)
#only("2-")[1️⃣ Multiply $[T]_B^C$ by $(P_B^{B'})^(-1)$ on the right]
#v(20pt)
#only("3-")[2️⃣ Multiply the result by $P_C^{C'}$ on the left]
#only("1")[
#voiceover("The matrix representation of T with respect to the new bases B prime and C prime is given by this formula: T subscript B prime superscript C prime equals P subscript C superscript C prime times T subscript B superscript C times the inverse of P subscript B superscript B prime.")
]
#only("2")[
#voiceover("To compute this, first multiply the original matrix representation T subscript B superscript C by the inverse of the change of basis matrix P subscript B superscript B prime on the right.")
]
#only("3")[
#voiceover("Then, multiply the result by the change of basis matrix P subscript C superscript C prime on the left. This gives you the matrix representation of T with respect to the new bases B prime and C prime.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Change of basis matrices: $P_B^{B'}$, $P_C^{C'}$ 🔀]
#v(20pt)
#only("2-")[- Matrix rep. w.r.t. new bases: $[T]_{B'}^{C'} = P_C^{C'} [T]_B^C (P_B^{B'})^{-1}$ 🎭]
#only("1")[
#voiceover("In summary, to find the matrix representation of a linear mapping with respect to new bases, you need the change of basis matrices P subscript B superscript B prime and P subscript C superscript C prime.")
]
#only("2")[
#voiceover("The new matrix representation is given by the formula T subscript B prime superscript C prime equals P subscript C superscript C prime times T subscript B superscript C times the inverse of P subscript B superscript B prime. This allows you to express the linear mapping in terms of the new bases.")
]
]