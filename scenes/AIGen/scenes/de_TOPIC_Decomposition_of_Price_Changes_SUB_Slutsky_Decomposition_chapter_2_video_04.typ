#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Einkommenseffekt Rückblick 💰]
#v(40pt)
#only("1-")[- Tritt auf, wenn eine Preisänderung das reale Einkommen des Verbrauchers beeinflusst]
#v(20pt)
#only("2-")[- Führt zu einer Änderung des Konsums]
#only("1")[
#voiceover("Der Einkommenseffekt tritt auf, wenn eine Preisänderung das reale Einkommen des Verbrauchers beeinflusst.")
]
#only("2")[
#voiceover("Diese Änderung des realen Einkommens führt zu einer Änderung des Konsums des Verbrauchers.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel 🛒]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Definiere die anfänglichen und neuen Preise und Mengen
p0, p1 = 10, 8
q0, q1, qs = 5, 9, 7

# Erstelle das Diagramm
fig, ax = plt.subplots(figsize=(6, 6))

# Zeichne die anfänglichen und neuen Punkte
ax.plot(q0, p0, 'bo', label='Anfangspunkt')
ax.plot(q1, p1, 'ro', label='Neuer Punkt')

# Zeichne den Punkt des Substitutionseffekts
ax.plot(qs, p1, 'go', label='Substitutionseffekt Punkt')

# Füge Pfeile für Substitutions- und Einkommenseffekte hinzu
ax.annotate('', xy=(qs, p1), xytext=(q0, p0), arrowprops=dict(arrowstyle="->", color='purple', label='Substitutionseffekt'))
ax.annotate('', xy=(q1, p1), xytext=(qs, p1), arrowprops=dict(arrowstyle="->", color='orange', label='Einkommenseffekt'))

# Beschriftungen und Titel
ax.set_xlabel('Menge')
ax.set_ylabel('Preis')
ax.set_title('Beispiel für den Einkommenseffekt')

# Füge Raster und Legende hinzu
ax.grid(True)
ax.legend()

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Schauen wir uns ein Beispiel an. Angenommen, der Preis eines Gutes sinkt von 10 $ auf 8 $, und die nachgefragte Menge des Verbrauchers steigt von 5 auf 9 Einheiten.")
]
#v(20pt)
#only("2-")[- Preis sinkt von \$10 auf \$8]
#v(10pt)
#only("3-")[- Nachgefragte Menge steigt von 5 auf 9 Einheiten]
#v(10pt)
#only("4-")[- Substitutionseffekt: Menge steigt von 5 auf 7 Einheiten]
#v(10pt)
#only("5-")[- Einkommenseffekt: Menge steigt von 7 auf 9 Einheiten]
#only("2")[
#voiceover("In diesem Fall sinkt der Preis von 10 $ auf 8 $.")
]
#only("3")[
#voiceover("Infolgedessen steigt die nachgefragte Menge des Verbrauchers von 5 auf 9 Einheiten.")
]
#only("4")[
#voiceover("Der Substitutionseffekt erklärt die Zunahme der Menge von 5 auf 7 Einheiten.")
]
#only("5")[
#voiceover("Und der Einkommenseffekt erklärt die weitere Zunahme von 7 auf 9 Einheiten, da das reale Einkommen des Verbrauchers aufgrund der Preissenkung gestiegen ist.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]
#v(40pt)
#only("1-")[- Der Einkommenseffekt ist ein Bestandteil des Preiseffekts]
#v(20pt)
#only("2-")[- Tritt aufgrund einer Änderung des realen Einkommens des Verbrauchers auf]
#v(20pt)
#only("3-")[- Kann zu einer Erhöhung oder Verringerung des Konsums führen]
#only("1")[
#voiceover("Zusammenfassend ist der Einkommenseffekt einer der Bestandteile des Gesamteffekts einer Preisänderung, wie er durch die Slutsky-Zerlegung beschrieben wird.")
]
#only("2")[
#voiceover("Er tritt aufgrund der Änderung des realen Einkommens des Verbrauchers auf, wenn sich ein Preis ändert.")
]
#only("3")[
#voiceover("Je nachdem, ob das Gut normal oder inferior ist, kann der Einkommenseffekt zu einer Erhöhung oder Verringerung des Konsums des Gutes führen.")
]
]