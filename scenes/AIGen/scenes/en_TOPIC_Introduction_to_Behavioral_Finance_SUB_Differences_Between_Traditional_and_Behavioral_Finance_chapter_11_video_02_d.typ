#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Anchoring Bias]
#v(40pt)
#only("1-")[What does anchoring bias occur when individuals rely too heavily on?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) past experiences]#only("2-")[#text(fill:red)[a) past experiences]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) emotions]#only("3-")[#text(fill:red)[b) emotions]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) an initial piece of information]#only("4-")[#text(fill:green)[c) an initial piece of information]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) market trends]#only("5-")[#text(fill:red)[d) market trends]]
#v(40pt)

#only("1")[#voiceover("Not quite, but don't worry. Here's the correct solution.")]
// Very briefly talk about c and why it is correct
#only("2")[#voiceover("c) Anchoring bias does indeed occur when individuals rely too heavily on an initial piece of information, known as the anchor.")]
// Very briefly talk about a and why it is incorrect 
#only("3")[#voiceover("a) Past experiences is incorrect. While past experiences can influence decisions, anchoring bias specifically refers to relying too much on an initial piece of information.")]
// Very briefly talk about b and why it is incorrect
#only("4")[#voiceover("b) Emotions is also incorrect. Emotions can affect decision making, but anchoring bias is about the influence of an initial piece of information, not emotions.")]
// Very briefly talk about d and why it is incorrect  
#only("5")[#voiceover("And d) Market trends is incorrect as well. Market trends are patterns in market behavior, not an initial piece of information that anchors subsequent judgments.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Anchoring Bias Explained]
#v(40pt)  
#only("1-")[- 🧠 Cognitive bias]
#only("2-")[- 🎣 Over-reliance on the first piece of information encountered (the "anchor")]
#only("3-")[- 🤔 Anchor influences subsequent decisions and estimates]
#only("4-")[- 📊 Can lead to inaccurate judgments in financial decision-making]
  
#only("1")[#voiceover("Anchoring bias is a cognitive bias that affects our decision making.")]
#only("2")[#voiceover("It involves placing too much importance on the first piece of information we receive about a topic. This first piece of information is known as the anchor.")]
#only("3")[#voiceover("The anchor then influences our thinking and decision making, even when we encounter new, more relevant information.")]  
#only("4")[#voiceover("In financial decision making, anchoring bias can lead to inaccurate estimates and poor judgments, as we may rely too heavily on initial, potentially irrelevant information.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example of Anchoring Bias]
#v(40pt)
#only("1-")[- 🏠 Estimating the value of a house]
#only("2-")[- 💰 Initial asking price: \$200,000 (the anchor)]
#only("3-")[- 🔍 Even after learning more about the house, the \$200,000 anchor influences the estimate]
#only("4-")[- 🧮 Leading to an estimate closer to \$200,000, despite the house's true value]

#only("1")[#voiceover("Let's consider an example. Suppose you're trying to estimate the value of a house.")]  
#only("2")[#voiceover("The initial asking price you see is \$200,000. This becomes your anchor.")]
#only("3")[#voiceover("Even after you learn more about the house, such as its condition, location, and market trends, the \$200,000 anchor sticks in your mind and influences your estimate.")]
#only("4")[#voiceover("As a result, your final estimate of the house's value may be closer to \$200,000, even if the true value based on all the information is significantly different.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Avoiding Anchoring Bias]
#v(40pt)  
#only("1-")[- 🎯 Be aware of the potential for anchoring bias]
#only("2-")[- ℹ️ Gather a wide range of information before making decisions]
#only("3-")[- 🤨 Critically evaluate the relevance and accuracy of the anchor]
#only("4-")[- 🧩 Consider alternative perspectives and estimates]

#only("1")[#voiceover("To avoid anchoring bias, the first step is being aware that it can happen.")]
#only("2")[#voiceover("When making a decision, try to gather a wide range of information from diverse sources before settling on a judgment.")]  
#only("3")[#voiceover("Critically evaluate whether the initial information - the anchor - is truly relevant and accurate for the decision at hand.")]
#only("4")[#voiceover("And consider alternative perspectives and estimates, rather than getting fixated on the anchor. By taking these steps, you can mitigate the impact of anchoring bias on your financial decisions.")]
]