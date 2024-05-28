#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Slutsky vs Hicks Decomposition]
#v(40pt)
#only("1-")[- Both decompose price change effects 💰]
#v(20pt)
#only("2-")[- Slutsky: Holds real income constant 🏦]
#v(20pt)
#only("3-")[- Hicks: Holds utility constant 😊]
#only("1")[
#voiceover("Slutsky Decomposition and Hicks Decomposition are two ways to decompose the effects of a price change.")
]
#only("2")[
#voiceover("The key difference is that Slutsky Decomposition holds real income constant.")
]
#only("3")[
#voiceover("On the other hand, Hicks Decomposition holds utility constant.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Slutsky Decomposition]
// The title "Slutsky Decomposition" is shown on this slide
#v(40pt)
#only("1-")[- Real income constant 🏦]
// The point that Slutsky holds real income constant is shown from slide 1 onward
#v(20pt)
#only("2-")[- Compensated by income effect 💸]
// The point that in Slutsky, the consumer is compensated by the income effect is shown from slide 2 onward
#v(20pt)
#only("3-")[- Focuses on substitution effect 🔄]
// The point that Slutsky focuses on the substitution effect is shown from slide 3 onward
#only("1")[
#voiceover("In Slutsky Decomposition, the consumer's real income is held constant.")
]
#only("2")[
#voiceover("This means that the consumer is compensated for the income effect of the price change.")
]
#only("3")[
#voiceover("As a result, Slutsky Decomposition isolates and focuses on the substitution effect.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Hicks Decomposition]
// The title "Hicks Decomposition" is shown on this slide
#v(40pt)
#only("1-")[- Utility constant 😊]
// The point that Hicks holds utility constant is shown from slide 1 onward
#v(20pt)
#only("2-")[- Compensated by substitution effect 🔄]
// The point that in Hicks, the consumer is compensated by the substitution effect is shown from slide 2 onward
#v(20pt)
#only("3-")[- Focuses on income effect 💸]
// The point that Hicks focuses on the income effect is shown from slide 3 onward
#only("1")[
#voiceover("In contrast, Hicks Decomposition holds the consumer's utility constant.")
]
#only("2")[
#voiceover("This means that the consumer is compensated for the substitution effect of the price change.")
]
#only("3")[
#voiceover("Consequently, Hicks Decomposition isolates and focuses on the income effect.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Slutsky: Real income constant, focuses on substitution effect]
#v(20pt)
#only("2-")[- Hicks: Utility constant, focuses on income effect]
#v(20pt)
#only("3-")[- Both decompose price change effects, but differently]
#only("1")[
#voiceover("To sum up, Slutsky Decomposition holds real income constant and focuses on the substitution effect.")
]
#only("2")[
#voiceover("Hicks Decomposition, on the other hand, holds utility constant and focuses on the income effect.")
]
#only("3")[
#voiceover("While both methods decompose the effects of a price change, they do so in different ways, each providing a unique perspective on consumer behavior.")
]
]