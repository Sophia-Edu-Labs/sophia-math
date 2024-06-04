#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Anchoring Bias]
#v(40pt)
What is anchoring bias?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) Relying on multiple sources of information]#only("2-")[#text(fill:red)[a) Relying on multiple sources of information]] 
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Relying too heavily on the first piece of information]#only("3-")[#text(fill:green)[b) Relying too heavily on the first piece of information]]
#v(10pt) 
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Ignoring initial information]#only("4-")[#text(fill:red)[c) Ignoring initial information]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.  
#only("-4")[d) None of the above]#only("5-")[#text(fill:red)[d) None of the above]]

#only("1")[#voiceover("That's not quite right. Let's review the correct solution.")]
#only("2")[#voiceover("Option a) Relying on multiple sources of information is incorrect. Anchoring bias is not about relying on multiple sources.")]  
#only("3")[#voiceover("Option b) Relying too heavily on the first piece of information is the correct answer. This is exactly what anchoring bias is - giving too much importance to the initial information received.")]
#only("4")[#voiceover("Option c) Ignoring initial information is also incorrect. Anchoring bias is the opposite - focusing too much on the initial information, not ignoring it.")]
#only("5")[#voiceover("Finally, option d) None of the above is incorrect, because option b correctly defines anchoring bias.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Anchoring Bias Explained]
#v(40pt)  
#only("1-")[🧠 A cognitive bias that causes us to rely too heavily on the first piece of information we receive]
#v(20pt)
#only("2-")[🎣 The initial information acts as an "anchor" that influences subsequent judgments and decisions]
#v(20pt)  
#only("3-")[💰 Can lead to biased financial decisions, such as in negotiations or investments]
  
#only("1")[#voiceover("Anchoring bias is a cognitive bias that causes individuals to rely too heavily on the first piece of information they receive about a topic.")]
#only("2")[#voiceover("This initial piece of information acts as an 'anchor' and influences subsequent thoughts and judgments, even when more relevant information is presented later.")]
#only("3")[#voiceover("In financial decision-making, anchoring bias can lead to biased judgments. For example, in a negotiation, the first price offered can become the anchor and affect the rest of the negotiation. Or in investing, an investor might anchor to the initial price they paid for a stock, influencing their decisions to hold or sell.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example of Anchoring Bias]
#v(40pt)
#only("1-")[Imagine you're buying a used car 🚗]
#v(20pt)
#only("2-")[The seller initially offers the car for $10,000 💰]  
#v(20pt)
#only("3-")[Even if this price is high, it sets an "anchor" in your mind 🧠]
#v(20pt)  
#only("4-")[Subsequent negotiations are influenced by this initial anchor price 📈]
#v(20pt)
#only("5-")[You might end up paying more than the car is worth due to anchoring bias ⚓]

#only("1")[#voiceover("Let's consider an example to illustrate anchoring bias.")]  
#only("2")[#voiceover("Suppose you're looking to buy a used car, and the seller's initial offer is $10,000.")]
#only("3")[#voiceover("Even if this price is higher than the car's true value, it sets an 'anchor' in your mind.")]
#only("4")[#voiceover("As you negotiate, this initial price influences your perception of subsequent offers. You might feel like you're getting a good deal if the seller lowers the price to $9,500, even if the car is actually worth much less.")]  
#only("5")[#voiceover("Due to anchoring bias, you might end up paying more for the car than it's actually worth, because your judgments were anchored to that initial high price.")]
]


#slide()[  
#text(size: 30pt, weight: "bold")[Mitigating Anchoring Bias]
#v(40pt)
#only("1-")[🎯 Be aware of the bias and consciously try to avoid it]
#v(20pt)  
#only("2-")[🔍 Gather information from multiple sources to avoid relying on a single anchor]
#v(20pt)
#only("3-")[🧮 Do your own research and calculations to determine fair values]
#v(20pt)  
#only("4-")[🤔 Consider alternative perspectives and question your initial assumptions]

#only("1")[#voiceover("To mitigate anchoring bias, the first step is being aware that it exists and consciously trying to avoid it when making decisions.")]
#only("2")[#voiceover("Gather information from multiple sources rather than relying on a single piece of initial information. This can help provide a more balanced perspective.")]  
#only("3")[#voiceover("Do your own research and calculations to determine what a fair value or price would be, rather than being unduly influenced by an initial anchor.")]
#only("4")[#voiceover("Actively consider alternative viewpoints and question your own initial assumptions. This can help counteract the anchoring effect and lead to more objective, rational decisions.")]
]