#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Divergenz ins Unendliche]
#v(40pt)
#only("1-")[Betrachten Sie die Folge $b_n = (-1)^n n$]
#v(20pt)
#only("2-")[Divergiert diese Folge ins Unendliche? 🤔]
#only("1")[
#voiceover("Betrachten Sie die Folge b sub n gleich minus 1 hoch n mal n.")
]
#only("2")[
#voiceover("Divergiert diese Folge ins Unendliche?")
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

# Generate the terms of the sequence
n = np.arange(1, 11)
b_n = (-1)**n * n

# Create the plot
plt.figure(figsize=(8, 6))
plt.stem(n, b_n, linefmt='b-', markerfmt='bo', basefmt='k--')
plt.xlabel('n')
plt.ylabel('b_n')
plt.title('Folge b_n = (-1)^n n')
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung der ersten paar Glieder der Folge. Die blauen Punkte repräsentieren die Werte von b sub n für verschiedene Werte von n.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Frage]
#v(40pt)
#only("1-")[Divergiert die Folge $b_n = (-1)^n n$ ins Unendliche? 🧐]
#only("1")[
#voiceover("Jetzt sind Sie dran, darüber nachzudenken. Divergiert die Folge b sub n gleich minus 1 hoch n mal n ins Unendliche?")
]
]#questionDef(
  questionText: "Divergiert die Folge $b_n = (-1)^n n$ ins Unendliche?",
  answerOptions: ("Ja", "Nein"),
  correctAnswerIndex: 1,
  freeTextDetail: (
    fallbackOptionIndex: 0,
  ),
)