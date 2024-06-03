#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Loss Aversion]
#v(40pt)
#only("1-")[Loss aversion refers to the tendency to...]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect. 
#only("-1")[a) prefer gains over losses]#only("2-")[#text(fill:red)[a) prefer gains over losses]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) avoid losses more than acquiring gains]#only("3-")[#text(fill:green)[b) avoid losses more than acquiring gains]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) take more risks]#only("4-")[#text(fill:red)[c) take more risks]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) ignore losses]#only("5-")[#text(fill:red)[d) ignore losses]]
#only("1")[#voiceover("Not quite, but don't worry! Let's look at the correct solution.")]
#only("2")[#voiceover("Option a) is incorrect. Preferring gains over losses is not the definition of loss aversion. In fact, it's quite the opposite.")]
#only("3")[#voiceover("Option b) is the correct answer. Loss aversion indeed refers to the tendency to avoid losses more than acquiring equivalent gains.")]
#only("4")[#voiceover("Option c) is incorrect. Taking more risks is not related to loss aversion. In fact, loss aversion often leads to risk-averse behavior.")]
#only("5")[#voiceover("Option d) is also incorrect. Ignoring losses is the opposite of loss aversion, which emphasizes the importance of avoiding losses.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Explanation]
#v(40pt)
#only("1-")[Loss aversion is a key concept in behavioral finance. 🧠💰]
#v(20pt)
#only("2-")[- People tend to strongly prefer avoiding losses to acquiring gains.]
#v(20pt)
#only("3-")[- The pain of losing is psychologically about twice as powerful as the pleasure of gaining. 📉😢 > 📈😊]
#v(20pt)
#only("4-")[- This leads to risk-averse behavior when people evaluate outcomes. 🎲❌]

#only("1")[#voiceover("Let's dig a bit deeper into the concept of loss aversion and why option b) is the correct answer.")]
#only("2")[#voiceover("The key idea is that people have a strong tendency to prefer avoiding losses to acquiring equivalent gains.")]
#only("3")[#voiceover("In fact, studies suggest that the psychological pain of losing something is about twice as powerful as the pleasure of gaining the same thing.")]
#only("4")[#voiceover("Because of this, loss aversion often leads to risk-averse behavior when people evaluate potential outcomes of decisions.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Examples]
#v(40pt)
#only("1-")[Investors tend to hold on to losing stocks for too long, hoping to break even. 📉🤞]
#v(20pt)
#only("2-")[People are more motivated by the thought of not losing \$100 than the thought of gaining \$100. 💸😟 > 💸😊]
#v(20pt)
#only("3-")[In negotiations, people are often more willing to walk away from a deal to avoid a loss than to make an equivalent gain. 🤝❌ > 🤝✅]

#only("1")[#voiceover("For example, loss aversion can cause investors to hold on to losing stocks for too long, hoping to at least break even and avoid realizing the loss.")]
#only("2")[#voiceover("Another example: most people are more motivated by the thought of not losing \$100 than the thought of gaining \$100.")]
#only("3")[#voiceover("In negotiations, loss aversion can make people more willing to walk away from a deal to avoid a perceived loss than to make an equivalent gain.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Loss aversion: avoiding losses > acquiring gains 📉❌ > 📈✅]
#v(20pt)
#only("2-")[- Key concept in behavioral finance 🧠💰]
#v(20pt)
#only("3-")[- Leads to risk-averse behavior 🎲❌]
#v(20pt)
#only("4-")[- Impacts financial decisions and negotiations 💸🤝]

#only("1")[#voiceover("To sum up, loss aversion refers to the tendency to avoid losses more than acquiring equivalent gains.")]
#only("2")[#voiceover("It's a key concept in behavioral finance that challenges the assumption of rational behavior in traditional finance.")]
#only("3")[#voiceover("Loss aversion often leads to risk-averse behavior, as the fear of loss is a powerful motivator.")]
#only("4")[#voiceover("Understanding loss aversion can help explain many patterns in financial decision-making and negotiations.")]
]