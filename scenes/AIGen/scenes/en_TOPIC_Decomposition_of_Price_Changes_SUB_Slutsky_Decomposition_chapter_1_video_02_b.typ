#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Substitution Effect]
#v(40pt)
#only("1-")[The substitution effect occurs when a price change makes a good \_\_\_\_\_.]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) absolutely cheaper]#only("2-")[#text(fill:red)[a) absolutely cheaper]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) relatively cheaper or more expensive]#only("3-")[#text(fill:green)[b) relatively cheaper or more expensive]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) absolutely more expensive]#only("4-")[#text(fill:red)[c) absolutely more expensive]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) none of the above]#only("5-")[#text(fill:red)[d) none of the above]]
#only("1")[#voiceover("That's right, great job! The correct answer is...")]
#only("2")[#voiceover("a) absolutely cheaper is incorrect. The substitution effect is not about absolute price changes.")]
#only("3")[#voiceover("b) relatively cheaper or more expensive. This is the correct answer. The substitution effect occurs when a price change alters the relative prices of goods.")]
#only("4")[#voiceover("c) absolutely more expensive is also incorrect for the same reason as a). The substitution effect is about relative, not absolute price changes.")]
#only("5")[#voiceover("And d) none of the above is incorrect because b) is the correct answer.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Understanding the Substitution Effect]
#v(40pt)
#only("1-")[- Occurs when relative prices change 💰]
#v(20pt)
#only("2-")[- Leads to a change in consumption 🛒]
#v(20pt)
#only("3-")[- Holds utility constant 📈]
#v(20pt)
#only("4-")[- Part of Slutsky Decomposition 🧩]

#only("1")[#voiceover("The substitution effect occurs when a change in price makes a good relatively cheaper or more expensive compared to other goods.")]
#only("2")[#voiceover("This change in relative prices leads consumers to change their consumption patterns, substituting the relatively cheaper good for the relatively more expensive one.")]
#only("3")[#voiceover("Importantly, the substitution effect is analyzed while holding the consumer's utility, or satisfaction, constant.")]
#only("4")[#voiceover("The substitution effect is one part of the Slutsky Decomposition, which separates the effect of a price change into substitution and income effects.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Consider two goods, 🍎 apples and 🍊 oranges.]
#v(20pt)
#only("2-")[If the price of 🍎 decreases relative to 🍊:]
- Consumers will buy more 🍎
- Consumers will buy less 🍊
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Substitution effect is about #text(weight: "bold")[relative] price changes 📊]
#v(20pt)
#only("2-")[- Leads to changes in consumption 🛍️]
#v(20pt)
#only("3-")[- Analyzed holding utility constant 😊]
#v(20pt)
#only("4-")[- Part of Slutsky Decomposition, along with income effect 💰]

#only("1")[#voiceover("Remember, the key to understanding the substitution effect is that it's about relative price changes, not absolute ones.")]
#only("2")[#voiceover("These relative price changes lead to changes in consumption patterns, with consumers substituting the relatively cheaper good for the relatively more expensive one.")]
#only("3")[#voiceover("When analyzing the substitution effect, we hold the consumer's utility constant.")]
#only("4")[#voiceover("And finally, the substitution effect is one part of the Slutsky Decomposition, along with the income effect. Together, they separate the total effect of a price change on consumption.")]
]