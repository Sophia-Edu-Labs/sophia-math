#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Leider war das nicht ganz richtig. Lass uns gemeinsam die Lösung Schritt für Schritt durchgehen, um zu sehen, wo der Fehler lag.")
]

#text(size: 30pt, weight: "bold")[Vereinfachung von Potenzfunktionen]

#v(40pt)

#only("2-")[#text()[$ f(x) = 16x^(-2) $]]
#v(20pt)
#only("3-")[#text()[$ f(x) = 16 / x^2 $]]

#only("2")[
#voiceover("Wir beginnen mit der Funktion f von x gleich sechzehn mal x hoch minus zwei.")
]

#only("3")[
#voiceover("Dies kann umgeschrieben werden als sechzehn geteilt durch x Quadrat.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Verständnis von negativen Exponenten]

#v(40pt)

#only("1-")[- Regel für negative Exponenten: $a^(-n) = 1 / a^n$ 📏]
#v(20pt)
#only("2-")[- Angewendet auf unsere Funktion: $x^(-2) = 1 / x^2$ 🔄]

#only("1")[
#voiceover("Der Schlüssel zu dieser Vereinfachung ist das Verständnis von negativen Exponenten. Die Regel besagt, dass a hoch minus n gleich eins geteilt durch a hoch n ist.")
]

#only("2")[
#voiceover("Wenden wir diese Regel auf unsere Funktion an, wird x hoch minus zwei zu eins geteilt durch x Quadrat.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Vereinfachung]

#v(40pt)

#only("1-")[$ f(x) = 16x^(-2) $]
#v(20pt)
#only("2-")[$ f(x) = 16 dot (1 / x^2) $]
#v(20pt)
#only("3-")[$ f(x) = 16 / x^2 $]

#only("1")[
#voiceover("Lass uns die Vereinfachung Schritt für Schritt durchgehen. Wir beginnen mit f von x gleich sechzehn mal x hoch minus zwei.")
]

#only("2")[
#voiceover("Mit der Regel für negative Exponenten schreiben wir dies um als sechzehn mal eins geteilt durch x Quadrat.")
]

#only("3")[
#voiceover("Dies vereinfacht sich zu sechzehn geteilt durch x Quadrat, was unsere endgültige Antwort ist.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung der Funktion]

#v(40pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0.1, 5, 1000)
y = 16 / (x**2)

plt.figure(figsize=(10, 6))
plt.plot(x, y, 'b-', label='f(x) = 16 / x²')
plt.title('Graph von f(x) = 16 / x²')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.legend()
plt.grid(True)
plt.ylim(0, 20)
plt.show()

```,
width: 360pt),
)
]
]

#only("1")[
#voiceover("Hier ist eine Visualisierung unserer vereinfachten Funktion. Beachte, wie der Graph gegen unendlich geht, wenn x gegen null geht, und gegen null geht, wenn x größer wird. Dies ist charakteristisch für Funktionen der Form a geteilt durch x Quadrat.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]

#v(40pt)

#only("1-")[- Negative Exponenten können als Brüche umgeschrieben werden 🔄]
#v(20pt)
#only("2-")[- $a^(-n) = 1 / a^n$ ist eine grundlegende Regel 📏]
#v(20pt)
#only("3-")[- Vereinfachung kann Funktionen verständlicher machen 🧠]

#only("1")[
#voiceover("Fassen wir zusammen, was wir gelernt haben. Erstens, negative Exponenten können als Brüche umgeschrieben werden.")
]

#only("2")[
#voiceover("Die Regel a hoch minus n gleich eins geteilt durch a hoch n ist grundlegend für die Vereinfachung solcher Ausdrücke.")
]

#only("3")[
#voiceover("Schließlich kann die Vereinfachung von Funktionen wie dieser sie verständlicher und handhabbarer machen. Großartige Arbeit beim Beherrschen dieses Konzepts!")
]
]