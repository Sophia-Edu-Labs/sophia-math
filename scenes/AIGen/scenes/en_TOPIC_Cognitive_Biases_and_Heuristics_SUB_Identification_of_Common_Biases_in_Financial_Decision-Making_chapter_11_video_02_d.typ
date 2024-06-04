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
// From the start, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) Overconfidence]#only("2-")[#text(fill:green)[a) Overconfidence]]
#v(10pt) 
// From the start, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Confirmation]#only("3-")[#text(fill:green)[b) Confirmation]]
#v(10pt)
// From the start, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) Loss aversion]#only("4-")[#text(fill:green)[c) Loss aversion]]
#v(10pt)
// From the start, the option is black. From section 5 until the end it is then turned green, because it is correct.
#only("-4")[d) All of the above]#only("5-")[#text(fill:green)[d) All of the above]]

#only("1")[#voiceover("Great job! You selected the correct answer. Let's take a closer look at why d) All of the above is the right choice.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Overconfidence Bias 🙋]
#v(40pt)  
#only("1-")[- Individuals overestimate their own abilities]
#v(20pt)
#only("2-")[- Leads to excessive risk-taking in financial decisions 📈]

#only("1")[#voiceover("First, let's consider overconfidence bias. This occurs when individuals overestimate their own abilities.")]
#only("2")[#voiceover("In the context of financial decision-making, overconfidence can lead to excessive risk-taking, as people believe they have more control or knowledge than they actually do.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Confirmation Bias ✅]
#v(40pt)
#only("1-")[- Tendency to seek information that confirms preconceptions]
#v(20pt)  
#only("2-")[- Leads to ignoring contradictory information in financial decisions 🙈]

#only("1")[#voiceover("Next, let's look at confirmation bias. This is the tendency to search for, interpret, and remember information in a way that confirms one's preconceptions.")]
#only("2")[#voiceover("In financial decision-making, this can lead to ignoring information that contradicts one's beliefs, leading to potentially flawed decisions.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Loss Aversion 📉]
#v(40pt)
#only("1-")[- Preference for avoiding losses over acquiring equivalent gains]
#v(20pt)
#only("2-")[- Leads to risk-averse behavior in financial decisions 🐢]

#only("1")[#voiceover("Finally, let's consider loss aversion. This is the tendency to prefer avoiding losses to acquiring equivalent gains.")]
#only("2")[#voiceover("In the financial context, loss aversion can lead to overly risk-averse behavior, as the pain of potential losses is felt more acutely than the pleasure of potential gains.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[All of the Above 🌟]
#v(40pt)  
#only("1-")[- Overconfidence, confirmation bias, and loss aversion are all common biases]
#v(20pt)
#only("2-")[- They can systematically affect financial decision-making 📊]

#only("1")[#voiceover("In summary, overconfidence, confirmation bias, and loss aversion are all common cognitive biases.")]
#only("2")[#voiceover("Each of these biases can have a significant and systematic effect on financial decision-making, often leading to suboptimal choices. Therefore, d) All of the above is the correct answer.")]
]