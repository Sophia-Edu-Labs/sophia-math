#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Basiswechsel]
#v(40pt)
#only("1-")[- Finden eines neuen Satzes von Basisvektoren 🆕🗺️]
#v(20pt)
#only("2-")[- Koordinaten relativ zur neuen Basis ausdrücken 📐]
#only("1")[
#voiceover("Der Basiswechsel beinhaltet das Finden eines neuen Satzes von Basisvektoren für einen Vektorraum.")
]
#only("2")[
#voiceover("Sobald wir die neue Basis haben, drücken wir die Koordinaten der Vektoren relativ zu dieser neuen Basis aus.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[- Standardbasis in $RR^2$: $mat(1;0), mat(0;1)$]
#v(20pt)
#only("2-")[- Neue Basis: $B = (mat(1;1), mat(1;-1))$]
#v(20pt)
#only("3-")[- Vektor $v = mat(2;0)$]
#only("1")[
#voiceover("Schauen wir uns ein Beispiel an. In R 2 sind die Standardbasisvektoren 1, 0 und 0, 1.")
]
#only("2")[
#voiceover("Wir möchten zu einer neuen Basis B wechseln, die aus den Vektoren 1, 1 und 1, -1 besteht.")
]
#only("3")[
#voiceover("Betrachten Sie den Vektor v gleich 2, 0.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Koordinaten in neuer Basis]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

v1 = np.array([1, 1])  
v2 = np.array([1, -1])
v = np.array([2, 0])  

origin = np.array([0, 0])

plt.figure(figsize=(6, 6))
plt.quiver(*origin, *v1, color='r', angles='xy', scale_units='xy', scale=1, label='Basisvektor 1')
plt.quiver(*origin, *v2, color='g', angles='xy', scale_units='xy', scale=1, label='Basisvektor 2')
plt.quiver(*origin, *v, color='b', angles='xy', scale_units='xy', scale=1, label='Vektor v')

plt.xlim(-2.5, 2.5)
plt.ylim(-2.5, 2.5)
plt.grid()
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.legend()
plt.title('Basiswechsel')
plt.xlabel('x')
plt.ylabel('y')
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#v(20pt)
#only("2-")[- $v = a mat(1;1) + b mat(1;-1)$]
#v(20pt)
#only("3-")[- Lösung: $a = 1, b = 1$]
#v(20pt)
#only("4-")[- Koordinaten in Basis $B$: $(1, 1)$]
#only("1")[
#voiceover("Um die Koordinaten von v in der neuen Basis zu finden, stellen wir eine Linearkombination auf.")
]
#only("2")[
#voiceover("Wir schreiben v als a mal den ersten Basisvektor plus b mal den zweiten Basisvektor.")
]
#only("3")[
#voiceover("Durch Lösen finden wir, dass a gleich 1 und b gleich 1 ist.")
]
#only("4")[
#voiceover("Daher sind die Koordinaten von v in der neuen Basis B 1, 1.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Basiswechsel: neue Basisvektoren finden 🆕🗺️]
#v(20pt)
#only("2-")[- Koordinaten relativ zur neuen Basis ausdrücken 📐]
#v(20pt)
#only("3-")[- Beinhaltet das Lösen eines linearen Systems 🧮]
#only("1")[
#voiceover("Zusammenfassend beinhaltet ein Basiswechsel das Finden eines neuen Satzes von Basisvektoren.")
]
#only("2")[
#voiceover("Wir drücken dann die Koordinaten der Vektoren relativ zu dieser neuen Basis aus.")
]
#only("3")[
#voiceover("Dies beinhaltet typischerweise das Lösen eines linearen Systems, um die neuen Koordinaten zu bestimmen.")
]
]