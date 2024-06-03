#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Confirmation Bias]
#v(40pt)
#only("1-")[What is confirmation bias?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) Seeking information that contradicts one's beliefs]#only("2-")[#text(fill:red)[a) Seeking information that contradicts one's beliefs]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) Ignoring information]#only("3-")[#text(fill:red)[b) Ignoring information]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) Seeking information that confirms one's beliefs]#only("4-")[#text(fill:green)[c) Seeking information that confirms one's beliefs]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) None of the above]#only("5-")[#text(fill:red)[d) None of the above]]

#only("1")[#voiceover("Great job! That's the correct answer.")]
#only("2")[#voiceover("a) Seeking information that contradicts one's beliefs is incorrect. This would be the opposite of confirmation bias.")]
#only("3")[#voiceover("b) Ignoring information is also incorrect. While confirmation bias can lead to ignoring contradictory information, it's not the definition of the bias itself.")]
#only("4")[#voiceover("c) Seeking information that confirms one's beliefs is indeed the correct definition of confirmation bias. People tend to search for, interpret, favor, and recall information in a way that confirms or supports their prior beliefs or values.")]
#only("5")[#voiceover("And d) None of the above is incorrect, as we've seen that option c) correctly defines confirmation bias.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Confirmation Bias Example]
#v(40pt)
#only("1-")[🧑‍🔬 A researcher believes a hypothesis is true.]
#v(20pt)
#only("2-")[🔍 They search for evidence that supports their hypothesis.]
#v(20pt)
#only("3-")[🙈 They ignore or downplay evidence that contradicts it.]
#v(20pt)
#only("4-")[💡 This leads to a biased interpretation of data.]
#v(20pt)
#only("5-")[❌ The researcher's belief is reinforced, even if it's incorrect.]

#only("1")[#voiceover("Let's look at an example to illustrate confirmation bias.")]
#only("2")[#voiceover("Imagine a researcher who believes a certain hypothesis is true. Due to confirmation bias, they might selectively search for evidence that supports their preconceived hypothesis.")]
#only("3")[#voiceover("At the same time, they might ignore or downplay evidence that contradicts their belief.")]
#only("4")[#voiceover("This leads to a biased interpretation of the data. The researcher focuses on information that confirms what they already believe and discounts information that would challenge their hypothesis.")]
#only("5")[#voiceover("As a result, the researcher's belief is reinforced, even if the belief is actually incorrect. This is the danger of confirmation bias - it can lead us to maintain false beliefs despite evidence to the contrary.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Avoiding Confirmation Bias]
#v(40pt)
#only("1-")[🎯 Actively seek out information that challenges your beliefs.]
#v(20pt)
#only("2-")[🤝 Consider alternative explanations and hypotheses.]
#v(20pt)  
#only("3-")[📊 Interpret data as objectively as possible.]
#v(20pt)
#only("4-")[🧠 Be aware of your own biases and try to counteract them.]

#only("1")[#voiceover("To avoid confirmation bias, it's important to actively seek out information that challenges your existing beliefs.")]
#only("2")[#voiceover("Consider alternative explanations and hypotheses, even if they conflict with what you currently think.")]
#only("3")[#voiceover("When interpreting data, try to be as objective as possible. Don't just look for data that supports your view - consider all the evidence impartially.")]
#only("4")[#voiceover("Most importantly, be aware of your own biases. We all have them. By acknowledging their existence, you can consciously try to counteract them in your decision making and information processing.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap]
#v(40pt)
#only("1-")[- Confirmation bias: seeking information that confirms beliefs 🧠]
#v(20pt)
#only("2-")[- Can lead to ignoring contradictory evidence 🙈]
#v(20pt)
#only("3-")[- Actively seek challenging information and consider alternatives 🎯]
#v(20pt)
#only("4-")[- Be aware of your own biases 🧐]

#only("1")[#voiceover("To recap, confirmation bias is the tendency to seek out information that confirms our preexisting beliefs.")]
#only("2")[#voiceover("This can lead us to ignore or discount evidence that contradicts what we believe.")]
#only("3")[#voiceover("To counter this bias, we should actively seek out information that challenges our views and seriously consider alternative explanations.")]
#only("4")[#voiceover("Most importantly, we need to be aware of our own biases. By acknowledging their existence, we can work to minimize their impact on our thinking and decision making.")]
]