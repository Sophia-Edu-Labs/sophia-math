#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Loss Aversion]
#v(40pt)
What is loss aversion?
#v(40pt)
// From start until section 1, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) Preferring gains over losses]#only("2-")[#text(fill:red)[a) Preferring gains over losses]]
#v(10pt)
// From start until section 2, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Preferring avoiding losses over acquiring gains]#only("3-")[#text(fill:green)[b) Preferring avoiding losses over acquiring gains]]
#v(10pt)
// From start until section 3, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Indifference to gains and losses]#only("4-")[#text(fill:red)[c) Indifference to gains and losses]]
#v(10pt)
// From start until section 4, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) None of the above]#only("5-")[#text(fill:red)[d) None of the above]]
#v(40pt)

#only("1")[#voiceover("Not quite. Let's take a look at the correct solution.")]
// Briefly explain why a) is incorrect
#only("2")[#voiceover("Option a) is incorrect. Preferring gains over losses is not the definition of loss aversion.")]
// Explain why b) is correct
#only("3")[#voiceover("Option b) is correct. Loss aversion is defined as the tendency to prefer avoiding losses to acquiring equivalent gains.")]
// Briefly explain why c) is incorrect  
#only("4")[#voiceover("Option c) is incorrect. Loss aversion does not imply indifference to gains and losses, but rather a stronger preference for avoiding losses.")]
// Briefly explain why d) is incorrect
#only("5")[#voiceover("And option d) is also incorrect, as one of the above options, namely b), correctly defines loss aversion.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Loss Aversion Explained]
#v(40pt)
#only("1-")[Loss aversion is a cognitive bias where:]
#v(20pt)
#only("2-")[- Losses have a #text(weight: "bold")[greater psychological impact] than equivalent gains 📉😟 > 📈😊]
#v(20pt)  
#only("3-")[- People tend to #text(weight: "bold")[avoid losses] more than they seek gains 🙅‍♂️💸]
#v(20pt)
#only("4-")[Example: The pain of losing \$100 is greater than the joy of finding \$100 💰]

#only("1")[#voiceover("Let's break down the concept of loss aversion further.")]
#only("2")[#voiceover("Loss aversion implies that losses have a greater psychological impact on an individual than equivalent gains.")]
#only("3")[#voiceover("As a result, people tend to avoid losses more than they seek gains.")]  
#only("4")[#voiceover("For example, the pain of losing 100 dollars is typically greater than the joy of finding 100 dollars.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Implications in Finance]
#v(40pt)  
#only("1-")[In financial decision-making, loss aversion can lead to:]
#v(20pt)
#only("2-")[- Reluctance to sell assets that have decreased in value 📉🚫]
#v(20pt)
#only("3-")[- Holding on to losing investments for too long 📉🕰]
#v(20pt)  
#only("4-")[- Excessive risk aversion in investment choices 🎲😰]

#only("1")[#voiceover("Loss aversion has significant implications in financial decision-making.")]
#only("2")[#voiceover("It can lead to a reluctance to sell assets that have decreased in value, as realizing the loss is psychologically painful.")]
#only("3")[#voiceover("This can cause investors to hold on to losing investments for too long, hoping they will recover their value.")]
#only("4")[#voiceover("Loss aversion can also lead to excessive risk aversion in investment choices, as the potential pain of losses looms larger than the potential pleasure of gains.")]  
]

#slide()[  
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Loss aversion: tendency to prefer avoiding losses over acquiring equivalent gains 📉😟 > 📈😊]
#v(20pt)  
#only("2-")[- Losses have greater psychological impact than gains 🧠💔]
#v(20pt)
#only("3-")[- Can lead to suboptimal financial decisions 💸❌]
  
#only("1")[#voiceover("In summary, loss aversion is the tendency to prefer avoiding losses to acquiring equivalent gains.")]
#only("2")[#voiceover("This is because losses have a greater psychological impact on us than gains.")]
#only("3")[#voiceover("In the context of financial decision-making, loss aversion can lead to suboptimal decisions, such as holding on to losing investments for too long or being excessively risk-averse.")]
]