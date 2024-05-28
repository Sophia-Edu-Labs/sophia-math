#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Example: Price Decrease]
#v(40pt)
#only("1-")[Let's consider a decrease in the price of good X 💸]
#v(20pt)
#only("2-")[Initial price: $p_0$, Quantity demanded: $x_0$]
#v(20pt)
#only("3-")[New price: $p_1$, Quantity demanded: $x_1$]
#only("1")[
#voiceover("Let's consider an example where the price of good X decreases.")
]
#only("2")[
#voiceover("Initially, at price p sub 0, the quantity demanded is x sub 0.")
]
#only("3")[
#voiceover("After the price decrease to p sub 1, the quantity demanded increases to x sub 1.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Total Effect]
#v(40pt)
#only("1-")[Total effect: $x_1 - x_0$ 📈]
#v(20pt)
#only("2-")[Decomposed into:]
#v(20pt)
#only("3-")[1. Substitution Effect 🔄]
#v(20pt)
#only("4-")[2. Income Effect 💰]
#only("1")[
#voiceover("The total effect of the price change is the difference between the new quantity demanded, x sub 1, and the initial quantity demanded, x sub 0.")
]
#only("2")[
#voiceover("This total effect can be decomposed into two parts:")
]
#only("3")[
#voiceover("First, the substitution effect, which represents the change in consumption due to the change in relative prices, holding utility constant.")
]
#only("4")[
#voiceover("And second, the income effect, which represents the change in consumption due to the change in purchasing power, as the price decrease effectively increases the consumer's real income.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Substitution Effect]
#v(40pt)
#only("1-")[Substitution effect: $x_s - x_0$ 🔄]
#v(20pt)
#only("2-")[Where $x_s$ is the quantity demanded at $p_1$, holding utility constant]
#v(20pt)
#only("3-")[Represents the change in consumption due to the change in relative prices 📉]
#only("1")[
#voiceover("The substitution effect is the difference between x sub s and x sub 0.")
]
#only("2")[
#voiceover("Here, x sub s is the quantity that would be demanded at the new price p sub 1, if the consumer's utility level were held constant at the initial level.")
]
#only("3")[
#voiceover("The substitution effect represents the change in consumption that is purely due to the change in the relative price of good X, as it becomes relatively cheaper compared to other goods.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Income Effect]
#v(40pt)
#only("1-")[Income effect: $x_1 - x_s$ 💰]
#v(20pt)
#only("2-")[Represents the change in consumption due to the increase in purchasing power 💪]
#v(20pt)
#only("3-")[As the price decreases, the consumer can afford more of all goods 🛒]
#only("1")[
#voiceover("The income effect is the difference between x sub 1 and x sub s.")
]
#only("2")[
#voiceover("It represents the change in consumption that is due to the increase in the consumer's purchasing power.")
]
#only("3")[
#voiceover("As the price of good X decreases, the consumer's real income effectively increases, allowing them to afford more of all goods, including good X.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Slutsky Equation]
#v(40pt)
#only("1-")[Slutsky equation: $x_1 - x_0 = (x_s - x_0) + (x_1 - x_s)$]
#v(20pt)
#only("2-")[Total Effect = Substitution Effect + Income Effect]
#v(20pt)
#only("3-")[Decomposes the total change in quantity demanded 📊]
#only("1")[
#voiceover("The Slutsky equation states that the total effect, x sub 1 minus x sub 0, is equal to the substitution effect, x sub s minus x sub 0, plus the income effect, x sub 1 minus x sub s.")
]
#only("2")[
#voiceover("In other words, the total effect of a price change is the sum of the substitution effect and the income effect.")
]
#only("3")[
#voiceover("This equation decomposes the total change in the quantity demanded into the part that is due to the change in relative prices (substitution effect) and the part that is due to the change in purchasing power (income effect).")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Price decrease in good X: $p_0 arrow p_1$ 💸]
#v(20pt)
#only("2-")[- Total effect: $x_1 - x_0$ 📈]
#v(20pt)
#only("3-")[- Substitution effect: $x_s - x_0$ 🔄]
#v(20pt)
#only("4-")[- Income effect: $x_1 - x_s$ 💰]
#v(20pt)
#only("5-")[- Slutsky equation: Total Effect = Substitution Effect + Income Effect 🧮]
#only("1")[
#voiceover("In summary, we considered an example where the price of good X decreases from p sub 0 to p sub 1.")
]
#only("2")[
#voiceover("The total effect of this price change is the increase in the quantity demanded from x sub 0 to x sub 1.")
]
#only("3")[
#voiceover("This total effect can be decomposed into the substitution effect, which is the change in quantity demanded from x sub 0 to x sub s, holding utility constant,")
]
#only("4")[
#voiceover("and the income effect, which is the change in quantity demanded from x sub s to x sub 1, due to the increase in purchasing power.")
]
#only("5")[
#voiceover("The Slutsky equation states that the total effect is equal to the sum of the substitution effect and the income effect, providing a way to analyze the impact of price changes on consumer behavior.")
]
]