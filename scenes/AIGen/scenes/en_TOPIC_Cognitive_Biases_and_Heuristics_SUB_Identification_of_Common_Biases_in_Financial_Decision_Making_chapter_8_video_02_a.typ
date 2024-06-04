#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hindsight Bias]
#v(40pt)
What is hindsight bias?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect. 
#only("-1")[a) Predicting future events accurately]#only("2-")[#text(fill:red)[a) Predicting future events accurately]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Seeing past events as predictable]#only("3-")[#text(fill:green)[b) Seeing past events as predictable]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) Ignoring past events]#only("4-")[#text(fill:red)[c) Ignoring past events]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) None of the above]#only("5-")[#text(fill:red)[d) None of the above]]
#only("1")[#voiceover("Not quite, but no worries. Let's review the correct solution.")]
#only("2")[#voiceover("Option a) Predicting future events accurately is incorrect. Hindsight bias is about perception of past events, not predicting future ones.")]
#only("3")[#voiceover("Option b) Seeing past events as predictable is the correct answer. Hindsight bias makes us believe that we 'knew it all along', even if the event was actually difficult to predict beforehand.")]
#only("4")[#voiceover("Option c) Ignoring past events is also incorrect. Hindsight bias doesn't ignore past events, but rather distorts our memory of them.")]
#only("5")[#voiceover("And d) None of the above is incorrect, because option b) correctly defines hindsight bias.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Explanation]
#v(40pt)
#only("1-")[Hindsight bias is the tendency to see events as having been predictable after they have already occurred. 🔮]
#v(20pt)
#only("2-")[It's a cognitive bias that leads us to believe that we knew the outcome of an event before it happened. 🧠]
#v(20pt)
#only("3-")[For example, after an election, people might say the outcome was obvious, even if polls showed a close race beforehand. 🗳️]
#v(20pt)
#only("4-")[Hindsight bias can make us overconfident in our ability to predict future events based on our distorted memory of past ones. ⚠️]

#only("1")[#voiceover("Hindsight bias is the tendency to see events as having been predictable after they have already occurred. It's like looking into a crystal ball after the fact.")]
#only("2")[#voiceover("It's a cognitive bias that leads us to believe that we knew the outcome of an event before it happened, even if we didn't.")]
#only("3")[#voiceover("For example, after an election, people might say the outcome was obvious, even if polls showed a close race beforehand. Hindsight bias makes the result seem inevitable.")]
#only("4")[#voiceover("Hindsight bias can make us overconfident in our ability to predict future events based on our distorted memory of past ones. It's important to be aware of this bias to avoid its pitfalls in decision-making.")]
]