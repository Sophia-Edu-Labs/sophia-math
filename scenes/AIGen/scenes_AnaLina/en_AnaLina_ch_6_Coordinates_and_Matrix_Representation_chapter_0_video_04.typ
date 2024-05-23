#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Coordinates Recap 📍]
#v(40pt)
#only("1")[
#voiceover("Let's recap what we've learned about coordinates.")
]
#only("2-")[
- Coordinates uniquely identify a point in a vector space 🎯
]
#only("2")[
#voiceover("Coordinates are a set of numbers that uniquely identify a point in a vector space.")
]
#only("3-")[
- Example: $v = mat(3; 4)$ in $RR^2$ has coordinates $(3, 4)$ 📋
]
#only("3")[
#voiceover("For example, the vector v equals the matrix 3; 4 in R 2 has coordinates 3, 4.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Basis and Coordinates 🎛]
#v(40pt)
#only("1-")[
- Coordinates are expressed relative to a basis 📐
]
#only("1")[
#voiceover("Coordinates are expressed relative to a basis, which is a set of vectors that span the vector space.")
]
#only("2-")[
- Example: $B = (mat(1; 0), mat(0; 1))$ in $RR^2$, $v = mat(2; 3)$ has coordinates $(2, 3)$ relative to $B$ 🧮
]
#only("2")[
#voiceover("For instance, if B equals the matrix 1; 0, 0; 1 in R 2, then the vector v equals 2; 3 has coordinates 2, 3 relative to the basis B.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Takeaways 🎓]
#v(40pt)
#only("1-")[
- Coordinates uniquely identify points in vector spaces 🌌
]
#only("1")[
#voiceover("The key takeaway is that coordinates uniquely identify points in vector spaces.")
]
#only("2-")[
- Coordinates are expressed relative to a chosen basis 🧭
]
#only("2")[
#voiceover("And these coordinates are always expressed relative to a chosen basis.")
]
#only("3-")[
- Mastering coordinates is crucial for linear algebra! 💪
]
#only("3")[
#voiceover("Mastering the concept of coordinates is crucial for your journey in linear algebra!")
]
]