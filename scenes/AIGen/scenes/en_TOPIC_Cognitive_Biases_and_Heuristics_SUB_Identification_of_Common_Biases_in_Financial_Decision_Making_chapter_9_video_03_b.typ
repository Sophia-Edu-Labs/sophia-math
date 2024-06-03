#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Availability Heuristic]
#v(40pt)
#only("1-")[How can the availability heuristic affect financial decisions?]
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
#v(40pt)

#only("1")[#voiceover("That's absolutely right! Great job. Let's see why that answer is correct.")]
// Very briefly Talk about a and why it is incorrect
#only("2")[#voiceover("Option a) is incorrect. The availability heuristic does not lead to accurate risk assessment. In fact, it can lead to biased judgments.")]
// Very briefly Talk about b and why it is correct
#only("3")[#voiceover("Option b) is the correct answer. The availability heuristic can indeed lead to overestimating the likelihood of events that are more easily remembered or imagined, even if they are objectively unlikely.")]
// Very briefly Talk about c and why it is incorrect
#only("4")[#voiceover("Option c) is incorrect. The availability heuristic does have an effect on decision-making, so saying it has no effect is not accurate.")]
// Very briefly Talk about d and why it is incorrect
#only("5")[#voiceover("Option d) is also incorrect. The availability heuristic does not improve rationality. It can actually lead to less rational decisions by causing people to overweight easily recalled information.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Explanation]
#v(40pt)
#only("1-")[The availability heuristic is the tendency to overestimate the likelihood of events based on their availability in memory 🧠]
#v(20pt)
#only("2-")[This can lead to biases in financial decision-making 💰]
#v(20pt)
#only("3-")[For example:]
#v(10pt)
#only("4-")[- Overestimating the probability of a stock market crash due to vivid memories of past crashes 📉]

#only("1")[#voiceover("The availability heuristic is a mental shortcut where people judge the likelihood of events by how easily examples come to mind.")]
#only("2")[#voiceover("In financial decision-making, this can lead to several biases.")]
#only("3")[#voiceover("Let's consider a couple of examples.")]
#only("4")[#voiceover("An investor might overestimate the probability of a stock market crash because dramatic crashes are more memorable than periods of steady growth.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Explanation (cont.)]
#v(40pt)
#only("1-")[- Underestimating the risk of less memorable events, like gradual economic decline 📈]
#v(20pt)
#only("2-")[The availability heuristic can cause investors to make decisions based on biased perceptions rather than objective probabilities 🎲]

#only("1")[#voiceover("On the flip side, the same investor might underestimate the risk of a gradual economic decline because it's less vivid in memory.")]
#only("2")[#voiceover("So in summary, the availability heuristic can cause investors to make judgments based on the ease of recall rather than the actual probabilities, leading to biased financial decisions.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- The availability heuristic is a cognitive bias 🧠]
#v(20pt)
#only("2-")[- It leads to overestimating the likelihood of memorable events 📈]
#v(20pt)
#only("3-")[- This can cause biases in financial decision-making 💰]
#v(20pt)
#only("4-")[- Investors should be aware of this bias and try to make decisions based on objective probabilities 🎲]

#only("1")[#voiceover("The key thing to remember is that the availability heuristic is a cognitive bias, a systematic error in thinking.")]
#only("2")[#voiceover("It causes people to overestimate the probability of events that are more easily recalled, often because they are dramatic or recent.")]
#only("3")[#voiceover("In the context of financial decisions, this can lead to biases like overreacting to market fluctuations or underestimating long-term risks.")]
#only("4")[#voiceover("As an investor, it's important to be aware of the availability heuristic and to try to base decisions on objective data and calculated probabilities rather than the vividness of memories. This can help minimize the impact of this bias on your financial choices.")]
]