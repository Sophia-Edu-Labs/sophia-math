#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Composite Functions in Real Life]
#v(40pt)
#only("1-")[- Modeling complex relationships 🌐]
#v(20pt)
#only("2-")[- Example: Population growth 📈]
#v(20pt)
#only("3-")[$ P(t) = f(g(t)) = e^(0.02t) + 1000 $]
#only("1")[
#voiceover("Composite functions are used to model complex relationships in the real world by combining simpler functions.")
]
#only("2")[
#voiceover("For example, population growth can be modeled using a composite function.")
]
#only("3")[
#voiceover("Here, $P of t$ equals $f of g of t$, which is $e to the power of 0.02t$ plus 1000. The exponential function $g$ models the growth rate, while the function $f$ adds the initial population.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Inverse Functions in Real Life]
#v(40pt)
#only("1-")[- Reversing processes 🔄]
#v(20pt)
#only("2-")[- Example: Decoding messages 🔐]
#v(20pt)
#only("3-")[$ m = d(e(m)) = e^(-1)(m) $]
#only("1")[
#voiceover("Inverse functions are used to reverse processes in various fields.")
]
#only("2")[
#voiceover("For instance, in cryptography, inverse functions are used to decode encrypted messages.")
]
#only("3")[
#voiceover("If $m$ is the original message and $e$ is the encryption function, then the decrypted message $d of e of m$ equals $e inverse of m$.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Applications Across Fields]
#v(40pt)
#only("1-")[- Physics 🌌: Velocity, acceleration]
#v(20pt)
#only("2-")[- Economics 📊: Supply and demand]
#v(20pt)
#only("3-")[- Biology 🧬: Population dynamics]
#only("1")[
#voiceover("Composite and inverse functions have applications across various fields.")
]
#only("2")[
#voiceover("In physics, they can model relationships between velocity, acceleration, and position. In economics, they can represent supply and demand curves.")
]
#only("3")[
#voiceover("In biology, they can model population dynamics and predator-prey relationships.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Composite functions: Model complex relationships 🌐]
#v(20pt)
#only("2-")[- Inverse functions: Reverse processes 🔄]
#v(20pt)
#only("3-")[- Applications in physics, economics, biology 🔬📈🧬]
#only("1")[
#voiceover("To summarize, composite functions are used to model complex relationships by combining simpler functions.")
]
#only("2")[
#voiceover("Inverse functions, on the other hand, are used to reverse processes.")
]
#only("3")[
#voiceover("Both composite and inverse functions have wide-ranging applications in fields such as physics, economics, and biology, making them essential tools for understanding and solving real-world problems.")
]
]