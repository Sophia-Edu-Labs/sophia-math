#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear Mapping Properties]
#v(40pt)
#only("1-")[If $T$ is a linear mapping, then:]
#v(20pt)
#only("2-")[1. $T(0) = 0$ 🎯]
#v(20pt)
#only("3-")[2. $T(c u + d v) = c T(u) + d T(v)$ 🧮]
#only("1")[
#voiceover("If T is a linear mapping, it has two important properties.")
]
#only("2")[
#voiceover("First, T of the zero vector is always the zero vector.")
]
#only("3")[
#voiceover("Second, T of a linear combination of vectors u and v is equal to the linear combination of T of u and T of v, where c and d are any scalars.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Property 1: $T(0) = 0$]
#v(40pt)
#only("1-")[- Mapping preserves the zero vector 🎯]
#v(20pt)
#only("2-")[Example: If $T(mat(x; y)) = mat(2x; 3y)$, then $T(mat(0; 0)) = mat(0; 0)$]
#only("1")[
#voiceover("Let's look at the first property in more detail. A linear mapping always maps the zero vector to the zero vector.")
]
#only("2")[
#voiceover("For example, if T is defined as T of the vector x, y equals the vector 2x, 3y, then T of the zero vector 0, 0 equals the zero vector 0, 0.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Property 2: $T(c u + d v) = c T(u) + d T(v)$]
#v(40pt)
#only("1-")[- Mapping preserves linear combinations 🧮]
#v(20pt)
#only("2-")[Example: If $T(mat(x; y)) = mat(2x; 3y)$, then:]
#v(10pt)
#only("3-")[$T(c mat(u_1; u_2) + d mat(v_1; v_2)) = c T(mat(u_1; u_2)) + d T(mat(v_1; v_2))$]
#v(10pt)
#only("4-")[$= c mat(2u_1; 3u_2) + d mat(2v_1; 3v_2)$]
#only("1")[
#voiceover("The second property states that a linear mapping preserves linear combinations.")
]
#only("2")[
#voiceover("Using the same example as before, if T of the vector x, y equals the vector 2x, 3y, then...")
]
#only("3")[
#voiceover("T of the linear combination c times the vector u1, u2 plus d times the vector v1, v2 equals...")
]
#only("4")[
#voiceover("c times T of the vector u1, u2 plus d times T of the vector v1, v2, which equals c times the vector 2u1, 3u2 plus d times the vector 2v1, 3v2.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Linear mapping $T$: 🗺]
#v(20pt)
#only("2-")[1. $T(0) = 0$ (preserves zero vector)]
#v(20pt)
#only("3-")[2. $T(c u + d v) = c T(u) + d T(v)$ (preserves linear combinations)]
#only("1")[
#voiceover("In summary, a linear mapping T has two key properties.")
]
#only("2")[
#voiceover("First, it maps the zero vector to the zero vector.")
]
#only("3")[
#voiceover("Second, it preserves linear combinations, meaning that T of a linear combination of vectors u and v equals the linear combination of T of u and T of v.")
]
]