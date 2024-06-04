#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Anchoring Bias]
#v(40pt)
How can anchoring bias affect financial decisions?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect.
#only("-1")[a) It leads to well-rounded decisions]#only("2-")[#text(fill:red)[a) It leads to well-rounded decisions]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) It leads to biased decisions based on initial information]#only("3-")[#text(fill:green)[b) It leads to biased decisions based on initial information]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) It has no effect]#only("4-")[#text(fill:red)[c) It has no effect]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) It improves accuracy]#only("5-")[#text(fill:red)[d) It improves accuracy]]
#v(40pt)
#only("1")[#voiceover("That's not quite right. Let's look at the correct solution.")]
#only("2")[#voiceover("Option a) is incorrect. Anchoring bias does not lead to well-rounded decisions. In fact, it causes decisions to be biased towards the initial piece of information.")]
#only("3")[#voiceover("Option b) is correct. Anchoring bias leads to decisions that are biased towards the initial information encountered, even if that information is not particularly relevant or accurate.")]
#only("4")[#voiceover("Option c) is incorrect. Anchoring bias does have an effect on financial decisions, and that effect is to bias them based on the initial anchor.")]
#only("5")[#voiceover("Option d) is also incorrect. Anchoring bias does not improve the accuracy of decisions. Instead, it introduces a systematic bias based on the initial information.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[1) Anchoring bias is the tendency to rely too heavily on the first piece of information encountered when making decisions. 🧠]
#v(20pt)
#only("2-")[2) In financial decisions, the initial piece of information (the "anchor") can be a stock price, a past trend, an analyst's estimate, etc. 📈]
#v(20pt)
#only("3-")[3) Subsequent decisions are then biased towards this anchor, even if it's not rationally relevant. ⚓]
#only("1")[#voiceover("Let's go through the solution step by step. First, recall that anchoring bias is the tendency to rely too heavily on the first piece of information encountered when making decisions.")]
#only("2")[#voiceover("In the context of financial decisions, this initial piece of information, or 'anchor', could be things like a stock price, a past trend, or an analyst's estimate.")]
#only("3")[#voiceover("Subsequent decisions are then biased towards this anchor, even if it's not rationally relevant to the decision at hand.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[1) This leads to decisions that are systematically biased towards the initial information. 📊]
#v(20pt)
#only("2-")[2) Therefore, anchoring bias leads to biased financial decisions based on the initial information encountered. 🎯]
#only("1")[#voiceover("This leads to decisions that are systematically biased towards the initial information.")]
#only("2")[#voiceover("Therefore, the correct answer is that anchoring bias leads to biased financial decisions based on the initial information encountered.")]
]