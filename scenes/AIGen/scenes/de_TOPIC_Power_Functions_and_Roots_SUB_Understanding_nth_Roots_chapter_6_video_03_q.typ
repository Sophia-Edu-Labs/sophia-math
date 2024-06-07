#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Übung]
#v(40pt)
#only("1-")[Ist $root(4, -16)$ eine reelle Zahl?]
#only("1")[
#voiceover("Betrachte die vierte Wurzel von minus 16.")
]
#only("2")[
#voiceover("Ist dieser Wert reell?")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(6, 6))

# Draw the real number line
ax.axhline(0, color='black', lw=1)
ax.set_ylim(-1, 1)
ax.set_yticks([])

# Mark zero
ax.text(0, -0.1, '0', ha='center', va='top', fontsize=12)

# Mark -16
ax.plot(-16, 0, 'ro', markersize=10)
ax.text(-16, -0.1, '-16', ha='center', va='top', fontsize=12)

# Draw a question mark at the fourth root of -16
ax.text(2, 0.5, '?', ha='center', va='center', fontsize=24, color='blue')
ax.text(2, 0.2, '$root(4, -16)$', ha='center', va='center', fontsize=12, color='blue')

# Hide the top and right spines
ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)

# Set the x-axis limits and label
ax.set_xlim(-20, 20)
ax.set_xlabel('Real Number Line')

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung auf der reellen Zahlengeraden. Wir sehen den Punkt minus 16. Die Frage ist: Wo liegt die vierte Wurzel dieser Zahl auf der reellen Achse?")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Frage]
#v(40pt)
#only("1-")[Ist $root(4, -16)$ eine reelle Zahl? 🤔]
#only("1")[
#voiceover("Also, ist die vierte Wurzel von minus 16 eine reelle Zahl?")
]
#only("2")[
#voiceover("Denke darüber nach und gib Deine Antwort.")
]
]#questionDef(
questionText: "Ist $\sqrt[4]{-16}$ reell?",
answerOptions: ("Ja", "Nein"),
correctAnswerIndex: 1,
)