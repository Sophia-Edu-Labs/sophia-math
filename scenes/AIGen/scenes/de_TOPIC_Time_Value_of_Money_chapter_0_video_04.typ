#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Zeitwert des Geldes Rückblick 💰⏰]

#v(40pt)

#only("1-")[- Geld heute ist mehr wert als derselbe Betrag in der Zukunft]

#v(20pt)

#only("2-")[- Potenzielle Ertragskraft durch:
  - Investitionsmöglichkeiten 📈
  - Zinsen 🏦
  - Inflation 💸]

#v(40pt)

#only("3-")[
  #box()[
    #morphchildren(id: "plot")[
      #figure(
        pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create data
x = np.array([0, 1, 2, 3, 4, 5])
y = 100 * (1.05 ** x)

# Create plot
plt.figure(figsize=(6, 4))
plt.plot(x, y, 'o-', color='blue', label='Money Growth')
plt.xlabel('Time (years)')
plt.ylabel('Money Value ($)')
plt.title('Time Value of Money')
plt.grid(True)
plt.legend()
plt.tight_layout()
plt.show()
```, width: 360pt),
      )
    ]
  ]
]

#only("1")[#voiceover("In diesem Rückblick werden wir das Schlüsselkonzept des Zeitwerts des Geldes erneut betrachten. Die Hauptidee ist, dass Geld, das heute verfügbar ist, mehr wert ist als derselbe Betrag in der Zukunft.")]

#only("2")[#voiceover("Dies liegt an der potenziellen Ertragskraft des Geldes im Laufe der Zeit. Geld kann durch Investitionsmöglichkeiten wachsen, Zinsen auf Sparkonten verdienen oder durch Inflation an Kaufkraft verlieren.")]

#only("3")[#voiceover("Hier ist ein Diagramm, das den Zeitwert des Geldes veranschaulicht. Du kannst sehen, dass der Wert des Geldes im Laufe der Zeit aufgrund des Zinseszinseffekts wächst. In diesem Beispiel würde $100 heute nach 5 Jahren bei einem jährlichen Zinssatz von 5% auf etwa $128 anwachsen.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]

#v(40pt)

#only("1-")[- Barwert (PV) vs. Zukunftswert (FV)]

#v(20pt)

#only("2-")[- Abzinsung: PV = FV / (1 + r)^n]

#v(20pt)

#only("3-")[- Aufzinsung: FV = PV × (1 + r)^n]

#only("1")[#voiceover("Der Zeitwert des Geldes führt die Konzepte des Barwerts, oder PV, und des Zukunftswerts, oder FV, ein. PV ist der Wert des Geldes heute, während FV der Wert des Geldes zu einem zukünftigen Zeitpunkt ist.")]

#only("2")[#voiceover("Um den Barwert zu berechnen, verwenden wir die Abzinsung. Die Formel lautet PV gleich FV geteilt durch Klammer auf 1 plus r Klammer zu hoch n, wobei r der Abzinsungssatz pro Periode und n die Anzahl der Perioden ist.")]

#only("3")[#voiceover("Umgekehrt verwenden wir zur Berechnung des Zukunftswerts die Aufzinsung. Die Formel lautet FV gleich PV mal Klammer auf 1 plus r Klammer zu hoch n. So können wir das Wachstum des Geldes im Laufe der Zeit berechnen.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Praktische Anwendungen 🏠🏭]

#v(40pt)

#only("1-")[- Immobilieninvestitionen 🏠]

#v(20pt)

#only("2-")[- Geschäftsentscheidungen 💼]

#v(20pt)

#only("3-")[- Persönliche Finanzplanung 👛]

#only("1")[#voiceover("Der Zeitwert des Geldes hat viele praktische Anwendungen. Im Immobilienbereich wird er verwendet, um die Rentabilität von Investitionen zu bewerten, indem der Barwert zukünftiger Cashflows berücksichtigt wird.")]

#only("2")[#voiceover("Unternehmen nutzen diese Konzepte, um Entscheidungen über Investitionen, Kredite und Budgetierung zu treffen. Sie können den Wert verschiedener Cashflows über die Zeit vergleichen.")]

#only("3")[#voiceover("Auf persönlicher Ebene kann das Verständnis des Zeitwerts des Geldes bei der Finanzplanung helfen. Es betont die Bedeutung des frühen Sparens und Investierens, um vom Zinseszinseffekt im Laufe der Zeit zu profitieren.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit 🎓]

#v(40pt)

#only("1-")[- Geld hat einen Zeitwert]

#v(20pt)

#only("2-")[- PV, FV, Abzinsung, Aufzinsung]

#v(20pt)

#only("3-")[- Entscheidend für finanzielle Entscheidungen 💡]

#only("1")[#voiceover("Zusammenfassend ist die wichtigste Lektion, dass Geld einen Zeitwert hat. Ein Dollar heute ist mehr wert als ein Dollar in der Zukunft.")]

#only("2")[#voiceover("Wir haben über den Barwert, den Zukunftswert und die Prozesse der Abzinsung und Aufzinsung gelernt, um Geld über die Zeit zu bewegen.")]

#only("3")[#voiceover("Das Verständnis dieser Konzepte ist entscheidend für fundierte finanzielle Entscheidungen, sei es im persönlichen Leben, im Geschäft oder bei Investitionen. Der Zeitwert des Geldes ist ein grundlegendes Prinzip der Finanzwirtschaft.")]

]