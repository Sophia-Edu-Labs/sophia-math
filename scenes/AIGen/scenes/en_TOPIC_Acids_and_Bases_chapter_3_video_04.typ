#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[pH Scale Recap 🧪]
#v(40pt)
#only("1-")[- Measures acidity or basicity of a solution]
#v(20pt)
#only("2-")[- Range: 0 to 14]
#v(20pt)
#only("3-")[- Neutral: pH = 7]
#v(20pt)
#only("4-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the pH values and labels
pH_values = np.linspace(0, 14, 15)
pH_labels = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14']

# Create a colormap
colors = plt.cm.RdYlBu(np.linspace(0, 1, len(pH_values)))

# Create the plot
fig, ax = plt.subplots(figsize=(10, 2))
for i, pH in enumerate(pH_values):
    ax.axvline(pH, color=colors[i], linewidth=20, label=pH_labels[i])

# Customize the plot
ax.set_xlim(0, 14)
ax.set_xticks(pH_values)
ax.set_xticklabels(pH_labels)
ax.set_yticks([])
ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)
ax.spines['bottom'].set_visible(False)
ax.spines['left'].set_visible(False)

# Add labels
ax.text(3.5, 0.5, 'Acidic', fontsize=16, ha='center', va='center')
ax.text(10.5, 0.5, 'Basic', fontsize=16, ha='center', va='center')
ax.text(7, 0.5, 'Neutral', fontsize=16, ha='center', va='center')

plt.tight_layout()
plt.show()
```, 
width: 360pt),
)
]
]
]

#only("1")[
#voiceover("The pH scale is used to measure the acidity or basicity of a solution.")
]

#only("2")[
#voiceover("It ranges from 0 to 14.")
]

#only("3")[
#voiceover("A pH of 7 is considered neutral.")
]

#only("4")[
#voiceover("This colorful scale shows the pH range, with acidic solutions on the left in red hues, neutral in the middle in green, and basic solutions on the right in blue hues.")
]
]