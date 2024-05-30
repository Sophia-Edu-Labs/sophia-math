#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[The pH Scale 🌡️]
#v(40pt)
#only("1-")[- Measures acidity or basicity of a solution 🧪]
#v(20pt)
#only("2-")[- Ranges from 0 to 14]
#v(20pt)
#only("3-")[- 7 is neutral 😐]
#only("1")[
#voiceover("The pH scale is a measurement used to specify the acidity or basicity of a solution.")
]
#only("2")[
#voiceover("The scale ranges from 0 to 14.")
]
#only("3")[
#voiceover("A pH of 7 is considered neutral, neither acidic nor basic.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Acidic Solutions 🍋]
#v(40pt)
#only("1-")[- pH less than 7]
#v(20pt)
#only("2-")[- Examples: Lemon juice 🍋, Vinegar 🥒]
#only("1")[
#voiceover("Solutions with a pH less than 7 are considered acidic.")
]
#only("2")[
#voiceover("Common examples of acidic solutions include lemon juice and vinegar.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Basic Solutions 🧼]
#v(40pt)
#only("1-")[- pH greater than 7]
#v(20pt)
#only("2-")[- Examples: Baking soda 🥄, Milk of Magnesia 💊]
#only("1")[
#voiceover("On the other hand, solutions with a pH greater than 7 are considered basic or alkaline.")
]
#only("2")[
#voiceover("Examples of basic solutions are baking soda and milk of magnesia.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define pH values and labels
pH_values = np.array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14])
labels = ['Battery Acid', 'Lemon Juice', 'Vinegar', 'Orange Juice', 'Tomatoes', 'Black Coffee', 'Milk', 'Pure Water', 'Baking Soda', 'Sea Water', 'Milk of Magnesia', 'Ammonia', 'Bleach', 'Lye', 'Liquid Drain Cleaner']

# Create the plot
fig, ax = plt.subplots(figsize=(10, 5))
ax.set_ylim(-1, 1)
ax.set_xlim(0, 14)
ax.set_yticks([])
ax.set_xticks(pH_values)
ax.set_xticklabels(labels, rotation=45, ha='right', fontsize=12)
ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)
ax.spines['left'].set_visible(False)
ax.axvspan(0, 7, color='red', alpha=0.2)
ax.axvspan(7, 14, color='blue', alpha=0.2)
ax.axvline(7, color='black', linestyle='--', linewidth=1)
ax.text(3.5, 0.5, 'Acidic', ha='center', fontsize=14)
ax.text(10.5, 0.5, 'Basic', ha='center', fontsize=14)
ax.text(7, -0.5, 'Neutral', ha='center', fontsize=14)
ax.set_title('The pH Scale', fontsize=16)
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of the pH scale. The red area represents acidic solutions, the blue area represents basic solutions, and the black dashed line at pH 7 represents neutral solutions. Some common substances are shown at their approximate pH values.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 🎬]
#v(40pt)
#only("1-")[- pH scale: 0 to 14, measures acidity/basicity 🧪]
#v(20pt)
#only("2-")[- pH < 7: Acidic 🍋 | pH > 7: Basic 🧼 | pH = 7: Neutral 😐]
#only("1")[
#voiceover("In summary, the pH scale, which ranges from 0 to 14, is used to measure the acidity or basicity of a solution.")
]
#only("2")[
#voiceover("Solutions with a pH less than 7 are acidic, those with a pH greater than 7 are basic, and a pH of 7 is neutral.")
]
]