#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Cognitive Biases]
#v(40pt)
How do cognitive biases affect financial decisions? 
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) They make decisions more accurate]#only("2-")[#text(fill:red)[a) They make decisions more accurate]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) They cause systematic errors]#only("3-")[#text(fill:green)[b) They cause systematic errors]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) They have no effect]#only("4-")[#text(fill:red)[c) They have no effect]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) They improve rationality]#only("5-")[#text(fill:red)[d) They improve rationality]]

#only("1")[#voiceover("Great job! You've chosen the correct answer. Let's understand why.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Understanding Cognitive Biases]
#v(40pt)
#only("1-")[Cognitive biases are 🧠 systematic patterns of deviation from norm or rationality in judgment.]
#v(20pt)
#only("2-")[They lead to perceptual distortion, inaccurate judgment, illogical interpretation. ❌]
#v(20pt) 
#only("3-")[In financial decisions, they cause errors like: 💸]
#v(10pt)
#only("4-")[- Overconfidence bias: Overestimating one's abilities, leading to excessive risk-taking.]

#only("1")[#voiceover("Cognitive biases are systematic patterns of deviation from norm or rationality in judgment.")]
#only("2")[#voiceover("They can lead to perceptual distortion, inaccurate judgment, and illogical interpretation.")]
#only("3")[#voiceover("In the context of financial decisions, cognitive biases can cause various systematic errors.")]
#only("4")[#voiceover("For example, overconfidence bias is when individuals overestimate their own abilities, leading to excessive risk-taking in financial decisions.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Understanding Cognitive Biases (cont.)]
#v(40pt)
#only("1-")[In financial decisions, they cause errors like: 💸]
#v(10pt)
#only("2-")[- Confirmation bias: Seeking information that confirms preconceptions, ignoring contradictory information.]
#v(10pt)
#only("3-")[- Loss aversion: Preferring avoiding losses over acquiring equivalent gains, leading to risk-averse behavior.]

#only("1")[#voiceover("In the context of financial decisions, cognitive biases can cause various systematic errors.")]
#only("2")[#voiceover("Confirmation bias is the tendency to search for, interpret, and remember information that confirms one's preconceptions, while giving less attention to information that contradicts it.")]
#only("3")[#voiceover("Loss aversion is the tendency to prefer avoiding losses rather than acquiring equivalent gains, leading to risk-averse behavior in financial decisions.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Impact on Financial Decisions]
#v(40pt)
#only("1-")[Cognitive biases can lead to: 📉]
#v(20pt)
#only("2-")[- Mispricing of assets]
#v(10pt)
#only("3-")[- Suboptimal investment strategies]
#v(10pt)
#only("4-")[- Poor risk management]
#v(10pt)
#only("5-")[- Irrational market behavior]
#v(40pt)
#only("6-")[Therefore, cognitive biases generally cause #text(weight: "bold")[systematic errors] in financial decision-making. ❌]

#only("1")[#voiceover("The impact of cognitive biases on financial decisions can be significant.")]
#only("2")[#voiceover("They can lead to mispricing of assets, where the value of financial assets is incorrectly estimated.")]
#only("3")[#voiceover("Cognitive biases can also result in suboptimal investment strategies, where investors make decisions that are not in their best long-term interests.")]
#only("4")[#voiceover("Poor risk management is another consequence, where the risks associated with financial decisions are not properly evaluated or managed.")]
#only("5")[#voiceover("At a market level, cognitive biases can contribute to irrational market behavior, such as bubbles and crashes.")]
#only("6")[#voiceover("In summary, cognitive biases generally cause systematic errors in financial decision-making, rather than making decisions more accurate, having no effect, or improving rationality.")]
]