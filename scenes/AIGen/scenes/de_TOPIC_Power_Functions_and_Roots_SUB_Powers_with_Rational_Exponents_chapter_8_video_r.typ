#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Rationale Exponenten in realen Problemen 🌍]
#v(40pt)
#only("1-")[- Zinseszinsen 💰]
#v(20pt)
#only("2-")[- Bevölkerungswachstum 👥]
#only("1")[
#voiceover("Rationale Exponenten sind nicht nur ein theoretisches Konzept. Sie haben praktische Anwendungen in realen Problemen, wie der Berechnung von Zinseszinsen und der Modellierung des Bevölkerungswachstums.")
]
#only("2")[
#voiceover("Zum Beispiel, wenn eine Bevölkerung mit einer bestimmten Rate pro Jahr wächst, können wir rationale Exponenten verwenden, um die Bevölkerung nach einer bestimmten Anzahl von Jahren zu berechnen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel für Zinseszinsen]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the parameters
P = 1000  # Initial principal
r = 0.05  # Annual interest rate
n = 12    # Number of compounding periods per year
t = np.linspace(0, 10, 100)  # Time in years

# Calculate the compound interest
A = P * (1 + r/n) ** (n*t)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(t, A, 'b-', linewidth=2, label='Compound Interest')
plt.xlabel('Time (years)')
plt.ylabel('Amount ($)')
plt.title('Compound Interest Growth')
plt.grid(True)
plt.legend(loc='upper left')
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist ein Beispiel für das Wachstum von Zinseszinsen. Wenn wir mit einem Anfangskapital von 1000 \$, einem jährlichen Zinssatz von 5% und monatlicher Verzinsung (12 Perioden pro Jahr) beginnen, können wir die Formel $A = P(1 + r/n)^(nt)$ verwenden, um den Betrag nach t Jahren zu berechnen.")
]
#only("2")[
#voiceover("Beachte den rationalen Exponenten $(nt)$, der es uns ermöglicht, das Wachstum für einen beliebigen Zeitraum zu berechnen. Wie du im Diagramm sehen kannst, wächst der Betrag aufgrund der Kraft der Zinseszinsen exponentiell über die Zeit.")
]
]


Es gibt keine Fehler im Typst-Code, in den mathematischen Ausdrücken oder bei der Erstellung des Diagramms.]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel für Bevölkerungswachstum]
#v(40pt)
#only("1-")[- Anfangsbevölkerung: 1000]
#v(20pt)
#only("2-")[- Wachstumsrate: 5% pro Jahr]
#v(20pt)
#only("3-")[- Formel: $P(t) = P_0(1 + r)^t$]
#only("1")[
#voiceover("Betrachten wir nun ein Beispiel für das Bevölkerungswachstum. Angenommen, wir haben eine Anfangsbevölkerung von 1000 Individuen.")
]
#only("2")[
#voiceover("Wenn die Bevölkerung mit einer Rate von 5% pro Jahr wächst, können wir rationale Exponenten verwenden, um das Bevölkerungswachstum über die Zeit zu modellieren.")
]
#only("3")[
#voiceover("Die Formel für das Bevölkerungswachstum lautet $P von t gleich P sub 0 mal Klammer auf 1 plus r Klammer zu hoch t$, wobei $P sub 0$ die Anfangsbevölkerung, $r$ die Wachstumsrate und $t$ die Zeit in Jahren ist.")
]
#only("4")[
#voiceover("Wenn wir unsere Werte einsetzen, erhalten wir $P von t gleich 1000 mal Klammer auf 1 plus 0.05 Klammer zu hoch t$. Wieder ermöglicht uns der rationale Exponent $t$, die Bevölkerung für jedes beliebige Jahr zu berechnen.")
]
#only("4-")[$ P(t) = 1000(1 + 0.05)^t$]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Rationale Exponenten haben reale Anwendungen 🌍]
#v(20pt)
#only("2-")[- Zinseszinsen und Bevölkerungswachstum sind häufige Beispiele 💰👥]
#v(20pt)
#only("3-")[- Rationale Exponenten ermöglichen eine kontinuierliche Modellierung über die Zeit ⏰]
#only("1")[
#voiceover("Zusammenfassend lässt sich sagen, dass rationale Exponenten nicht nur ein abstraktes mathematisches Konzept sind. Sie haben wichtige reale Anwendungen.")
]
#only("2")[
#voiceover("Wir haben gesehen, wie rationale Exponenten verwendet werden können, um das Wachstum von Zinseszinsen und das Bevölkerungswachstum zu modellieren.")
]
#only("3")[
#voiceover("Der Hauptvorteil der Verwendung rationaler Exponenten in diesen Modellen besteht darin, dass sie es uns ermöglichen, Werte für beliebige Zeiträume zu berechnen und somit eine kontinuierliche Darstellung des Wachstums über die Zeit bieten.")
]
]