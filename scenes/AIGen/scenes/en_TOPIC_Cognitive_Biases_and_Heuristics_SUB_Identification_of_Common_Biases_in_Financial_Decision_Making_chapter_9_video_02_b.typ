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

#only("1")[#voiceover("That's right, great job!")]
#only("2")[#voiceover("Option a) Estimating likelihood based on statistical data is incorrect. The availability heuristic does not involve using statistical data.")]  
#only("3")[#voiceover("Option b) Overestimating likelihood based on memory is the correct answer. The availability heuristic is indeed the tendency to overestimate the likelihood of events based on their availability in memory.")]
#only("4")[#voiceover("Option c) Ignoring memorable events is also incorrect. The availability heuristic actually involves overemphasizing memorable events, not ignoring them.")]
#only("5")[#voiceover("And option d) None of the above is incorrect, because option b) is the correct answer.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Explanation]
#v(40pt)  
#only("1-")[The availability heuristic is a mental shortcut that relies on immediate examples that come to a person's mind when evaluating a specific topic, concept, method or decision. 🧠]
#v(20pt)
#only("2-")[Key points: ]
#v(10pt)
#only("3-")[- Estimating likelihood based on ease of recall 📖]
#v(10pt)  
#only("4-")[- Memorable events seem more probable ⭐]
#v(10pt)
#only("5-")[- Can lead to biases and errors in judgment ⚠]

#only("1")[#voiceover("The availability heuristic is a mental shortcut that relies on immediate examples that come to a person's mind when evaluating a specific topic, concept, method or decision.")]
#only("2")[#voiceover("Here are the key points to remember:")]  
#only("3")[#voiceover("First, people estimate the likelihood of an event based on how easily examples come to mind, rather than on actual statistical probability.")]
#only("4")[#voiceover("Second, events that are more memorable, vivid, or emotionally charged seem more probable than they really are.")]
#only("5")[#voiceover("Finally, while heuristics can be useful, the availability heuristic can lead to systematic biases and errors in judgment and decision-making.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[After seeing several news reports about car thefts, you might start to believe that such crimes are more common than they are. 🚗�robber]
#v(20pt)  
#only("2-")[The availability of vivid examples in your memory makes car theft seem more likely. 🧠💭]
#v(20pt)
#only("3-")[However, the actual probability hasn't changed, only your perception of it. 📊🔍]

#only("1")[#voiceover("For example, after seeing several news reports about car thefts, you might start to believe that such crimes are more common than they actually are.")]
#only("2")[#voiceover("The availability of these vivid examples in your memory makes car theft seem more likely, even if the actual frequency hasn't increased.")]
#only("3")[#voiceover("In reality, the probability of car theft hasn't changed, only your perception of it due to the availability heuristic.")]  
]

#slide()[  
#text(size: 30pt, weight: "bold")[Recap]
#v(40pt)
#only("1-")[- Availability heuristic: estimating likelihood based on ease of recall 🧠]
#v(20pt)
#only("2-")[- Memorable events seem more probable ⭐]  
#v(20pt)
#only("3-")[- Can lead to biases and errors in judgment ⚠]
#v(20pt)  
#only("4-")[- Be aware of this cognitive bias in decision-making 🎯]

#only("1")[#voiceover("To recap, the availability heuristic is a cognitive shortcut where we estimate the likelihood of an event based on how easily examples come to mind.")]
#only("2")[#voiceover("Events that are more memorable or emotionally charged seem more probable than they really are.")]
#only("3")[#voiceover("This heuristic can lead to biases and errors in judgment and decision-making.")]
#only("4")[#voiceover("It's important to be aware of the availability heuristic and to try to base decisions on objective data when possible, rather than just the most salient examples in our memory.")]
]