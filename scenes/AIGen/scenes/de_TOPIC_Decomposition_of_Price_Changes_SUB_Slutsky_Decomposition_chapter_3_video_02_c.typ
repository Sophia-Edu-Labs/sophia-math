#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Slutsky-Zerlegung]
#v(40pt)
Woraus besteht die Gesamtauswirkung einer Preisänderung?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) Substitutionseffekt und Nutzeneffekt]#only("2-")[#text(fill:red)[a) Substitutionseffekt und Nutzeneffekt]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) Einkommenseffekt und Nutzeneffekt]#only("3-")[#text(fill:red)[b) Einkommenseffekt und Nutzeneffekt]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-3")[c) Substitutionseffekt und Einkommenseffekt]#only("4-")[#text(fill:green)[c) Substitutionseffekt und Einkommenseffekt]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) keine der oben genannten]#only("5-")[#text(fill:red)[d) keine der oben genannten]]

#only("1")[#voiceover("Gut gemacht! Du hast die richtige Antwort ausgewählt. Lass uns sehen, warum.")]
#only("2")[#voiceover("Option a ist falsch. Der Nutzeneffekt ist kein Teil der Slutsky-Zerlegung.")]
#only("3")[#voiceover("Option b ist ebenfalls falsch aus demselben Grund - der Nutzeneffekt wird nicht berücksichtigt.")]
#only("4")[#voiceover("Option c ist korrekt! Die Slutsky-Zerlegung teilt die Gesamtauswirkung einer Preisänderung in den Substitutionseffekt und den Einkommenseffekt auf.")]
#only("5")[#voiceover("Und Option d ist falsch, da eine der oben genannten Optionen (c) tatsächlich korrekt ist.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[- Slutsky-Zerlegung: Gesamteffekt = Substitutionseffekt + Einkommenseffekt]
#v(20pt)
#only("2-")[- Substitutionseffekt: Änderung des Konsums aufgrund der Änderung der relativen Preise, bei konstantem Nutzen 🔄]
#v(20pt)
#only("3-")[- Einkommenseffekt: Änderung des Konsums aufgrund der Änderung der Kaufkraft, bei konstanten Preisen 💰]
#v(20pt)
#only("4-")[- Zusammen ergeben sie den Gesamteffekt einer Preisänderung auf den Konsum 🎯]

#only("1")[#voiceover("Die Slutsky-Zerlegung besagt, dass der Gesamteffekt einer Preisänderung gleich der Summe aus Substitutionseffekt und Einkommenseffekt ist.")]
#only("2")[#voiceover("Der Substitutionseffekt ist die Änderung des Konsums, die sich aus einer Änderung der relativen Preise ergibt, während der Nutzen des Konsumenten (oder die Zufriedenheit) konstant gehalten wird.")]
#only("3")[#voiceover("Der Einkommenseffekt ist die Änderung des Konsums, die sich aus der Änderung der Kaufkraft des Konsumenten aufgrund der Preisänderung ergibt, während die relativen Preise konstant gehalten werden.")]
#only("4")[#voiceover("Zusammen ergeben der Substitutionseffekt und der Einkommenseffekt den Gesamteffekt einer Preisänderung auf den Konsum des Konsumenten.")]
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

# Create a figure and axis
fig, ax = plt.subplots(figsize=(8, 6))

# Draw arrows
ax.annotate('', xy=(4, 4), xytext=(2, 2), arrowprops=dict(facecolor='blue', shrink=0.05))
ax.annotate('', xy=(6, 6), xytext=(4, 4), arrowprops=dict(facecolor='red', shrink=0.05))
ax.annotate('', xy=(6, 6), xytext=(2, 2), arrowprops=dict(facecolor='green', shrink=0.05))

# Add labels
ax.text(1.8, 2.2, 'Substitutionseffekt', color='blue', fontsize=12)
ax.text(4.2, 4.2, 'Einkommenseffekt', color='red', fontsize=12)
ax.text(3, 1, 'Gesamteffekt', color='green', fontsize=12)

# Remove ticks
ax.set_xticks([])
ax.set_yticks([])

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Hier ist eine visuelle Darstellung:]
#v(20pt)
#only("2-")[- #text(fill:blue)[Substitutionseffekt]: Bei konstantem Nutzen]
#v(20pt)
#only("3-")[- #text(fill:red)[Einkommenseffekt]: Änderung der Kaufkraft]
#v(20pt)
#only("4-")[- #text(fill:green)[Gesamteffekt]: Summe aus Substitutions- und Einkommenseffekt]

#only("1")[#voiceover("Lass uns die Slutsky-Zerlegung visualisieren, um sie besser zu verstehen.")]
#only("2")[#voiceover("Der blaue Pfeil stellt den Substitutionseffekt dar, der die Änderung des Konsums bei konstantem Nutzen zeigt.")]
#only("3")[#voiceover("Der rote Pfeil stellt den Einkommenseffekt dar, der die Änderung des Konsums aufgrund der Änderung der Kaufkraft zeigt.")]
#only("4")[#voiceover("Und der grüne Pfeil stellt den Gesamteffekt dar, der die Summe aus Substitutionseffekt und Einkommenseffekt ist.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[- Die Slutsky-Zerlegung trennt die Gesamtauswirkung einer Preisänderung 🔍]
#v(20pt)
#only("2-")[- Sie berücksichtigt den Substitutionseffekt (relative Preise) und den Einkommenseffekt (Kaufkraft) 🔄💰]
#v(20pt)
#only("3-")[- Der Gesamteffekt ist die Summe dieser beiden Effekte 🎯]
#v(20pt)
#only("4-")[- Das Verständnis dieser Zerlegung ist entscheidend für die Analyse des Konsumentenverhaltens 🧠]

#only("1")[#voiceover("Zusammenfassend ist die Slutsky-Zerlegung eine Methode, um die Gesamtauswirkung einer Preisänderung auf den Konsum zu trennen.")]
#only("2")[#voiceover("Sie berücksichtigt den Substitutionseffekt, der sich mit Änderungen der relativen Preise befasst, und den Einkommenseffekt, der sich mit Änderungen der Kaufkraft befasst.")]
#only("3")[#voiceover("Der Gesamteffekt einer Preisänderung ist die Summe aus Substitutionseffekt und Einkommenseffekt.")]
#only("4")[#voiceover("Das Verständnis der Slutsky-Zerlegung ist entscheidend, um zu analysieren, wie Konsumenten auf Preisänderungen reagieren, und um fundierte Entscheidungen in verschiedenen wirtschaftlichen Kontexten zu treffen.")]
]