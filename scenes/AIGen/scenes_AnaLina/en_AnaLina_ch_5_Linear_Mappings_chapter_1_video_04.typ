#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap the first properties of linear mappings.")
]
#text(size: 30pt, weight: "bold")[First Properties of Linear Mappings]
#v(40pt)
#only("2-")[- If $T$ is a linear mapping, then:]
#v(20pt)
#only("3-")[  1. $T(0) = 0$]
#v(20pt)
#only("4-")[  2. $T(c u + d v) = c T(u) + d T(v)$]
#v(40pt)
#only("2")[
#voiceover("If T is a linear mapping, then it has two important properties.")
]
#only("3")[
#voiceover("First, T of the zero vector equals the zero vector.")
]
#only("4")[
#voiceover("Second, T of a linear combination of vectors u and v equals the same linear combination of T of u and T of v.")
]
#only("5")[
#voiceover("These properties hold for any vectors u and v and any scalars c and d.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Importance 🌟]
#v(40pt)
#only("1-")[- Fundamental properties of linear mappings]
#v(20pt)
#only("2-")[- Used in proofs and computations]
#v(20pt)
#only("3-")[- Characterize the behavior of linear mappings]
#only("1")[
#voiceover("These properties are fundamental to linear mappings.")
]
#only("2")[
#voiceover("They are frequently used in proofs and computations involving linear mappings.")
]
#only("3")[
#voiceover("They characterize how linear mappings behave with respect to vector addition and scalar multiplication.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[For a linear mapping $T$:]
#v(20pt)
#only("2-")[1. $ T(0) = 0$]
#v(20pt)
#only("3-")[2. $T(c u + d v) = c T(u) + d T(v)$]
#v(20pt)
#only("4-")[   for any $u, v$ and $c, d$]
#only("1")[
#voiceover("In summary, for a linear mapping T,")
]
#only("2")[
#voiceover("T of the zero vector equals the zero vector,")
]
#only("3")[
#voiceover("and T of a linear combination of vectors u and v equals the same linear combination of T of u and T of v,")
]
#only("4")[
#voiceover("and this holds for any vectors u and v and any scalars c and d.")
]
]