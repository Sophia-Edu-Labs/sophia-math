#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Loss Aversion]
#v(40pt)
#only("1-")[What does loss aversion refer to?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) prefer gains over losses]#only("2-")[#text(fill:red)[a) prefer gains over losses]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) avoid losses more than acquiring gains]#only("3-")[#text(fill:green)[b) avoid losses more than acquiring gains]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) take more risks]#only("4-")[#text(fill:red)[c) take more risks]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) ignore losses]#only("5-")[#text(fill:red)[d) ignore losses]]
#only("1")[#voiceover("Great job, that's the correct answer!")]
#only("2")[#voiceover("Option a) is incorrect. Loss aversion does not mean preferring gains over losses, but rather putting more weight on avoiding losses.")]
#only("3")[#voiceover("Option b) is correct. Loss aversion refers to the tendency to avoid losses more than acquiring equivalent gains.")]
#only("4")[#voiceover("Option c) is incorrect. Loss aversion typically leads to less risk-taking, not more, as people try to avoid potential losses.")]
#only("5")[#voiceover("Option d) is also incorrect. Loss aversion means people pay a lot of attention to losses, not that they ignore them.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Explanation]
#v(40pt)
#only("1-")[Loss aversion is a key concept in behavioral finance 🧠💰]
#v(20pt)
#only("2-")[It suggests that people feel the pain of a loss more than the pleasure of an equivalent gain 📉😢 > 📈😊]
#v(20pt)
#only("3-")[For example, the pain of losing \$100 is greater than the joy of finding \$100 💸]
#v(20pt)
#only("4-")[This leads to a tendency to avoid losses, even if it means missing out on potential gains 🙅‍♂️]
#only("1")[#voiceover("Let's dive deeper into the concept of loss aversion, a key idea in behavioral finance.")]
#only("2")[#voiceover("Loss aversion suggests that people feel the psychological impact of a loss more intensely than the impact of an equivalent gain.")]
#only("3")[#voiceover("A common example is that the pain of losing 100 dollars is typically greater than the joy of finding 100 dollars.")]
#only("4")[#voiceover("Because of this, people often have a strong tendency to avoid losses, even if it means potentially missing out on gains.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Implications]
#v(40pt)
#only("1-")[Loss aversion can lead to 👇]
#v(20pt)
#only("2-")[- Holding on to losing investments too long, hoping to avoid realizing a loss 📉🙏]
#v(20pt)
#only("3-")[- Reluctance to take risks, even when the potential gain outweighs the potential loss 🎲😰]
#v(20pt)
#only("4-")[- Irrational decision-making, as the fear of loss can overpower rational analysis 🧠❌]
#only("1")[#voiceover("Loss aversion can have significant implications for investor behavior.")]
#only("2")[#voiceover("For instance, it can lead to investors holding on to losing investments for too long, in the hope of avoiding the realization of a loss.")]
#only("3")[#voiceover("It can also cause a reluctance to take risks, even when the potential gain outweighs the potential loss.")]
#only("4")[#voiceover("In general, loss aversion can lead to irrational decision-making, as the fear of loss can overpower rational analysis.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Loss aversion is a key concept in behavioral finance 🧠💰]
#v(20pt)
#only("2-")[- It refers to the tendency to avoid losses more than acquiring equivalent gains 📉😢 > 📈😊]
#v(20pt)
#only("3-")[- It can lead to irrational decisions and reluctance to take risks 🙅‍♂️🎲]
#v(20pt)
#only("4-")[- Understanding loss aversion is crucial for investors and financial professionals 👨‍🎓👩‍💼]
#only("1")[#voiceover("To summarize, loss aversion is a fundamental concept in behavioral finance.")]
#only("2")[#voiceover("It refers to the tendency for people to prefer avoiding losses to acquiring equivalent gains.")]
#only("3")[#voiceover("This tendency can lead to irrational decisions and a reluctance to take risks, even when it's warranted.")]
#only("4")[#voiceover("Understanding loss aversion is crucial for investors and financial professionals to make informed, rational decisions.")]
]