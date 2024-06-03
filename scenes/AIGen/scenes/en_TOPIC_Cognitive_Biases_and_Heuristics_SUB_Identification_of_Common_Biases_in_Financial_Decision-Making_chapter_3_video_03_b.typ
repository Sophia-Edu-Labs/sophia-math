#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Loss Aversion]
#v(40pt)
#only("1-")[How can loss aversion affect financial decisions?]
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
#v(40pt)

#only("1")[#voiceover("Great job! You selected the correct answer.")]
#only("2")[#voiceover("Option a) is incorrect. Loss aversion actually leads to risk-averse behavior, not risk-seeking behavior.")]
#only("3")[#voiceover("Option b) is the correct answer. Loss aversion does indeed lead to risk-averse behavior in financial decision-making.")]
#only("4")[#voiceover("Option c) is incorrect. Loss aversion does have an effect on financial decisions, it doesn't have no effect.")]
#only("5")[#voiceover("And option d) is also incorrect. While loss aversion is a natural human tendency, it doesn't necessarily improve decision-making. In fact, it can lead to suboptimal decisions in some cases.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Why Loss Aversion Leads to Risk-Averse Behavior]
#v(40pt)
#only("1-")[- People feel the pain of losses more than the pleasure of equivalent gains 😢 > 😊]
#v(20pt)
#only("2-")[- This leads to a tendency to avoid losses, even if it means missing out on gains 🙅‍♂️💰]
#v(20pt)
#only("3-")[- In financial decisions, this translates to avoiding risky investments 🎰❌]

#only("1")[#voiceover("The key to understanding why loss aversion leads to risk-averse behavior is that people tend to feel the pain of losses more intensely than the pleasure of equivalent gains.")]
#only("2")[#voiceover("Because of this, people have a strong tendency to avoid losses, even if it means potentially missing out on gains.")]
#only("3")[#voiceover("When it comes to financial decisions, this loss aversion translates into a reluctance to make risky investments.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Why Loss Aversion Leads to Risk-Averse Behavior]
#v(40pt)
#only("1-")[- Even if these investments have a positive expected return, the potential for loss looms larger 📉😨]
#v(20pt)
#only("2-")[- As a result, loss-averse individuals tend to make conservative, risk-averse financial choices 🏦🔒]

#only("1")[#voiceover("Even if these risky investments have a positive expected return in the long run, the potential for short-term losses looms larger in the mind of a loss-averse individual.")]
#only("2")[#voiceover("As a result, loss-averse individuals tend to gravitate towards conservative, low-risk financial choices, even if these choices may have lower expected returns over time.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example of Loss Aversion]
#v(40pt)
#only("1-")[Consider a choice between two options:]
#v(20pt)
#only("2-")[- A sure gain of \$500 💰]
#v(20pt)
#only("3-")[- A 50% chance to gain \$1,000 and a 50% chance to gain nothing 🎲]
#v(20pt)
#only("4-")[Even though the expected value of the risky option (\$500) is the same as the sure option, most people will choose the sure \$500 due to loss aversion. 🤔]
#v(20pt)
#only("5-")[The potential to gain nothing feels like a loss, and is weighted more heavily than the potential gain. 🧠⚖️]

#only("1")[#voiceover("Let's look at a classic example that demonstrates loss aversion.")]
#only("2")[#voiceover("Imagine you're faced with a choice between two options. The first option is a sure gain of 500 dollars.")]
#only("3")[#voiceover("The second option is a risky prospect with a 50 percent chance to gain 1,000 dollars and a 50 percent chance to gain nothing.")]
#only("4")[#voiceover("Even though the expected value of the risky option is 500 dollars, the same as the sure option, most people will choose the sure 500 dollars. This is due to loss aversion.")]
#only("5")[#voiceover("The potential to gain nothing in the risky option feels like a loss to our loss-averse brains, and this potential loss is weighted more heavily in our decision-making than the potential gain of 1,000 dollars.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap]
#v(40pt)
#only("1-")[- Loss aversion is the tendency to prefer avoiding losses over acquiring equivalent gains 📉😨]
#v(20pt)
#only("2-")[- It leads to risk-averse behavior in financial decision-making 🏦🔒]
#v(20pt)
#only("3-")[- People feel potential losses more intensely than potential gains 😢 > 😊]
#v(20pt)
#only("4-")[- This can lead to overly conservative financial choices 🐌💰]
#v(20pt)
#only("5-")[- Understanding loss aversion can help us make more rational decisions 🧠✅]

#only("1")[#voiceover("To recap, loss aversion is the tendency to strongly prefer avoiding losses over acquiring equivalent gains.")]
#only("2")[#voiceover("In the context of financial decision-making, loss aversion leads to risk-averse behavior.")]
#only("3")[#voiceover("This is because people feel the pain of potential losses more intensely than the pleasure of potential gains.")]
#only("4")[#voiceover("As a result, loss-averse individuals may make overly conservative financial choices, avoiding risk even when it may be beneficial in the long run.")]
#only("5")[#voiceover("By understanding the concept of loss aversion and its effects, we can try to counteract this bias in our own decision-making and strive to make more rational, balanced financial choices.")]
]