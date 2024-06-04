#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Great Job! 🎉]
#v(40pt)
How can the availability heuristic affect financial decisions?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect. 
#only("-1")[a) It leads to accurate risk assessment]#only("2-")[#text(fill:red)[a) It leads to accurate risk assessment]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) It leads to overestimating unlikely events]#only("3-")[#text(fill:green)[b) It leads to overestimating unlikely events]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) It has no effect]#only("4-")[#text(fill:red)[c) It has no effect]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) It improves rationality]#only("5-")[#text(fill:red)[d) It improves rationality]]
#only("1")[#voiceover("That's right, you chose the correct answer! Let's see why.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Availability Heuristic]
#v(40pt)
#only("1-")[- Mental shortcut 🧠]
#v(20pt)
#only("2-")[- Relies on immediate examples 📝]
#v(20pt)
#only("3-")[- Overestimates likelihood of memorable events 📈]
#v(20pt)
#only("4-")[- Can lead to biased decisions 🚫]

#only("1")[#voiceover("The availability heuristic is a mental shortcut that relies on immediate examples that come to mind.")]
#only("2")[#voiceover("When making a decision, we often rely on information that's readily available in our memory, rather than examining other alternatives or procedures.")]
#only("3")[#voiceover("This can lead us to overestimate the likelihood of events that are more memorable, even if they are actually uncommon.")]
#only("4")[#voiceover("In financial decision-making, this bias can lead to inaccurate judgments and biased decisions.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[- Vivid, recent stock market crash 📉]
#v(20pt)
#only("2-")[- Overestimate likelihood of future crash 😨]
#v(20pt)
#only("3-")[- Make overly cautious investment decisions 🔒]
#v(20pt)
#only("4-")[- Despite actual probability being low 📊]

#only("1")[#voiceover("For instance, if there has been a vivid, well-publicized recent stock market crash, that event will be highly available in memory.")]
#only("2")[#voiceover("Investors might then overestimate the likelihood of a future crash occurring.")]
#only("3")[#voiceover("This could lead them to make overly cautious investment decisions, perhaps avoiding the stock market altogether.")]
#only("4")[#voiceover("This would be an overreaction if the actual probability of another crash is quite low based on a broader analysis of market conditions.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap]
#v(40pt)
#only("1-")[- Availability heuristic: mental shortcut 🧠]
#v(20pt)
#only("2-")[- Overestimates likelihood of memorable events 📈]
#v(20pt)
#only("3-")[- Can lead to biased financial decisions 🚫💰]
#v(20pt)
#only("4-")[- Important to be aware of this bias 👀]

#only("1")[#voiceover("So in summary, the availability heuristic is a mental shortcut that relies on immediate examples that come to mind.")]
#only("2")[#voiceover("It can cause us to overestimate the likelihood of events that are more memorable, even if they are actually uncommon.")]
#only("3")[#voiceover("In financial decision-making, this can lead to biased, inaccurate judgments.")]
#only("4")[#voiceover("It's important to be aware of this cognitive bias and to try to base financial decisions on a careful analysis of all relevant information, not just what's most readily available in memory.")]
]