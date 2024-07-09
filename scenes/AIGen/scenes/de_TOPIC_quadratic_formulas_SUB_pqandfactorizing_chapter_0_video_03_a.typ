#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Grad einer quadratischen Gleichung]
#v(40pt)
Was ist der Grad der quadratischen Gleichung $3x^2 - 4x + 2 = 0$?
#v(40pt)
#only("-1")[a) 1]#only("2-")[#text(fill:red)[a) 1]]
#v(10pt)
#only("-2")[b) 2]#only("3-")[#text(fill:green)[b) 2]]
#v(10pt)
#only("-3")[c) 3]#only("4-")[#text(fill:red)[c) 3]]
#v(40pt)

#only("1")[#voiceover("Leider ist das nicht korrekt. Lass uns erklären, warum die Antwort b) 2 richtig ist und warum die anderen Optionen falsch sind.")]
#only("2")[#voiceover("Option a) 1 ist falsch. Der Grad einer Gleichung ist in diesem Fall nicht 1.")]
#only("3")[#voiceover("Option b) 2 ist korrekt. Der Grad dieser quadratischen Gleichung ist tatsächlich 2.")]
#only("4")[#voiceover("Option c) 3 ist falsch. Die Gleichung hat keinen Grad von 3.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Verständnis des Gleichungsgrads]
#v(40pt)
#only("1-")[- Der Grad ist die höchste Potenz der Variablen 📊]
#v(20pt)
#only("2-")[- In $3x^2 - 4x + 2 = 0$:]
#v(10pt)
#only("3-")[  • $x^2$ hat die höchste Potenz]
#v(10pt)
#only("4-")[  • Die höchste Potenz ist 2]
#v(20pt)
#only("5-")[- Daher ist der Grad 2 ✅]

#only("1")[#voiceover("Um zu verstehen, warum der Grad 2 ist, lass uns daran erinnern, was 'Grad' in der Algebra bedeutet. Der Grad einer Gleichung ist die höchste Potenz der Variablen in der Gleichung.")]
#only("2")[#voiceover("Schauen wir uns unsere Gleichung an: 3 x Quadrat minus 4 x plus 2 gleich 0,")]
#only("3")[#voiceover("sehen wir, dass x Quadrat die höchste Potenz von x hat.")]
#only("4")[#voiceover("Die höchste Potenz hier ist 2.")]
#only("5")[#voiceover("Daher ist der Grad dieser quadratischen Gleichung 2.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung der Gleichung]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 3, 100)
y = 3*x**2 - 4*x + 2

plt.figure(figsize=(10, 6))
plt.plot(x, y, label='3x² - 4x + 2')
plt.axhline(y=0, color='r', linestyle='--', label='y = 0')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Graph von 3x² - 4x + 2 = 0')
plt.legend()
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]
#only("1")[#voiceover("Hier ist eine visuelle Darstellung unserer quadratischen Gleichung. Beachte, wie der Graph eine Parabel bildet, was charakteristisch für quadratische Gleichungen ist. Diese Form entsteht durch das x-Quadrat-Glied und bestätigt, dass der Grad tatsächlich 2 ist.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Warum nicht Grad 1 oder 3?]
#v(40pt)
#only("1-")[- Grad 1: Lineare Gleichung (gerade Linie) 📏]
#v(10pt)
#only("2-")[  • Beispiel: $2x + 3 = 0$]
#v(20pt)
#only("3-")[- Grad 3: Kubische Gleichung (S-förmige Kurve) 🔀]
#v(10pt)
#only("4-")[  • Beispiel: $x^3 + 2x^2 - x + 1 = 0$]

#only("1")[#voiceover("Lass uns klären, warum der Grad nicht 1 oder 3 ist. Eine Gleichung mit Grad 1 ist eine lineare Gleichung, die als gerade Linie dargestellt wird.")]
#only("2")[#voiceover("Ein Beispiel wäre 2x plus 3 gleich 0.")]
#only("3")[#voiceover("Eine Gleichung mit Grad 3 ist eine kubische Gleichung, die typischerweise als S-förmige Kurve dargestellt wird.")]
#only("4")[#voiceover("Ein Beispiel wäre x hoch 3 plus 2x Quadrat minus x plus 1 gleich 0.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[- Quadratische Gleichungen haben immer Grad 2 📚]
#v(20pt)
#only("2-")[- Das Glied mit der höchsten Potenz bestimmt den Grad 🔝]
#v(20pt)
#only("3-")[- Der Grad beeinflusst die Form des Graphen 📈]

#only("1")[#voiceover("Zusammenfassend: Denke daran, dass quadratische Gleichungen immer einen Grad von 2 haben.")]
#only("2")[#voiceover("Das Glied mit der höchsten Potenz in der Gleichung bestimmt ihren Grad.")]
#only("3")[#voiceover("Und der Grad einer Gleichung beeinflusst die Form ihres Graphen. Großartige Arbeit beim Verständnis dieses Konzepts!")]
]