#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Anchoring Bias 🔗]
#v(40pt)
#only("1-")[- Tendency to rely too heavily on the first piece of information encountered when making decisions 🧠]
#v(20pt)
#only("2-")[- Example: Estimating the price of a house 🏠]
#v(20pt)
#only("3-")[- Initial price (anchor) influences the final estimate 💰]
#only("1")[
#voiceover("Anchoring bias is the tendency to rely too heavily on the first piece of information encountered when making decisions.")
]
#only("2")[
#voiceover("For example, when estimating the price of a house...")
]
#only("3")[
#voiceover("The initial price, which serves as an anchor, can heavily influence the final estimate.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Anchoring Effect 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Data
actual_price = 200000
anchor_low = 150000
anchor_high = 250000
estimate_low = 180000
estimate_high = 220000

# Create a figure and axis
fig, ax = plt.subplots(figsize=(8, 6))

# Plot the actual price
ax.axhline(actual_price, color='green', linestyle='--', linewidth=2, label='Actual Price')

# Plot the anchors and estimates
ax.plot([0, 1], [anchor_low, estimate_low], color='blue', marker='o', linewidth=2, label='Low Anchor')
ax.plot([0, 1], [anchor_high, estimate_high], color='red', marker='o', linewidth=2, label='High Anchor')

# Annotations
ax.annotate('Anchor', xy=(0, anchor_low), xytext=(-0.2, anchor_low - 20000),
            arrowprops=dict(facecolor='blue', shrink=0.05))
ax.annotate('Estimate', xy=(1, estimate_low), xytext=(1.2, estimate_low - 20000),
            arrowprops=dict(facecolor='blue', shrink=0.05))
ax.annotate('Anchor', xy=(0, anchor_high), xytext=(-0.2, anchor_high + 20000),
            arrowprops=dict(facecolor='red', shrink=0.05))
ax.annotate('Estimate', xy=(1, estimate_high), xytext=(1.2, estimate_high + 20000),
            arrowprops=dict(facecolor='red', shrink=0.05))

# Customize the plot
ax.set_xticks([0, 1])
ax.set_xticklabels(['Anchor', 'Estimate'])
ax.set_ylabel('Price (\$)')
ax.set_title('Anchoring Effect on House Price Estimation')
ax.legend()
ax.grid(True)

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("This graph illustrates the anchoring effect. The green line represents the actual price of the house. The blue and red lines show how different initial anchors lead to different final estimates, even though the actual price remains the same.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Mitigating Anchoring Bias 🛡]
#v(40pt)
#only("1-")[- Be aware of the bias 🧐]
#v(20pt)
#only("2-")[- Gather multiple pieces of information 📚]
#v(20pt)
#only("3-")[- Adjust estimates based on new information 🎯]
#only("1")[
#voiceover("To mitigate anchoring bias, it's important to be aware of its existence.")
]
#only("2")[
#voiceover("Gather multiple pieces of information before making a decision.")
]
#only("3")[
#voiceover("And be willing to adjust your estimates as new information becomes available.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Anchoring bias: Relying too heavily on the first piece of information 🔗]
#v(20pt)
#only("2-")[- Anchors influence decisions and estimates 📊]
#v(20pt)
#only("3-")[- Mitigate by gathering more information and adjusting estimates 🛡]
#only("1")[
#voiceover("In summary, anchoring bias is the tendency to rely too heavily on the first piece of information encountered when making decisions.")
]
#only("2")[
#voiceover("These anchors can heavily influence our decisions and estimates.")
]
#only("3")[
#voiceover("To mitigate this bias, gather more information and be willing to adjust your estimates accordingly.")
]
]