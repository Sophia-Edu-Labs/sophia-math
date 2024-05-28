#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hicks Decomposition]
#v(40pt)
#only("1-")[- Separates effect of price change into:]
#v(20pt)
#only("2-")[  - Substitution effect 🔄]
#v(20pt)
#only("3-")[  - Income effect 💰]
#v(40pt)
#only("4-")[- Uses compensated demand functions]
#only("1")[
#voiceover("Hicks Decomposition is a method to separate the effect of a price change into two parts: the substitution effect and the income effect.")
]
#only("2")[
#voiceover("The substitution effect captures how consumption changes when the price changes, keeping utility constant.")
]
#only("3")[
#voiceover("The income effect shows how consumption changes due to a change in real income, after adjusting for the substitution effect.")
]
#only("4")[
#voiceover("To mathematically represent this, Hicks Decomposition uses compensated demand functions.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Compensated Demand Function]
#v(40pt)
#only("1-")[- Denoted as $h_i(p, u)$]
#v(20pt)
#only("2-")[  - $p$: price vector 📈]
#v(20pt)
#only("3-")[  - $u$: utility level 😊]
#v(40pt)
#only("4-")[- Gives demand at prices $p$ that yields utility $u$]
#only("1")[
#voiceover("The compensated demand function for good i is denoted as h sub i of p comma u.")
]
#only("2")[
#voiceover("Here, p represents the price vector, which includes the prices of all goods.")
]
#only("3")[
#voiceover("And u represents the utility level, which is held constant.")
]
#only("4")[
#voiceover("The compensated demand function gives the demand for good i at prices p that would yield the same utility level u.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Hicks Decomposition Formula]
#v(40pt)
#only("1-")[$ dif x_i = (dif h_i)/(dif p_j) dif p_j + (dif x_i)/(dif I) (x_j dif p_j) $]
#v(20pt)
#only("2-")[  - $x_i$: demand for good $i$ 🛒]
#v(20pt)
#only("3-")[  - $p_j$: price of good $j$ 💲]
#v(20pt)
#only("4-")[  - $I$: income 💰]
#only("1")[
#voiceover("The Hicks Decomposition formula states that the change in demand for good i equals the partial derivative of the compensated demand function with respect to the price of good j, multiplied by the change in the price of good j, plus the partial derivative of the demand for good i with respect to income, multiplied by the change in income due to the price change.")
]
#only("2")[
#voiceover("Here, x sub i represents the demand for good i.")
]
#only("3")[
#voiceover("p sub j represents the price of good j.")
]
#only("4")[
#voiceover("And I represents income.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Hicks Decomposition separates price effect into substitution and income effects 🔍]
#v(20pt)
#only("2-")[- Uses compensated demand functions $h_i(p, u)$ 📈]
#v(20pt)
#only("3-")[- Formula: $ dif x_i = (dif h_i)/(dif p_j) dif p_j + (dif x_i)/(dif I) (x_j dif p_j) $]
#only("1")[
#voiceover("In summary, Hicks Decomposition separates the effect of a price change into substitution and income effects.")
]
#only("2")[
#voiceover("It uses compensated demand functions, denoted as h sub i of p comma u, which give the demand at prices that yield a constant utility level.")
]
#only("3")[
#voiceover("The Hicks Decomposition formula shows that the change in demand for a good equals the sum of the substitution effect, captured by the change in the compensated demand, and the income effect, captured by the change in demand due to the change in real income.")
]
]