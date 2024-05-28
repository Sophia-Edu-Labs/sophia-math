#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap the key points about Slutsky Decomposition.")
]
#text(size: 30pt, weight: "bold")[Slutsky Decomposition Recap 📝]
// The title "Slutsky Decomposition Recap" is shown on this slide, with a memo emoji
#v(40pt)
#only("2-")[
- Separates price change effects into:
  - Substitution effect 🔄
  - Income effect 💰
]
// The bullet points about the separation of effects are shown from slide 2 onward, with emoji for substitution and income effects
#only("2")[
#voiceover("Slutsky Decomposition separates the effect of a price change into two components: the substitution effect and the income effect.")
]

#v(40pt)

#only("3-")[
- Substitution effect: change in consumption due to relative prices 📈📉
]
// The bullet point about the substitution effect is shown from slide 3 onward, with emoji for price changes
#only("3")[
#voiceover("The substitution effect captures the change in consumption resulting from a change in the relative prices of goods, holding utility constant.")
]
]

#slide()[
#only("1")[
#voiceover("Continuing with the key points about Slutsky Decomposition.")
]
#text(size: 30pt, weight: "bold")[Slutsky Decomposition Recap 📝]
// The title "Slutsky Decomposition Recap" is shown on this slide, with a memo emoji
#v(40pt)

#only("2-")[
- Income effect: change in consumption due to real income 💸
]
// The bullet point about the income effect is shown from slide 2 onward, with a money with wings emoji
#only("2")[
#voiceover("The income effect represents the change in consumption due to the impact of the price change on the consumer's real income.")
]

#v(40pt)

#only("3-")[
- Mathematical representation: $"Total Effect" = "Substitution Effect" + "Income Effect"$
]
// The mathematical representation of Slutsky Decomposition is shown from slide 3 onward
#only("3")[
#voiceover("Mathematically, Slutsky Decomposition states that the total effect of a price change equals the sum of the substitution effect and the income effect.")
]

#v(40pt)

#only("4-")[
- Useful for analyzing consumer behavior in response to price changes 🛍️
]
// The bullet point about the usefulness of Slutsky Decomposition is shown from slide 4 onward, with a shopping bags emoji
#only("4")[
#voiceover("Slutsky Decomposition is a valuable tool for analyzing how consumers adjust their behavior in response to price changes in real-world scenarios.")
]
]