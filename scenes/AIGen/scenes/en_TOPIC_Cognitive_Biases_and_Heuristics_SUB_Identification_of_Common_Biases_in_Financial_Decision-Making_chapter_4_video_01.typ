#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Anchoring Bias 🧠⚓]
#v(40pt)
#only("1-")[- Relying too heavily on the first piece of information]
#v(20pt)
#only("2-")[- Example: Estimating the price of a house 🏠💰]
#v(20pt)
#only("3-")[- Anchor: Listing price of \$200,000]
#v(20pt)
#only("4-")[- Estimates influenced by the anchor, even if irrelevant]
#only("1")[
#voiceover("Anchoring bias is a cognitive bias where people rely too heavily on the first piece of information they encounter when making decisions or estimates.")
]
#only("2")[
#voiceover("For example, let's say you're trying to estimate the fair market value of a house.")
]
#only("3")[
#voiceover("If the listing price is $200,000, this number can act as an anchor.")
]
#only("4")[
#voiceover("Your subsequent estimates of the house's value may be influenced by this initial price, even if it's not an accurate reflection of the home's worth.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Effects of Anchoring Bias 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

actual_value = 180000
anchor_value = 200000

estimates = np.random.normal(loc=(actual_value+anchor_value)/2, scale=10000, size=100)

plt.figure(figsize=(8, 6))
plt.hist(estimates, bins=20, alpha=0.5, color='skyblue', edgecolor='black')
plt.axvline(actual_value, color='green', linestyle='dashed', linewidth=2, label='Actual Value')
plt.axvline(anchor_value, color='red', linestyle='dashed', linewidth=2, label='Anchor Value')
plt.xlabel('Estimated Value ($)')
plt.ylabel('Frequency')
plt.title('Distribution of Estimates')
plt.legend()
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("This graph shows how estimates can be skewed towards the anchor value. The green line represents the actual value of the house, while the red line is the anchor. As you can see, the estimates, shown by the blue bars, tend to cluster around a point between the actual value and the anchor.")
]
]


No corrections are needed.]

#slide()[
#text(size: 30pt, weight: "bold")[Overcoming Anchoring Bias 🚀]
#v(40pt)
#only("1-")[- Be aware of potential anchors 🎯]
#v(20pt)
#only("2-")[- Seek out additional information 📚]
#v(20pt)
#only("3-")[- Consider the problem from different perspectives 🔍]
#v(20pt)
#only("4-")[- Make decisions based on objective data 📊]
#only("1")[
#voiceover("To overcome anchoring bias, the first step is to be aware of potential anchors that may influence your judgment.")
]
#only("2")[
#voiceover("Seek out additional information from various sources to get a more comprehensive view.")
]
#only("3")[
#voiceover("Try to consider the problem from different perspectives, and don't rely solely on your initial estimate.")
]
#only("4")[
#voiceover("Whenever possible, base your decisions on objective data rather than subjective impressions that may be influenced by anchors.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Anchoring bias: Over-reliance on first information 🧠⚓]
#v(20pt)
#only("2-")[- Can lead to skewed estimates and decisions 📊]
#v(20pt)
#only("3-")[- Overcome by awareness, diverse info, and objectivity 🎯📚]
#only("1")[
#voiceover("In summary, anchoring bias is the tendency to rely too heavily on the first piece of information encountered.")
]
#only("2")[
#voiceover("This can lead to estimates and decisions that are skewed towards the anchor, even when it's not relevant or accurate.")
]
#only("3")[
#voiceover("To mitigate anchoring bias, be aware of potential anchors, seek out diverse information, consider multiple perspectives, and strive for objectivity in your decision-making.")
]
]