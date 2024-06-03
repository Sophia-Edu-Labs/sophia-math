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
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) It leads to well-rounded decisions]#only("2-")[#text(fill:red)[a) It leads to well-rounded decisions]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) It leads to biased decisions based on initial information]#only("3-")[#text(fill:green)[b) It leads to biased decisions based on initial information]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) It has no effect]#only("4-")[#text(fill:red)[c) It has no effect]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) It improves accuracy]#only("5-")[#text(fill:red)[d) It improves accuracy]]

#only("1")[#voiceover("Not quite, but don't worry! I'll show you the correct solution.")]
#only("2")[#voiceover("Option a) is incorrect. Anchoring bias does not lead to well-rounded decisions. In fact, it causes decisions to be overly influenced by an initial piece of information.")]
#only("3")[#voiceover("Option b) is the correct answer. Anchoring bias leads to decisions that are biased towards the initial information encountered, even if that information is not particularly relevant or accurate.")]
#only("4")[#voiceover("Option c) is incorrect. Anchoring bias definitely has an effect on financial decisions, and that effect is to bias them based on initial information.")]
#only("5")[#voiceover("Finally, option d) is also incorrect. Far from improving accuracy, anchoring bias actually reduces the accuracy of financial decisions by making them overly reliant on potentially irrelevant initial information.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Anchoring Bias Explained]
#v(40pt)
#only("1-")[Definition 📖: Tendency to rely too heavily on the first piece of information encountered when making decisions.]
#v(20pt)
#only("2-")[Example 🌐: An initial price offered for a used car sets the standard for the rest of the negotiations, so that prices lower than the initial price seem more reasonable even if they are still higher than what the car is worth.]

#only("1")[#voiceover("Anchoring bias is the tendency to rely too heavily on the first piece of information encountered when making decisions.")]
#only("2")[#voiceover("For example, the initial price offered for a used car can 'anchor' the rest of the negotiations. Even if this initial price is higher than the car's true value, subsequent prices that are lower can seem more reasonable in comparison, even though they may still be overpriced.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Anchoring Bias Explained]
#v(40pt)
#only("1-")[Effect on Financial Decisions 💰: Leads to biased decisions based on initial, potentially irrelevant information.]
#v(20pt)
#only("2-")[Consequence ⚠️: Can result in suboptimal financial outcomes, such as overpaying for investments or making inaccurate valuations.]

#only("1")[#voiceover("In financial decision-making, anchoring bias can lead to decisions that are biased towards initial, potentially irrelevant information.")]
#only("2")[#voiceover("This can result in suboptimal financial outcomes. For instance, an investor might overpay for a stock if they anchor their valuation to the stock's peak price, even if that price was unjustified by the company's fundamentals. Or, a real estate buyer might make an offer that's too high because they anchored their perception of the home's value to the listing price, even if that price is inflated.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Mitigating Anchoring Bias]
#v(40pt)
#only("1-")[Awareness 🧠: Be conscious of the potential for anchoring bias in your decision-making process.]
#v(20pt)
#only("2-")[Information Gathering 🔍: Seek out a wide range of information from diverse sources to avoid overreliance on initial information.]
#v(20pt)
#only("3-")[Objective Criteria 📏: Base decisions on objective criteria and rigorous analysis rather than initial impressions.]
#v(20pt)
#only("4-")[Collaboration 🤝: Discuss decisions with others who may be less influenced by the initial information.]

#only("1")[#voiceover("To mitigate the effects of anchoring bias, the first step is awareness. Simply being conscious of the potential for this bias can help reduce its influence.")]
#only("2")[#voiceover("It's also important to gather a wide range of information from diverse sources. This can help prevent overreliance on any single piece of initial information.")]
#only("3")[#voiceover("When making decisions, try to base them on objective criteria and rigorous analysis rather than initial impressions. This can help ensure that the decision is grounded in facts and data.")]
#only("4")[#voiceover("Finally, collaborating with others who may be less influenced by the initial information can provide a valuable outside perspective and help challenge any anchoring bias.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Anchoring bias is the tendency to rely too heavily on initial information 🧱]
#v(20pt)
#only("2-")[- It can lead to biased financial decisions based on potentially irrelevant anchors 📉]
#v(20pt)
#only("3-")[- Awareness, information gathering, objective criteria, and collaboration can help mitigate anchoring bias 🛡️]
#v(20pt)
#only("4-")[- Being aware of anchoring bias can improve the quality of your financial decisions 🎯]

#only("1")[#voiceover("In summary, anchoring bias is the tendency to rely too heavily on the first piece of information encountered when making decisions.")]
#only("2")[#voiceover("In the context of financial decision-making, this can lead to biased decisions based on potentially irrelevant anchors.")]
#only("3")[#voiceover("However, by being aware of this bias, gathering a wide range of information, basing decisions on objective criteria, and collaborating with others, you can help mitigate the effects of anchoring bias.")]
#only("4")[#voiceover("By understanding and addressing anchoring bias, you can improve the quality of your financial decisions and avoid the pitfalls of overreliance on initial information.")]
]