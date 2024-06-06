#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Bevölkerungswachstum 📈]
#v(40pt)
#only("-1")[- Anfangsbevölkerung: 1000]
#only("2-")[- Wachstumsrate: 5% pro Jahr]
#only("3-")[- Zeitraum: 3 Jahre]
#only("4-")[- Formel: $P_t = P_0 (1 + r)^t$]
#only("5-")[- $P_3 = 1000 (1 + 0.05)^3$]
#only("6-")[- $P_3 = 1000 (1.05)^3$]
#only("7-")[- $P_3 = 1000 * 1.157625$]
#only("8-")[- $P_3 = 1157.625$]
#only("9-")[- $P_3 ≈ 1157.63$ (gerundet)]

#only("1")[
#voiceover("Leider ist das nicht korrekt. Lass uns Schritt für Schritt durchgehen, wie wir das lösen können. Wir haben eine Anfangsbevölkerung von 1000 gegeben.")
]
#only("2")[
#voiceover("Die Bevölkerung wächst mit einer Rate von 5% pro Jahr.")
]
#only("3")[
#voiceover("Und wir wollen die Bevölkerung nach 3 Jahren wissen.")
]
#only("4")[
#voiceover("Um dies zu berechnen, können wir die Formel für exponentielles Wachstum verwenden: P_t gleich P_0 mal in Klammern 1 plus r hoch t, wobei P_t die Bevölkerung zum Zeitpunkt t ist, P_0 die Anfangsbevölkerung, r die Wachstumsrate und t die Zeit in Jahren ist.")
]
#only("5")[
#voiceover("Setzen wir unsere Werte ein, erhalten wir: P_3 gleich 1000 mal in Klammern 1 plus 0.05 hoch 3.")
]
#only("6")[
#voiceover("Vereinfacht ergibt das: P_3 gleich 1000 mal 1.05 hoch 3.")
]
#only("7")[
#voiceover("Berechnet ergibt das: P_3 gleich 1000 mal 1.157625.")
]
#only("8")[
#voiceover("Multipliziert ergibt das: P_3 gleich 1157.625.")
]
#only("9")[
#voiceover("Gerundet auf zwei Dezimalstellen ist unsere endgültige Antwort ungefähr 1157.63. Nach 3 Jahren wird die Bevölkerung also etwa 1158 Personen betragen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Bevölkerungswachstum im Laufe der Zeit 📈]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Anfangsbevölkerung und Wachstumsrate
P0 = 1000
r = 0.05

# Zeitpunkte (in Jahren)
t = np.arange(0, 10)

# Bevölkerung zu jedem Zeitpunkt berechnen
P = P0 * (1 + r)**t

# Diagramm erstellen
plt.figure(figsize=(8, 6))
plt.plot(t, P, 'bo-', linewidth=2, markersize=8)
plt.xlabel('Zeit (Jahre)', fontsize=14)
plt.ylabel('Bevölkerung', fontsize=14)
plt.title('Bevölkerungswachstum im Laufe der Zeit', fontsize=16)
plt.xticks(t)
plt.grid(True)

# Bevölkerung im Jahr 3 hervorheben
plt.plot(3, P[3], 'ro', markersize=12)
plt.annotate(f'Bevölkerung im Jahr 3: {P[3]:.2f}', xy=(3, P[3]), xytext=(4, P[3]-100), 
             arrowprops=dict(facecolor='black', shrink=0.05))

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist ein Diagramm, das zeigt, wie die Bevölkerung im Laufe der Zeit wächst. Die blaue Linie stellt die Bevölkerung in jedem Jahr dar. Du kannst den roten Punkt sehen, der die Bevölkerung im Jahr 3 hervorhebt, die etwa 1158 beträgt, genau wie wir berechnet haben.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]
#v(40pt)
#only("1-")[- Formel für exponentielles Wachstum: $P_t = P_0 (1 + r)^t$]
#only("2-")[- Werte einsetzen, vereinfachen, berechnen]
#only("3-")[- Diagramm kann Wachstum im Laufe der Zeit visualisieren]
#only("1")[
#voiceover("Die wichtigsten Punkte sind: Die Formel für exponentielles Wachstum lautet P_t gleich P_0 mal in Klammern 1 plus r hoch t.")
]
#only("2")[
#voiceover("Um sie zu verwenden, setze die gegebenen Werte ein, vereinfache den Ausdruck und berechne dann das Ergebnis.")
]
#only("3")[
#voiceover("Ein Diagramm kann ein hilfreiches Werkzeug sein, um zu visualisieren, wie die Bevölkerung im Laufe der Zeit wächst. Großartige Arbeit bei diesem Problem!")
]
]