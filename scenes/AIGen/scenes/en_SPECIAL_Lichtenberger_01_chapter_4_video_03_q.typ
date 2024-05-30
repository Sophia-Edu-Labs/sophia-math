#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Water Pressure on Container Bottom 🌊]
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
ax1.set_title('Container A')
ax1.set_xlim(0, 2)
ax1.set_ylim(0, 10)
ax1.set_aspect('equal')
ax1.plot([0, 0, 2, 2, 0], [0, 8, 8, 0, 0], 'k-')
ax1.fill_between([0, 2], [0, 0], [8, 8], color='skyblue', alpha=0.5)
ax1.text(1, 4, 'A', fontsize=20, ha='center', va='center')

# Container B
ax2.set_title('Container B')
ax2.set_xlim(0, 2)
ax2.set_ylim(0, 10)
ax2.set_aspect('equal')
ax2.plot([0, 0, 2, 2, 0], [0, 6, 6, 0, 0], 'k-')
ax2.fill_between([0, 2], [0, 0], [6, 6], color='skyblue', alpha=0.5)
ax2.text(1, 3, 'B', fontsize=20, ha='center', va='center')

# Container C
ax3.set_title('Container C')
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
// The figure shows three containers A, B, and C with different shapes but the same volume of water.
#only("1")[
#voiceover("Consider these three containers, A, B, and C, each filled with water. The containers have different shapes, but the same volume of water.")
]
#v(40pt)
#only("2-")[In which container is the total force of the water on the bottom the greatest? 🤔]
// The question is posed from slide 2 onward
#v(40pt)
#only("3-")[a) A]
// Answer option a) is shown from slide 3 onward
#v(10pt)
#only("4-")[b) B]
// Answer option b) is shown from slide 4 onward
#v(10pt)
#only("5-")[c) C]
// Answer option c) is shown from slide 5 onward
#v(10pt)
#only("6-")[d) All the same]
// Answer option d) is shown from slide 6 onward
#only("2")[#voiceover("Here's the question: In which container is the total force of the water on the bottom the greatest?")]
#only("3")[#voiceover("Is it container A,")]
#only("4")[#voiceover("or container B,")]
#only("5")[#voiceover("or maybe container C,")]
#only("6")[#voiceover("or is the force the same in all containers?")]
]

]#questionDef(
questionText: "In which container is the total force of the water on the bottom the greatest?",
answerOptions: ("A", "B", "C", "All the same"),
correctAnswerIndex: 2
)