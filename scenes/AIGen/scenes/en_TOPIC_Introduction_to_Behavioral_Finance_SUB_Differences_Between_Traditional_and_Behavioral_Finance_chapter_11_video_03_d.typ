#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Anchoring Bias]
#v(40pt)
#only("1-")[What can anchoring bias lead to?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) more accurate decisions]#only("2-")[#text(fill:red)[a) more accurate decisions]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) better investment strategies]#only("3-")[#text(fill:red)[b) better investment strategies]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) overestimating or underestimating values]#only("4-")[#text(fill:green)[c) overestimating or underestimating values]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) reduced risk]#only("5-")[#text(fill:red)[d) reduced risk]]
#v(40pt)

#only("1")[#voiceover("Not quite. Let's take a look at the correct solution.")]
// Very briefly Talk about c and why it is correct
#only("4")[#voiceover("c) Overestimating or underestimating values is indeed what anchoring bias can lead to. Anchoring bias occurs when individuals rely too heavily on an initial piece of information, the 'anchor', when making decisions. This can cause them to overestimate or underestimate values related to that anchor.")]
// Very briefly Talk about a and why it is incorrect
#only("2")[#voiceover("a) More accurate decisions is incorrect. In fact, anchoring bias can lead to less accurate decisions because it causes people to rely too heavily on a single piece of information.")]
// Very briefly Talk about b and why it is incorrect
#only("3")[#voiceover("b) Better investment strategies is also incorrect. Anchoring bias can actually lead to worse investment strategies if investors anchor their decisions on irrelevant or misleading information.")]
// Very briefly Talk about d and why it is incorrect
#only("5")[#voiceover("And d) Reduced risk is incorrect as well. Anchoring bias doesn't necessarily reduce risk. It can actually increase risk if it leads to decisions based on incomplete or inaccurate information.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example of Anchoring Bias]
#v(40pt)
#only("1-")[Consider this scenario:]
#v(20pt)
#only("2-")[- 🏡 The asking price for a house is \$200,000.]
#only("3-")[- 🤔 This price becomes the "anchor" in the buyer's mind.]
#only("4-")[- 💰 Even if the house is worth less, the buyer may overestimate its value due to the anchor.]
#only("5-")[- 📈 This can lead to overpaying for the house.]

#only("1")[#voiceover("Let's look at an example to illustrate how anchoring bias can lead to overestimating or underestimating values.")]
#only("2")[#voiceover("Suppose the asking price for a house is \$200,000.")]
#only("3")[#voiceover("This price can become an 'anchor' in the mind of a potential buyer.")]
#only("4")[#voiceover("Even if the actual value of the house is lower, the buyer may overestimate its worth because they are anchored to the asking price.")]
#only("5")[#voiceover("This can lead to the buyer overpaying for the house, demonstrating how anchoring bias can cause overestimation of value.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap]
#v(40pt)
#only("1-")[- Anchoring bias: relying too heavily on an initial piece of information 🧩]
#v(20pt)
#only("2-")[- Can lead to overestimating or underestimating values 📈📉]
#v(20pt)
#only("3-")[- Example: house asking price as an anchor 🏡]
#v(20pt)
#only("4-")[- Be aware of anchors when making financial decisions 🧠💰]

#only("1")[#voiceover("To recap, anchoring bias is the tendency to rely too heavily on an initial piece of information when making decisions.")]
#only("2")[#voiceover("This bias can lead to overestimating or underestimating values, as people get 'anchored' to that initial information.")]
#only("3")[#voiceover("We saw an example where a house's asking price can serve as an anchor, potentially leading a buyer to overestimate the house's value.")]
#only("4")[#voiceover("It's important to be aware of potential anchors when making financial decisions, so you can make more objective and accurate assessments of value.")]
]