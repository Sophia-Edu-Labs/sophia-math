#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Anwendung einer Matrix auf einen Vektor]
#v(40pt)
#only("1-")[- Matrix $A$ repräsentiert eine lineare Abbildung]
#v(20pt)
#only("2-")[- Vektor $v$ wird durch $A$ transformiert]
#v(20pt)
#only("3-")[- Resultierender Vektor: $A v$]
#only("1")[
#voiceover("Lass uns sehen, wie man eine Matrix auf einen Vektor anwendet, um das Bild des Vektors unter der durch die Matrix repräsentierten linearen Abbildung zu finden.")
]
#only("2")[
#voiceover("Angenommen, wir haben eine Matrix A, die eine lineare Abbildung repräsentiert, und einen Vektor v, den wir transformieren möchten.")
]
#only("3")[
#voiceover("Der resultierende Vektor, der das Bild von v unter der Abbildung ist, wird durch Multiplikation von A und v erhalten.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[- Matrix $A = mat(2, 0; 0, 3)$]
#v(20pt)
#only("2-")[- Vektor $v = mat(1; 2)$]
#v(20pt)
#only("3-")[- Berechne: $A v = mat(2, 0; 0, 3) mat(1; 2)$]
#v(20pt)
#only("4-")[$ = mat(2 dot 1 + 0 dot 2; 0 dot 1 + 3 dot 2) = mat(2; 6)$]
#only("1")[
#voiceover("Nehmen wir ein Beispiel. Angenommen, wir haben die Matrix A gleich 2, 0; 0, 3.")
]
#only("2")[
#voiceover("Und nehmen wir an, wir möchten dies auf den Vektor v gleich 1; 2 anwenden.")
]
#only("3")[
#voiceover("Um das Bild von v zu finden, berechnen wir A mal v, was die Matrix 2, 0; 0, 3 multipliziert mit dem Vektor 1; 2 ist.")
]
#only("4")[
#voiceover("Dies ergibt den Vektor 2; 6. Das Bild des Vektors 1; 2 unter der durch die Matrix A repräsentierten Abbildung ist also der Vektor 2; 6.")
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

# Define the matrix and vector
A = np.array([[2, 0], [0, 3]])
v = np.array([[1], [2]])

# Compute the image vector
w = A @ v

# Create the plot
plt.figure(figsize=(6, 6))
plt.quiver(0, 0, v[0], v[1], angles='xy', scale_units='xy', scale=1, color='b', label='Original vector')
plt.quiver(0, 0, w[0], w[1], angles='xy', scale_units='xy', scale=1, color='r', label='Image vector')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.xlim(-1, 3)
plt.ylim(-1, 7)
plt.legend()
plt.title('Applying Matrix to Vector')
plt.xlabel('x')
plt.ylabel('y')
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung dieser Transformation. Der blaue Pfeil repräsentiert den ursprünglichen Vektor v und der rote Pfeil repräsentiert sein Bild unter der Abbildung A.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Matrix repräsentiert lineare Abbildung 📐]
#v(20pt)
#only("2-")[- Multipliziere Matrix und Vektor, um das Bild zu finden 🧮]
#v(20pt)
#only("3-")[- Visualisierung hilft, die Transformation zu verstehen 📈]
#only("1")[
#voiceover("Zusammenfassend kann eine Matrix eine lineare Abbildung repräsentieren.")
]
#only("2")[
#voiceover("Um das Bild eines Vektors unter dieser Abbildung zu finden, multiplizieren wir die Matrix und den Vektor.")
]
#only("3")[
#voiceover("Die Visualisierung des ursprünglichen Vektors und seines Bildes kann uns helfen zu verstehen, wie die Abbildung den Vektor transformiert.")
]
]