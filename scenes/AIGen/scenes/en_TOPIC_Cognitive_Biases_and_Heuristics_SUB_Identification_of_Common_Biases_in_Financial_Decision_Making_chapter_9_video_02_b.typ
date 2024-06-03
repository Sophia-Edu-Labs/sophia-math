#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Availability Heuristic]
#v(40pt)
What is the availability heuristic?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) Estimating likelihood based on statistical data]#only("2-")[#text(fill:red)[a) Estimating likelihood based on statistical data]] 
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Overestimating likelihood based on memory]#only("3-")[#text(fill:green)[b) Overestimating likelihood based on memory]]
#v(10pt)  
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Ignoring memorable events]#only("4-")[#text(fill:red)[c) Ignoring memorable events]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.  
#only("-4")[d) None of the above]#only("5-")[#text(fill:red)[d) None of the above]]
#v(40pt)

#only("1")[#voiceover("That's right, great job! 🎉 You correctly identified the availability heuristic.")]
#only("2")[#voiceover("Option a) is incorrect. The availability heuristic is not about using statistical data, but rather about relying on memory.")]  
#only("3")[#voiceover("Option b) is the correct answer. The availability heuristic is indeed the tendency to overestimate the likelihood of events based on their availability in memory. 🧠")]
#only("4")[#voiceover("Option c) is incorrect. The availability heuristic doesn't involve ignoring memorable events, but rather overestimating their likelihood because they are memorable.")]
#only("5")[#voiceover("And option d) is also incorrect, because one of the other options (b) is the correct definition of the availability heuristic.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Explanation]
#v(40pt)  
#only("1-")[The availability heuristic is a mental shortcut that relies on immediate examples that come to mind. 🤔]
#v(20pt)
#only("2-")[It operates on the notion that if something can be recalled, it must be important or at least more common. 📈]
#v(20pt)  
#only("3-")[However, this can lead to biases and overestimating the likelihood of events. ⚠]
#v(20pt)
#only("4-")[For example, after seeing several news reports about plane crashes, you might overestimate the probability of being in a plane crash. ✈]

#only("1")[#voiceover("The availability heuristic is a mental shortcut that relies on immediate examples that come to mind when evaluating a specific topic, concept, method or decision.")]  
#only("2")[#voiceover("It operates on the notion that if something can be recalled, it must be important, or at least more common than alternatives that are not as readily recalled.")]
#only("3")[#voiceover("However, this heuristic can lead to systematic biases and cause people to overestimate the likelihood of events that are easily recalled.")]  
#only("4")[#voiceover("For example, after seeing several news reports about plane crashes, you might overestimate the probability of being in a plane crash, even though plane crashes are quite rare.")]
]

#slide()[  
#text(size: 30pt, weight: "bold")[Key Points]
#v(40pt)
#only("1-")[- Mental shortcut relying on immediate examples 🧠]
#v(20pt)  
#only("2-")[- Assumes easily recalled = more common 📊]
#v(20pt)
#only("3-")[- Can lead to biases & overestimation ⚠]  
#v(20pt)
#only("4-")[- Affects judgment & decision-making 🤔]

#only("1")[#voiceover("To summarize, the availability heuristic is a mental shortcut that relies on immediate examples that come to mind.")]
#only("2")[#voiceover("It assumes that if something can be easily recalled, it must be more common or likely.")]  
#only("3")[#voiceover("However, this can lead to biases and cause people to overestimate the likelihood of events that are easily remembered.")]
#only("4")[#voiceover("The availability heuristic can significantly affect our judgment and decision-making, especially in areas like financial decisions. 💰 It's important to be aware of this bias and to seek out actual data when making important decisions.")]  
]