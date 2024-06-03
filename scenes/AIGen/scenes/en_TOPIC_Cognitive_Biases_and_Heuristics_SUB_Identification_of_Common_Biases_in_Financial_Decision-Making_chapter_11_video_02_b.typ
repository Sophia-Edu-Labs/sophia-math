#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Common Biases in Financial Decision-Making]
#v(40pt)
Which of the following is a common bias in financial decision-making?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) Overconfidence]#only("2-")[#text(fill:green)[a) Overconfidence 👍]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Confirmation]#only("3-")[#text(fill:green)[b) Confirmation 👍]]
#v(10pt)  
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) Loss aversion]#only("4-")[#text(fill:green)[c) Loss aversion 👍]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned green, because it is correct.
#only("-4")[d) All of the above]#only("5-")[#text(fill:green)[d) All of the above ✅]]
#v(40pt)

#only("1")[#voiceover("That's okay! You selected an incorrect answer. Let's review the correct solution and why all of these are common biases.")]
#only("2")[#voiceover("Overconfidence bias is when individuals overestimate their own abilities, leading to excessive risk-taking in financial decisions.")]
#only("3")[#voiceover("Confirmation bias is the tendency to search for, interpret, and remember information that confirms one's preconceptions.")]  
#only("4")[#voiceover("Loss aversion is the tendency to prefer avoiding losses rather than acquiring equivalent gains.")]
#only("5")[#voiceover("So in summary, overconfidence, confirmation bias, and loss aversion are all common biases that can negatively impact financial decision-making. Being aware of these biases is the first step in avoiding their pitfalls.")]
]