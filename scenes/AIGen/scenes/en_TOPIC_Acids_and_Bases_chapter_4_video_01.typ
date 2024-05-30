#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[pOH Scale 🧪]
#v(40pt)
#only("1-")[- Measures concentration of hydroxide ions (OH⁻) in a solution]
#v(20pt)
#only("2-")[- Ranges from 0 to 14]
#v(20pt)
#only("3-")[- Higher pOH → lower OH⁻ concentration]
#only("1")[
#voiceover("The pOH scale is used to measure the concentration of hydroxide ions, which are written as OH minus, in a solution.")
]
#only("2")[
#voiceover("The pOH scale ranges from 0 to 14, similar to the pH scale.")
]
#only("3")[
#voiceover("A higher pOH value indicates a lower concentration of hydroxide ions in the solution.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Relationship with pH 🤝]
#v(40pt)
#only("1-")[$ "pH" + "pOH" = 14 $]
#v(20pt)
#only("2-")[Example: If pH = 3, then pOH = 11]
#v(20pt)
#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

pH = np.arange(0, 15)
pOH = 14 - pH

fig, ax = plt.subplots(figsize=(8, 4))
ax.plot(pH, pOH, 'bo-')
ax.set_xlabel('pH')
ax.set_ylabel('pOH')
ax.set_xticks(np.arange(0, 15, 1))
ax.set_yticks(np.arange(0, 15, 1))
ax.grid(True)
ax.set_title('Relationship between pH and pOH')

for x, y in zip(pH, pOH):
    label = f"({x}, {y})"
    ax.annotate(label, (x, y), textcoords="offset points", xytext=(0,10), ha='center')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("pH and pOH are related by the equation: pH plus pOH equals 14.")
]
#only("2")[
#voiceover("For example, if the pH of a solution is 3, then its pOH is 11, because 3 plus 11 equals 14.")
]
#only("3")[
#voiceover("This graph shows the relationship between pH and pOH. Each point on the line represents a pair of pH and pOH values that add up to 14.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- pOH scale measures OH⁻ concentration]
#v(20pt)
#only("2-")[- pH + pOH = 14]
#v(20pt)
#only("3-")[- Knowing one, you can calculate the other]
#only("1")[
#voiceover("In summary, the pOH scale measures the concentration of hydroxide ions in a solution.")
]
#only("2")[
#voiceover("pH and pOH are related by the equation: pH plus pOH equals 14.")
]
#only("3")[
#voiceover("If you know either the pH or the pOH of a solution, you can easily calculate the other using this relationship.")
]
]