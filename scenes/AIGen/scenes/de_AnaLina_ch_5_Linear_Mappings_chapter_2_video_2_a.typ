#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Kern einer linearen Abbildung]
#v(40pt)
Der Kern einer linearen Abbildung $T$ ist die Menge aller Vektoren $v$, sodass:

#v(20pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie rot, weil sie falsch ist.
#only("-1")[a) $T(v) = v$]#only("2-")[#text(fill:red)[a) $T(v) = v$]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie grün, weil sie korrekt ist.
#only("-2")[b) $T(v) = 0$]#only("3-")[#text(fill:green)[b) $T(v) = 0$]]
#v(10pt)  
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie rot, weil sie falsch ist.
#only("-3")[c) $T(v) = 1$]#only("4-")[#text(fill:red)[c) $T(v) = 1$]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie rot, weil sie falsch ist.  
#only("-4")[d) $T(v) = -v$]#only("5-")[#text(fill:red)[d) $T(v) = -v$]]

#only("1")[#voiceover("Nicht ganz. Schauen wir uns die richtige Lösung an.")]
#only("2")[#voiceover("Option a) ist falsch, weil sie die Identitätsabbildung beschreibt, nicht den Kern.")]
#only("3")[#voiceover("Option b) ist korrekt. Der Kern einer linearen Abbildung $T$ ist tatsächlich die Menge aller Vektoren $v$, sodass $T(v) = 0$.")]
#only("4")[#voiceover("Option c) ist falsch. Der Vektor $1$ hat keine besondere Bedeutung in der Definition des Kerns.")]
#only("5")[#voiceover("Und Option d) ist auch falsch. Sie beschreibt eine Negationsabbildung, nicht den Kern.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)

#only("1-")[
- Der Kern ist auch als Nullraum bekannt 📥
]
#v(20pt)
#only("2-")[  
- Es ist das Urbild des Nullvektors unter $T$ 🎯
]
#v(20pt)  
#only("3-")[
- Formal: $"ker"(T) = \{v ∈ V | T(v) = 0\}$ ✍️
]
#v(20pt)
#only("4-")[  
- Alle Vektoren im Kern werden von $T$ auf Null abgebildet 🗺️
]

#only("1")[#voiceover("Lassen Sie uns dies Schritt für Schritt aufschlüsseln. Der Kern ist ein anderer Name für den Nullraum einer linearen Abbildung.")]

#only("2")[#voiceover("Es ist das Urbild des Nullvektors unter der Abbildung $T$. Mit anderen Worten, es ist die Menge aller Vektoren, die $T$ auf Null abbildet.")]

#only("3")[#voiceover("Formal schreiben wir den Kern von $T$ als die Menge aller Vektoren $v$ im Definitionsbereich $V$, sodass $T$ von $v$ gleich Null ist.")]

#only("4")[#voiceover("Also wird jeder Vektor im Kern auf den Nullvektor abgebildet, wenn man die lineare Abbildung $T$ darauf anwendet.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Definiere die lineare Abbildung T
def T(v):
    return np.array([v[0] - v[1], v[0] + v[1]])

# Erstelle ein Gitter von Punkten
x = np.linspace(-5, 5, 20)
y = np.linspace(-5, 5, 20)
X, Y = np.meshgrid(x, y)

# Wende T auf jeden Punkt an
U = X - Y
V = X + Y

# Zeichne das Vektorfeld
plt.figure(figsize=(6, 6))
plt.quiver(X, Y, U, V, color='b', angles='xy', scale_units='xy', scale=1)

# Hebe den Kern hervor (x-Achse)
plt.quiver(x, np.zeros_like(x), np.zeros_like(x), np.zeros_like(x), color='r', angles='xy', scale_units='xy', scale=1, label='Kern')

plt.grid(True)
plt.axhline(0, color='black', lw=0.5)  
plt.axvline(0, color='black', lw=0.5)
plt.legend()
plt.title('Lineare Abbildung und ihr Kern')
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
#only("1-")[
- Die blauen Pfeile repräsentieren die Abbildung $T$ 🔵
]
#v(10pt)
#only("2-")[
- Die rote Linie ist der Kern von $T$ (die x-Achse) 🔴  
]

#only("1")[#voiceover("In dieser Visualisierung repräsentieren die blauen Pfeile die lineare Abbildung $T$, die auf jeden Punkt in der Ebene angewendet wird.")]

#only("2")[#voiceover("Die rote Linie, die in diesem Fall die x-Achse ist, repräsentiert den Kern von $T$. Alle Punkte auf dieser Linie werden von $T$ auf Null abgebildet.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)

#only("1-")[
- Kern = Nullraum 📥 = Urbild von Null 🎯
]
#v(20pt)  
#only("2-")[
- $"ker"(T) = \{v ∈ V | T(v) = 0\}$ ✍️
]
#v(20pt)
#only("3-")[  
- Alle $v$ im Kern werden von $T$ auf $0$ abgebildet 🗺️
]

#only("1")[#voiceover("Zusammenfassend ist der Kern, auch bekannt als Nullraum, das Urbild des Nullvektors unter einer linearen Abbildung $T$.")]

#only("2")[#voiceover("Er wird formal als die Menge aller Vektoren $v$ im Definitionsbereich $V$ definiert, sodass $T$ von $v$ gleich Null ist.")]

#only("3")[#voiceover("Jeder Vektor im Kern wird von der linearen Abbildung $T$ auf den Nullvektor abgebildet. Das Verständnis des Kerns ist entscheidend für die Analyse linearer Abbildungen.")]
]