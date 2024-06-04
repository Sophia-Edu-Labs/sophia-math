#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Representativeness Heuristic]
#v(40pt)
How can the representativeness heuristic affect financial decisions?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) It leads to accurate probability assessment]#only("2-")[#text(fill:red)[a) It leads to accurate probability assessment]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) It leads to ignoring base rates]#only("3-")[#text(fill:green)[b) It leads to ignoring base rates]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) It has no effect]#only("4-")[#text(fill:red)[c) It has no effect]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) It improves rationality]#only("5-")[#text(fill:red)[d) It improves rationality]]

#only("1")[#voiceover("Not quite. Let's take a look at the correct solution.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[The representativeness heuristic is the tendency to judge the probability of an event by how much it resembles other events. 🧠]
#v(20pt)
#only("2-")[This can lead to ignoring important statistical information like base rates. 📊]
#v(20pt)
#only("3-")[For example, judging a company as successful because it resembles previously successful companies, while ignoring the overall success rate in the industry. 📈]
#v(20pt)
#only("4-")[This can result in overestimating the likelihood of success and making poor investment decisions. ❌]

#only("1")[#voiceover("The representativeness heuristic is a mental shortcut where we judge the probability of an event based on how similar it is to our existing prototype of such an event.")]
#only("2")[#voiceover("In doing so, we often neglect important base rate information, which is the actual frequency of an event.")]
#only("3")[#voiceover("For instance, an investor might judge a startup as likely to succeed because it shares characteristics with previously successful startups, while ignoring the fact that most startups fail.")]
#only("4")[#voiceover("This can lead to overestimating the probability of success and consequently to suboptimal investment decisions.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Representativeness heuristic: judging probability by resemblance 🎭]
#v(20pt)
#only("2-")[- Leads to neglecting base rates 🙈]
#v(20pt)
#only("3-")[- Can result in overestimating likelihood 📈]
#v(20pt)
#only("4-")[- Potential for poor financial decisions ❌💰]

#only("1")[#voiceover("To recap, the representativeness heuristic is about judging probability by how representative or similar an event is to our stereotypes.")]
#only("2")[#voiceover("This often leads us to ignore important base rate information.")]
#only("3")[#voiceover("As a result, we may overestimate the likelihood of certain outcomes.")]
#only("4")[#voiceover("In the context of financial decisions, this can lead to inaccurate judgments and suboptimal choices. So it's crucial to be aware of this bias and to base decisions on objective data where possible.")]
]