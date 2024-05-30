#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Wasserdruck auf den Boden des Behälters 🌊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```python
import matplotlib.pyplot as plt
import numpy as np

# Set up the figure and axes
fig, (ax1, ax2, ax3) = plt.subplots(1, 3, figsize=(12, 4))

# Container A
ax1.set_title('Behälter A')
ax1.set_xlim(0, 2)
ax1.set_ylim(0, 10)
ax1.set_aspect('equal')
ax1.plot([0, 0, 2, 2, 0], [0, 8, 8, 0, 0], 'k-')
ax1.fill_between([0, 2], [0, 0], [8, 8], color='skyblue', alpha=0.5)
ax1.text(1, 4, 'A', fontsize=20, ha='center', va='center')

# Container B
ax2.set_title('Behälter B')
ax2.set_xlim(0, 2)
ax2.set_ylim(0, 10)
ax2.set_aspect('equal')
ax2.plot([0, 0, 2, 2, 0], [0, 6, 6, 0, 0], 'k-')
ax2.fill_between([0, 2], [0, 0], [6, 6], color='skyblue', alpha=0.5)
ax2.text(1, 3, 'B', fontsize=20, ha='center', va='center')

# Container C
ax3.set_title('Behälter C')
ax3.set_xlim(0, 4)
ax3.set_ylim(0, 10)
ax3.set_aspect('equal')
ax3.plot([0, 0, 4, 4, 0], [0, 4, 4, 0, 0], 'k-')
ax3.fill_between([0, 4], [0, 0], [4, 4], color='skyblue', alpha=0.5)
ax3.text(2, 2, 'C', fontsize=20, ha='center', va='center')

# Remove axis ticks and labels
for ax in [ax1, ax2, ax3]:
    ax.set_xticks([])
    ax.set_yticks([])

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
// Die Abbildung zeigt drei Behälter A, B und C mit unterschiedlichen Formen, aber demselben Wasservolumen.
#only("1")[
#voiceover("Betrachte diese drei Behälter, A, B und C, die jeweils mit Wasser gefüllt sind. Die Behälter haben unterschiedliche Formen, aber dasselbe Wasservolumen.")
]
#v(40pt)
#only("2-")[In welchem Behälter ist die Gesamtkraft des Wassers auf den Boden am größten? 🤔]
// Die Frage wird ab Folie 2 gestellt
#v(40pt)
#only("3-")[a) A]
// Antwortoption a) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[b) B]
// Antwortoption b) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[c) C]
// Antwortoption c) wird ab Folie 5 angezeigt
#v(10pt)
#only("6-")[d) Alle gleich]
// Antwortoption d) wird ab Folie 6 angezeigt
#only("2")[#voiceover("Hier ist die Frage: In welchem Behälter ist die Gesamtkraft des Wassers auf den Boden am größten?")]
#only("3")[#voiceover("Ist es Behälter A,")]
#only("4")[#voiceover("oder Behälter B,")]
#only("5")[#voiceover("oder vielleicht Behälter C,")]
#only("6")[#voiceover("oder ist die Kraft in allen Behältern gleich?")]
]

]#questionDef(
questionText: "In welchem Behälter ist die Gesamtkraft des Wassers auf den Boden am größten?",
answerOptions: ("A", "B", "C", "Alle gleich"),
correctAnswerIndex: 2
)