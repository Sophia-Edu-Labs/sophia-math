#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Brüche multiplizieren]
#v(40pt)
#only("1-")[- Übung: Multipliziere 4 mit 2/3. Optionen: a) 4/3 b) 6/3 c) 8/3 d) 10/3]
#v(20pt)
#only("2-")[#text(fill:green)[- c) 8/3]]
#v(20pt)
#only("3-")[#text(fill:red)[- a) 4/3]]
#v(20pt)
#only("4-")[#text(fill:red)[- b) 6/3]]
#v(20pt)
#only("5-")[#text(fill:red)[- d) 10/3]]
#only("1")[#voiceover("Großartig, dass Du die Frage richtig beantwortet hast! Lass uns die Lösung Schritt für Schritt durchgehen.")]
#only("2")[#voiceover("Die richtige Antwort ist c) 8/3. Jetzt schauen wir uns an, warum das die richtige Antwort ist.")]
#only("3")[#voiceover("Option a) 4/3 ist falsch. Wenn Du 4 mit 2/3 multiplizierst, multiplizierst Du den Zähler 4 mit 2, nicht mit 1.")]
#only("4")[#voiceover("Option b) 6/3 ist auch falsch. Dies wäre das Ergebnis, wenn Du 3 mit 2/3 multiplizieren würdest, nicht 4.")]
#only("5")[#voiceover("Option d) 10/3 ist ebenfalls falsch. Dies wäre das Ergebnis, wenn Du 5 mit 2/3 multiplizieren würdest, nicht 4.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt Lösung]
#v(40pt)
#only("1-")[- Schritt 1: Schreibe die ganze Zahl als Bruch: $4 = 4/1$]
#v(20pt)
#only("2-")[- Schritt 2: Multipliziere die Zähler: $4 dot 2 = 8$]
#v(20pt)
#only("3-")[- Schritt 3: Multipliziere die Nenner: $1 dot 3 = 3$]
#v(20pt)
#only("4-")[- Schritt 4: Kombiniere die Ergebnisse: $8/3$]
#only("1")[#voiceover("Zuerst schreiben wir die ganze Zahl 4 als Bruch, das ist 4 über 1.")]
#only("2")[#voiceover("Als nächstes multiplizieren wir die Zähler. Vier mal zwei ergibt acht.")]
#only("3")[#voiceover("Dann multiplizieren wir die Nenner. Eins mal drei ergibt drei.")]
#only("4")[#voiceover("Schließlich kombinieren wir die Ergebnisse zu acht über drei.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung der Schritte]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt

# Create the fractions
fractions = ["4/1", "2/3", "8/3"]
values = [4/1, 2/3, 8/3]

# Plotting the fractions
plt.figure(figsize=(8, 6))
plt.bar(fractions, values, color=['blue', 'orange', 'green'])
plt.ylabel('Value')
plt.title('Multiplying Fractions: 4 * 2/3')
plt.ylim(0, max(values) + 1)  # Adjust y-axis for better scaling
plt.show()

```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[- Visualisiere: $4/1$, $2/3$, $8/3$]
#only("2-")[- $4/1$ ist die ganze Zahl 4 als Bruch.]
#only("3-")[- $2/3$ ist der Bruch, mit dem wir multiplizieren.]
#only("4-")[- $8/3$ ist das Endergebnis.]
#only("1")[#voiceover("Lass uns die Schritte visualisieren. Hier haben wir die Brüche vier über eins, zwei über drei und das Endergebnis acht über drei.")]
#only("2")[#voiceover("Vier über eins repräsentiert die ganze Zahl vier als Bruch.")]
#only("3")[#voiceover("Zwei über drei ist der Bruch, mit dem wir multiplizieren.")]
#only("4")[#voiceover("Acht über drei ist das Endergebnis der Multiplikation.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[- Multiplikation einer ganzen Zahl mit einem Bruch: $a dot b/c = (a dot b)/c$]
#v(20pt)
#only("2-")[- Beispiel: $4 dot 2/3 = 8/3$]
#v(20pt)
#only("3-")[- Multipliziere immer die Zähler und behalte den Nenner bei.]
#only("1")[#voiceover("Zusammenfassend, wenn Du eine ganze Zahl mit einem Bruch multiplizierst, multiplizierst Du den Zähler des Bruchs mit der ganzen Zahl und behältst den Nenner bei.")]
#only("2")[#voiceover("Zum Beispiel, vier mal zwei Drittel ergibt acht Drittel.")]
#only("3")[#voiceover("Denke immer daran, die Zähler zu multiplizieren und den Nenner beizubehalten.")]
]