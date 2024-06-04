#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Loss Aversion]
#v(40pt)
How can loss aversion affect financial decisions? 
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect. 
#only("-1")[a) It leads to risk-seeking behavior]#only("2-")[#text(fill:red)[a) It leads to risk-seeking behavior]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) It leads to risk-averse behavior]#only("3-")[#text(fill:green)[b) It leads to risk-averse behavior]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) It has no effect]#only("4-")[#text(fill:red)[c) It has no effect]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) It improves decision-making]#only("5-")[#text(fill:red)[d) It improves decision-making]]
#only("1")[#voiceover("Not quite, but here's the correct solution.")]
#only("2")[#voiceover("Option a) is incorrect. Loss aversion does not lead to risk-seeking behavior, but rather the opposite.")]
#only("3")[#voiceover("Option b) is correct. Loss aversion leads to risk-averse behavior, as people tend to prefer avoiding losses over acquiring equivalent gains.")]
#only("4")[#voiceover("Option c) is incorrect. Loss aversion does have an effect on financial decision-making, as it biases people towards avoiding losses.")]
#only("5")[#voiceover("Option d) is also incorrect. While loss aversion is a natural human tendency, it can lead to suboptimal financial decisions, rather than improving decision-making.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Explanation]
#v(40pt)
#only("1-")[Loss aversion is the tendency to prefer avoiding losses rather than acquiring equivalent gains. 📉]
#v(20pt)
#only("2-")[For example:]
#v(10pt)
#only("3-")[- Most people would not accept a bet with a 50% chance of losing \$100 and a 50% chance of winning \$100. 🎲]
#v(10pt)
#only("4-")[- The pain of losing \$100 is psychologically about twice as powerful as the pleasure of gaining \$100. 😟 > 😊]

#only("1")[#voiceover("Loss aversion is the tendency to prefer avoiding losses rather than acquiring equivalent gains.")]
#only("2")[#voiceover("For example:")]
#only("3")[#voiceover("Most people would not accept a bet with a 50% chance of losing 100 dollars and a 50% chance of winning 100 dollars.")]
#only("4")[#voiceover("This is because the pain of losing 100 dollars is psychologically about twice as powerful as the pleasure of gaining 100 dollars.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Explanation (cont.)]
#v(40pt)
#only("1-")[In financial decision-making, this leads to: ]
#v(10pt)
#only("2-")[- Holding on to losing investments too long 📉]
#v(10pt)
#only("3-")[- Avoiding risky but potentially profitable investments 🏦]
#v(10pt)
#only("4-")[- Preferring low-risk, low-return investments 🐢]
#v(20pt)
#only("5-")[In summary, loss aversion leads to risk-averse behavior in financial decisions. 🔒]

#only("1")[#voiceover("In financial decision-making, loss aversion leads to:")]
#only("2")[#voiceover("Holding on to losing investments for too long,")]
#only("3")[#voiceover("Avoiding risky but potentially profitable investments,")]
#only("4")[#voiceover("And preferring low-risk, low-return investments.")]
#only("5")[#voiceover("In summary, loss aversion leads to risk-averse behavior in financial decisions, as people try to avoid losses even if it means missing out on equivalent gains.")]
]