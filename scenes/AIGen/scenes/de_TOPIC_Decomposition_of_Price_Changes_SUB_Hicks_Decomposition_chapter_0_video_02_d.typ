#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Übung 1]
#v(40pt)
Was hält die Hicks-Zerlegung konstant?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) Einkommen]#only("2-")[#text(fill:red)[a) Einkommen]]
#v(10pt)
// Von Anfang an ist die Option grün, weil sie richtig ist.
#text(fill:green)[b) Nutzen]
#v(10pt) 
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[c) Preis]#only("3-")[#text(fill:red)[c) Preis]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[d) Menge]#only("4-")[#text(fill:red)[d) Menge]]
#v(40pt)

#only("1")[#voiceover("Leider nicht ganz richtig. Hier ist die Erklärung.")]
// Erkläre kurz, warum a falsch ist
#only("2")[#voiceover("Option a, Einkommen, ist falsch, weil die Hicks-Zerlegung das Einkommen nicht konstant hält.")]
// Erkläre kurz, warum c falsch ist  
#only("3")[#voiceover("Option c, Preis, ist ebenfalls falsch. Die Hicks-Zerlegung berücksichtigt Preisänderungen, daher werden die Preise nicht konstant gehalten.")]
// Erkläre kurz, warum d falsch ist
#only("4")[#voiceover("Und Option d, Menge, ist auch falsch. Die Hicks-Zerlegung betrachtet, wie sich Mengen als Reaktion auf Preisänderungen ändern, daher werden die Mengen nicht konstant gehalten.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösung]
#v(40pt)
#only("1-")[Die Hicks-Zerlegung hält den #text(weight: "bold", fill:green)[Nutzen] konstant. 🎯]
#v(20pt)
#only("2-")[Sie trennt die Wirkung einer Preisänderung in:]
#v(20pt)
#only("3-")[1. #text(weight: "bold")[Substitutionseffekt]: Änderung des Konsums aufgrund von Änderungen der relativen Preise, wobei der Nutzen konstant bleibt 🔄]
#v(20pt)  
#only("4-")[2. #text(weight: "bold")[Einkommenseffekt]: Änderung des Konsums aufgrund von Änderungen der Kaufkraft, nach Anpassung für den Substitutionseffekt 💰]

#only("1")[#voiceover("Die richtige Antwort ist b) Nutzen. Die Hicks-Zerlegung hält den Nutzen konstant, wenn die Auswirkungen von Preisänderungen analysiert werden.")]
#only("2")[#voiceover("Sie unterteilt die Wirkung einer Preisänderung in zwei Komponenten:")]  
#only("3")[#voiceover("Erstens, den Substitutionseffekt, der die Änderung des Konsums aufgrund der Änderung der relativen Preise beschreibt, während der Nutzen konstant bleibt.")]
#only("4")[#voiceover("Und zweitens, den Einkommenseffekt, der die Änderung des Konsums aufgrund der Änderung der Kaufkraft beschreibt, nach Anpassung für den Substitutionseffekt.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Grafische Darstellung]
#v(40pt)  
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a figure and axis
fig, ax = plt.subplots(figsize=(8, 6))

# Plot the initial budget constraint
x = np.linspace(0, 10, 100)
y1 = 10 - x
ax.plot(x, y1, color='blue', label='Initial Budget')

# Plot the new budget constraint after price change
y2 = 20 - 2*x
ax.plot(x, y2, color='red', label='New Budget')

# Plot the initial optimal bundle
ax.scatter(4, 6, color='blue', s=100, label='Initial Bundle')

# Plot the intermediate bundle after substitution effect
ax.scatter(6, 4, color='green', s=100, label='Intermediate Bundle')

# Plot the final bundle after income effect 
ax.scatter(8, 2, color='red', s=100, label='Final Bundle')

# Add labels and legend
ax.set_xlabel('Good X')
ax.set_ylabel('Good Y') 
ax.set_title('Hicks Decomposition')
ax.legend()

plt.show()
```,
width: 360pt),
)
]
]
#v(20pt)
#only("1-")[#text(weight: "bold")[Blau]: Anfangsgleichgewicht]
#only("2-")[#text(weight: "bold")[Grün]: Nach Substitutionseffekt (Nutzen konstant)]  
#only("3-")[#text(weight: "bold")[Rot]: Endgleichgewicht nach Einkommenseffekt]

#only("1")[#voiceover("Dieses Diagramm veranschaulicht die Hicks-Zerlegung. Der blaue Punkt stellt das anfängliche Gleichgewichtsbündel dar.")]
#only("2")[#voiceover("Der grüne Punkt zeigt das Zwischenbündel nach dem Substitutionseffekt, bei dem der Nutzen konstant bleibt.")]
#only("3")[#voiceover("Schließlich stellt der rote Punkt das neue Gleichgewicht dar, nachdem auch der Einkommenseffekt berücksichtigt wurde. Die Bewegung von Blau zu Grün ist der Substitutionseffekt, und von Grün zu Rot ist der Einkommenseffekt.")] 
]