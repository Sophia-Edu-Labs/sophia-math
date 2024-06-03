#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Anchoring Bias 🧠⚓]
#v(40pt)
#only("1-")[- Relying too heavily on an initial piece of information]
#v(20pt)
#only("2-")[- The "anchor" influences subsequent decisions]
#v(20pt)
#only("3-")[- Example: Estimating a product's value based on its initial price]
#only("1")[
#voiceover("Anchoring bias is a cognitive bias that occurs when individuals rely too heavily on an initial piece of information when making decisions.")
]
#only("2")[
#voiceover("This initial piece of information, known as the 'anchor,' influences subsequent decisions and judgments, even when it may not be entirely relevant or accurate.")
]
#only("3")[
#voiceover("For example, when estimating the value of a product, people often anchor their estimates based on the product's initial price, even if that price doesn't reflect the product's true value.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Anchoring in Action 🎯]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Anchor values
anchors = [50, 100, 150]

# Estimated values based on anchors
estimates = [[60, 70, 80], [90, 100, 110], [130, 140, 150]]

# Create the plot
fig, ax = plt.subplots(figsize=(6, 4))

for i, anchor in enumerate(anchors):
    ax.plot([anchor] * len(estimates[i]), estimates[i], 'o-', label=f'Anchor: {anchor}')

ax.set_xlabel('Anchor Value')
ax.set_ylabel('Estimated Value')
ax.set_title('Anchoring Bias Example')
ax.legend()
ax.grid(True)

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
]
#only("1")[
#voiceover("In this graph, we can see how different anchor values lead to different estimates. When the anchor is 50, estimates are clustered around 60 to 80. When the anchor is 100, estimates are around 90 to 110. And when the anchor is 150, estimates are around 130 to 150.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Overcoming Anchoring Bias 💪]
#v(40pt)
#only("1-")[- Be aware of the bias and its potential influence]
#v(20pt)
#only("2-")[- Consider multiple sources of information]
#v(20pt)
#only("3-")[- Adjust your estimates based on new, relevant data]
#only("1")[
#voiceover("To overcome anchoring bias, it's important to be aware of the bias and its potential influence on your decisions.")
]
#only("2")[
#voiceover("When making judgments, consider multiple sources of information and don't rely solely on the initial anchor.")
]
#only("3")[
#voiceover("Be willing to adjust your estimates and opinions based on new, relevant data, even if it contradicts the initial anchor.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Anchoring bias: Relying too heavily on an initial piece of information]
#v(20pt)
#only("2-")[- The "anchor" influences subsequent decisions and judgments]
#v(20pt)
#only("3-")[- Overcome by considering multiple sources and adjusting estimates]
#only("1")[
#voiceover("In summary, anchoring bias is a cognitive bias where individuals rely too heavily on an initial piece of information when making decisions.")
]
#only("2")[
#voiceover("This initial 'anchor' influences subsequent decisions and judgments, even when it may not be entirely relevant or accurate.")
]
#only("3")[
#voiceover("To overcome anchoring bias, consider multiple sources of information, be aware of the bias's potential influence, and be willing to adjust your estimates based on new, relevant data.")
]
]