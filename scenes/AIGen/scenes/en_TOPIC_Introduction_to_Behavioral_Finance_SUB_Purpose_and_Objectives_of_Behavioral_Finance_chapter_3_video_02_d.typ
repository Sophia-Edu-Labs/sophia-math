#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Behavioral Finance Biases]
#v(40pt)
#only("1-")[Which of the following is a common bias in Behavioral Finance?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) Overconfidence]#only("2-")[#text(fill:green)[a) Overconfidence]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) Rational decision-making]#only("3-")[#text(fill:red)[b) Rational decision-making]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Accurate predictions]#only("4-")[#text(fill:red)[c) Accurate predictions]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Efficient markets]#only("5-")[#text(fill:red)[d) Efficient markets]]
#v(40pt)

#only("1")[#voiceover("Not quite. Let's take a look at the correct solution.")]
// Very briefly Talk about a and why it is correct
#only("2")[#voiceover("a) Overconfidence is indeed a common bias in Behavioral Finance. Overconfidence refers to the tendency of individuals to overestimate their abilities, knowledge, and the precision of their information.")]
// Very briefly Talk about b and why it is incorrect
#only("3")[#voiceover("b) Rational decision-making is incorrect. In fact, Behavioral Finance challenges the traditional assumption that investors always make rational decisions.")]
// Very briefly Talk about c and why it is incorrect
#only("4")[#voiceover("c) Accurate predictions is also incorrect. Behavioral Finance recognizes that individuals are prone to biases that can lead to inaccurate predictions and suboptimal decisions.")]
// Very briefly Talk about d and why it is incorrect
#only("5")[#voiceover("And d) Efficient markets is incorrect as well. The concept of market efficiency is challenged by Behavioral Finance, which suggests that markets can be influenced by irrational behavior.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Overconfidence Bias]
#v(40pt)
#only("1-")[Overconfidence bias refers to the tendency to:]
#v(20pt)
#only("2-")[- Overestimate one's abilities 🧠]
#only("3-")[- Overestimate one's knowledge 📚]
#only("4-")[- Overestimate the precision of one's information 🎯]
#v(40pt)
#only("5-")[This can lead to:]
#v(20pt)
#only("6-")[- Excessive trading 📈]
#only("7-")[- Underestimation of risks ⚠]
#only("8-")[- Suboptimal investment decisions 📉]

#only("1")[#voiceover("Let's dive deeper into the overconfidence bias.")]
#only("2")[#voiceover("Overconfidence bias refers to the tendency of individuals to overestimate their own abilities.")]
#only("3")[#voiceover("They may also overestimate their knowledge.")]
#only("4")[#voiceover("And they may overestimate the precision of the information they have.")]
#only("5")[#voiceover("This overconfidence can lead to several issues in financial decision-making.")]
#only("6")[#voiceover("For example, overconfident investors may trade excessively, believing they can outperform the market.")]
#only("7")[#voiceover("They may also underestimate risks, thinking they have more control over outcomes than they really do.")]
#only("8")[#voiceover("As a result, overconfidence can lead to suboptimal investment decisions and potentially lower returns.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Countering Overconfidence]
#v(40pt)
#only("1-")[To mitigate the overconfidence bias, investors can:]
#v(20pt)
#only("2-")[- Seek out diverse opinions 🗣]
#only("3-")[- Be open to contradictory information 🔍]
#only("4-")[- Rely on objective data and analysis 📊]
#only("5-")[- Be aware of their own limitations 🙇]
#v(40pt)
#only("6-")[Remember: Humility is key in investing! 🔑]

#only("1")[#voiceover("So how can investors counter the overconfidence bias?")]
#only("2")[#voiceover("One strategy is to actively seek out diverse opinions. This can help challenge one's own views and assumptions.")]
#only("3")[#voiceover("It's also important to be open to information that contradicts one's beliefs. Don't dismiss data just because it doesn't fit your narrative.")]
#only("4")[#voiceover("Investors should rely on objective data and rigorous analysis when making decisions, rather than just gut feelings.")]
#only("5")[#voiceover("And perhaps most importantly, investors need to be aware of their own limitations. No one has perfect information or can predict the future with certainty.")]
#only("6")[#voiceover("In the end, a dose of humility can go a long way in making sound financial decisions. Overconfidence is a common pitfall, but one that can be managed with the right mindset and strategies.")]
]