#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Neutral pH]
#v(40pt)
What pH value represents a neutral solution?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect.
#only("-1")[a) 0]#only("2-")[#text(fill:red)[a) 0]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) 7]#only("3-")[#text(fill:green)[b) 7]]
#v(10pt)  
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) 14]#only("4-")[#text(fill:red)[c) 14]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) 10]#only("5-")[#text(fill:red)[d) 10]]
#only("1")[#voiceover("Great job! You selected the correct answer.")]
#only("2")[#voiceover("A pH of 0 is incorrect because it represents a strongly acidic solution, not a neutral one.")]
#only("3")[#voiceover("A pH of 7 is indeed the correct answer. It represents a neutral solution, where the concentrations of hydrogen ions and hydroxide ions are equal.")]
#only("4")[#voiceover("A pH of 14 is incorrect because it represents a strongly basic solution, not a neutral one.")]  
#only("5")[#voiceover("A pH of 10 is also incorrect. It represents a basic solution, not a neutral one.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[pH Scale]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define pH values and labels
pH_values = np.array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14])
labels = ['Strongly Acidic', 'Acidic', 'Neutral', 'Basic', 'Strongly Basic']

# Create a colormap
colors = ['red', 'orange', 'yellow', 'green', 'cyan', 'blue', 'purple']
cmap = plt.cm.colors.ListedColormap(colors)

# Create the plot
fig, ax = plt.subplots(figsize=(10, 2))
im = ax.imshow([pH_values], cmap=cmap, aspect='auto', extent=[0, 14, 0, 1])

# Set the ticks and labels
ax.set_xticks(pH_values)
ax.set_xticklabels(pH_values)
ax.set_yticks([])

# Add labels
ax.text(1.5, 0.25, labels[0], ha='center', va='center', color='white')
ax.text(4.5, 0.25, labels[1], ha='center', va='center', color='black')
ax.text(7, 0.25, labels[2], ha='center', va='center', color='black')
ax.text(9.5, 0.25, labels[3], ha='center', va='center', color='black')
ax.text(12.5, 0.25, labels[4], ha='center', va='center', color='white')

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[The pH scale ranges from 0 to 14:]
#v(20pt)
#only("2-")[- pH < 7: Acidic 🍋]
#only("3-")[- pH = 7: Neutral 😐]  
#only("4-")[- pH > 7: Basic 🧼]

#only("1")[#voiceover("Let's take a closer look at the pH scale to understand why a pH of 7 represents a neutral solution.")]
#only("2")[#voiceover("pH values below 7 indicate acidic solutions. The lower the pH, the more acidic the solution is.")]
#only("3")[#voiceover("A pH of exactly 7 represents a neutral solution, where the concentrations of hydrogen ions and hydroxide ions are equal.")]
#only("4")[#voiceover("pH values above 7 indicate basic solutions. The higher the pH, the more basic the solution is.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Neutral Solution]
#v(40pt)  
#only("1-")[At pH 7:]
#v(20pt)
#only("2-")[- [H+] = [OH-] = $10^(-7)$ M]
#v(20pt)
#only("3-")[- Water dissociates equally:]
#v(20pt)
#only("4-")[H_2O <=> H^+ + OH^-]

#only("1")[#voiceover("So, what exactly happens in a neutral solution at pH 7?")]
#only("2")[#voiceover("At pH 7, the concentration of hydrogen ions, denoted as H plus, is equal to the concentration of hydroxide ions, denoted as O H minus. Both concentrations are 10 to the power of negative 7 molar.")]
#only("3")[#voiceover("This occurs because water dissociates equally into hydrogen ions and hydroxide ions.")]
#only("4")[#voiceover("The chemical equation for this is: H 2 O dissociates into H plus and O H minus. The double arrow indicates that this is an equilibrium reaction.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- pH scale: 0 (acidic) to 14 (basic) 📏]
#v(20pt)  
#only("2-")[- Neutral solution: pH = 7 😐]
#v(20pt)
#only("3-")[- At pH 7: [H+] = [OH-] = $10^(-7)$ M ⚖]
#v(20pt)
#only("4-")[Great job on selecting the correct answer! 🎉]

#only("1")[#voiceover("To summarize, the pH scale ranges from 0 to 14, with acidic solutions below 7 and basic solutions above 7.")]
#only("2")[#voiceover("A neutral solution has a pH of exactly 7.")]  
#only("3")[#voiceover("At pH 7, the concentrations of hydrogen ions and hydroxide ions are equal, both at 10 to the power of negative 7 molar.")]
#only("4")[#voiceover("Fantastic work on choosing the correct answer and understanding why a pH of 7 represents a neutral solution!")]
]