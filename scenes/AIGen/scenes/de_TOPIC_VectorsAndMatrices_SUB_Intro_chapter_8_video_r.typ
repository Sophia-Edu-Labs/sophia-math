#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix-Multiplikation Überprüfung 🔢]
#v(40pt)
#only("1-")[- Wesentliche Operation in der linearen Algebra 📊]
#only("2-")[- Wird in verschiedenen Anwendungen verwendet 🖥️]
#only("3-")[- Lass uns die wichtigsten Konzepte überprüfen 🔍]

#only("1")[
#voiceover("Lass uns die Matrixmultiplikation überprüfen, eine grundlegende Operation in der linearen Algebra.")
]
#only("2")[
#voiceover("Diese Operation ist in verschiedenen Anwendungen entscheidend, von Computergrafik bis zur Datenanalyse.")
]
#only("3")[
#voiceover("Wir werden die wichtigsten Konzepte erneut durchgehen, um ein solides Verständnis zu gewährleisten.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Bedingungen für Matrix-Multiplikation 🧮]
#v(40pt)
#only("1-")[- Kompatibilitätsanforderung ✅]
#v(20pt)
#only("2-")[- Beispiel: $A_(m times n) times B_(n times p)$]
#v(20pt)
#only("3-")[- Ergebnis: $C_(m times p)$]

#only("1")[
#voiceover("Zuerst lass uns die Bedingungen für die Matrixmultiplikation überprüfen. Die wichtigste Anforderung ist die Kompatibilität zwischen den Matrizen.")
]
#only("2")[
#voiceover("Damit zwei Matrizen A und B multipliziert werden können, muss die Anzahl der Spalten in A gleich der Anzahl der Zeilen in B sein. Zum Beispiel, wenn A eine m mal n Matrix ist und B eine n mal p Matrix ist, können sie multipliziert werden.")
]
#only("3")[
#voiceover("Die resultierende Matrix C wird die Dimensionen m mal p haben. Das bedeutet, sie wird die gleiche Anzahl von Zeilen wie A und die gleiche Anzahl von Spalten wie B haben.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visuelle Darstellung 👁️]
#v(20pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

fig, ax = plt.subplots(figsize=(10, 6))

# Define matrices
A = np.array([[1, 2], [3, 4], [5, 6]])
B = np.array([[7, 8, 9], [10, 11, 12]])
C = np.dot(A, B)

# Plot matrices
ax.imshow(A, cmap='Blues', aspect='auto', extent=[0, 2, 3, 0])
ax.text(1, 1.5, 'A\n(3x2)', ha='center', va='center', fontsize=12, color='white')

ax.imshow(B, cmap='Greens', aspect='auto', extent=[3, 6, 2, 0])
ax.text(4.5, 1, 'B\n(2x3)', ha='center', va='center', fontsize=12, color='white')

ax.imshow(C, cmap='Reds', aspect='auto', extent=[7, 10, 3, 0])
ax.text(8.5, 1.5, 'C\n(3x3)', ha='center', va='center', fontsize=12, color='white')

# Add arrows
ax.annotate('', xy=(2.5, 1), xytext=(2, 1), arrowprops=dict(arrowstyle='->'))
ax.annotate('', xy=(6.5, 1.5), xytext=(6, 1.5), arrowprops=dict(arrowstyle='->'))

ax.set_xlim(-0.5, 10.5)
ax.set_ylim(3.5, -0.5)
ax.axis('off')

plt.title('Matrix Multiplication: A(3x2) * B(2x3) = C(3x3)', fontsize=14)
plt.tight_layout()
plt.show()

```,
width: 360pt),
caption: [],
)
]
]
]

#only("1")[
#voiceover("Hier ist eine visuelle Darstellung der Matrixmultiplikation. Wir haben die Matrix A, die 3 mal 2 ist, multipliziert mit der Matrix B, die 2 mal 3 ist. Die resultierende Matrix C ist 3 mal 3. Beachte, wie die Anzahl der Spalten in A mit der Anzahl der Zeilen in B übereinstimmt, was die Multiplikation ermöglicht.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung der wichtigsten Punkte 📝]
#v(40pt)
#only("1-")[- Kompatibilität: Spalten von A = Zeilen von B]
#only("2-")[- Dimensionen: $A_(m times n) times B_(n times p) = C_(m times p)$]
#only("3-")[- Nicht-kommutativ: $A times B != B times A$ (im Allgemeinen)]
#only("4-")[- Entscheidend in verschiedenen Anwendungen 🌐]

#only("1")[
#voiceover("Lass uns die wichtigsten Punkte zusammenfassen. Erstens, damit die Matrixmultiplikation definiert ist, muss die Anzahl der Spalten in der ersten Matrix gleich der Anzahl der Zeilen in der zweiten Matrix sein.")
]
#only("2")[
#voiceover("Die Dimensionen der resultierenden Matrix werden durch die verbleibenden Dimensionen bestimmt: die Anzahl der Zeilen der ersten Matrix und die Anzahl der Spalten der zweiten Matrix.")
]
#only("3")[
#voiceover("Es ist wichtig zu beachten, dass die Matrixmultiplikation im Allgemeinen nicht kommutativ ist. Das bedeutet, dass A mal B normalerweise nicht gleich B mal A ist.")
]
#only("4")[
#voiceover("Das Verständnis dieser Konzepte ist entscheidend, da die Matrixmultiplikation in verschiedenen Bereichen weit verbreitet ist, von der Physik bis zur Informatik.")
]
]