#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Anchoring Bias 🧠⚓]
#v(40pt)
#only("1-")[- Cognitive bias in decision-making]
#v(20pt)
#only("2-")[- Relying too heavily on the first piece of information]
#v(20pt)
#only("3-")[- The "anchor" influences subsequent judgments]
#only("1")[
#voiceover("Anchoring bias is a cognitive bias that affects our decision-making process.")
]
#only("2")[
#voiceover("It refers to the tendency to rely too heavily on the first piece of information we encounter when making decisions or estimates.")
]
#only("3")[
#voiceover("This initial piece of information, known as the 'anchor', influences our subsequent judgments, even if it's not directly relevant or accurate.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example: Car Price 🚗💰]
#v(40pt)
#only("1-")[- Anchor: Suggested retail price of \$20,000]
#v(20pt)
#only("2-")[- Influences negotiation and perception of value]
#v(20pt)
#only("3-")[- Difficulty adjusting away from the anchor]
#only("1")[
#voiceover("Let's consider an example. Suppose you're looking to buy a used car, and the seller mentions that the suggested retail price for the car when it was new was \$20,000.")
]
#only("2")[
#voiceover("This price serves as an anchor. It can influence your negotiation strategy and your perception of the car's value, even if the car's current worth is significantly less.")
]
#only("3")[
#voiceover("You might find it difficult to adjust your estimate of a fair price too far away from this anchor, even if other factors suggest you should.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Impact on Decisions 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

anchors = ['Low Anchor', 'High Anchor']
estimates = [50, 80]

plt.figure(figsize=(6, 4))
plt.bar(anchors, estimates, color=['lightblue', 'lightgreen'], width=0.4)
plt.ylabel('Estimate')
plt.title('Impact of Anchoring on Estimates')
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Anchoring bias can significantly impact our decisions. As you can see in this graph, a low anchor leads to a lower estimate, while a high anchor leads to a higher estimate.")
]
#v(20pt)
#only("2-")[- Anchors can be arbitrary or irrelevant]
#v(20pt)
#only("3-")[- Affects various domains: pricing, negotiation, probability judgments]
#only("2")[
#voiceover("Interestingly, anchors can be quite arbitrary or even irrelevant to the decision at hand. Yet, they still influence our judgments.")
]
#only("3")[
#voiceover("Anchoring bias affects various domains, including pricing decisions, negotiations, and probability judgments.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Mitigating Anchoring Bias 🛡️]
#v(40pt)
#only("1-")[- Be aware of potential anchors]
#v(20pt)
#only("2-")[- Consider multiple perspectives and data points]
#v(20pt)
#only("3-")[- Consciously adjust away from the anchor]
#only("1")[
#voiceover("To mitigate the effects of anchoring bias, it's important to be aware of potential anchors in our decision-making process.")
]
#only("2")[
#voiceover("We should actively seek out multiple perspectives and additional data points to inform our judgments.")
]
#only("3")[
#voiceover("When we recognize an anchor, we should consciously try to adjust our estimates away from it, considering whether it's truly relevant and accurate.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Anchoring bias: Over-reliance on initial information]
#v(20pt)
#only("2-")[- Anchors influence subsequent judgments]
#v(20pt)
#only("3-")[- Be aware and seek multiple perspectives to mitigate bias]
#only("1")[
#voiceover("In summary, anchoring bias is the tendency to rely too heavily on the first piece of information we encounter.")
]
#only("2")[
#voiceover("These anchors can significantly influence our subsequent judgments and decisions, even when they're not directly relevant.")
]
#only("3")[
#voiceover("By being aware of potential anchors and actively seeking out multiple perspectives, we can work to mitigate the effects of anchoring bias in our decision-making process.")
]
]