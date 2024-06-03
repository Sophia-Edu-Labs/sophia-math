#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Anchoring Bias Recap 🧠]

#v(40pt)

#only("1-")[- Relying too heavily on an initial piece of information]
#only("1")[#voiceover("Anchoring bias occurs when individuals rely too heavily on an initial piece of information, known as the anchor, when making decisions.")]

#v(20pt)

#only("2-")[- Can lead to overestimating or underestimating values 📈📉]
#only("2")[#voiceover("This bias can lead to overestimating or underestimating values, as the anchor serves as a reference point that influences subsequent judgments.")]

#v(20pt)

#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```python
import matplotlib.pyplot as plt
import numpy as np

# Create the data
labels = ['Actual Value', 'Anchored Estimate']
actual_value = 100
anchored_estimate = 150

# Create the bar graph
fig, ax = plt.subplots()
bar_positions = [0, 1]
bar_heights = [actual_value, anchored_estimate]
bar_labels = [str(actual_value), str(anchored_estimate)]

bars = ax.bar(bar_positions, bar_heights, align='center', alpha=0.5)
bars[0].set_color('g')
bars[1].set_color('r')

# Add labels and title
plt.xticks(bar_positions, labels)
ax.set_ylabel('Value')
ax.set_title('Anchoring Bias Example')

# Add value labels on top of bars
for i in range(len(bars)):
    height = bars[i].get_height()
    ax.annotate(bar_labels[i],
                xy=(bars[i].get_x() + bars[i].get_width() / 2, height),
                xytext=(0, 3),  # 3 points vertical offset
                textcoords="offset points",
                ha='center', va='bottom')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
]
#only("3")[#voiceover("For example, if the actual value of an item is $100, but an individual is anchored to an initial estimate of $150, their final estimate is likely to be pulled towards the anchor, resulting in an overestimation.")]

#v(20pt)

#only("4-")[- Anchoring bias can affect various types of decisions 🤔💭]
#only("4")[#voiceover("Anchoring bias can affect various types of decisions, including financial estimates, negotiations, and judgments of value or probability.")]

#v(20pt)

#only("5-")[- Being aware of anchoring bias can help mitigate its effects 🎯]
#only("5")[#voiceover("Being aware of anchoring bias and actively seeking out additional information can help individuals make more objective and accurate decisions, mitigating the effects of this cognitive bias.")]

]