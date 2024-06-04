#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Städtisches Wasserversorgungssystem]
#v(40pt)
Welcher Faktor beeinflusst den Druck in einem städtischen Wasserversorgungssystem am meisten?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) Temperatur]#only("2-")[#text(fill:red)[a) Temperatur]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) Rohrmaterial]#only("3-")[#text(fill:red)[b) Rohrmaterial]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-3")[c) Höhenunterschied]#only("4-")[#text(fill:green)[c) Höhenunterschied]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) Wasserhärte]#only("5-")[#text(fill:red)[d) Wasserhärte]]
#only("1")[#voiceover("Das war leider nicht korrekt. Hier ist das Video zur Erklärung.")]
#only("2")[#voiceover("Temperatur beeinflusst den Wasserdruck in einem städtischen Versorgungssystem nicht wesentlich.")]
#only("3")[#voiceover("Auch das Rohrmaterial hat keinen großen Einfluss auf den Wasserdruck.")]
#only("4")[#voiceover("Der Höhenunterschied ist tatsächlich der Schlüsselfaktor. Der Wasserdruck nimmt mit zunehmender Höhe ab, da gegen die Schwerkraft gearbeitet wird.")]
#only("5")[#voiceover("Wasserhärte kann zwar die Rohre im Laufe der Zeit beeinflussen, hat aber keinen direkten Einfluss auf den Wasserdruck.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Erklärung]
#v(40pt)
#only("1-")[Hier ist der Grund, warum der Höhenunterschied der Schlüsselfaktor ist: 🗻]
#v(20pt)
#only("2-")[- Der Wasserdruck wird durch das Gewicht des Wassers verursacht 💧]
#only("3-")[- Je höher die Wassersäule, desto größer der Druck am Boden 📏]
#only("4-")[- Dies wird durch die hydrostatische Druckgleichung beschrieben: $p = rho g h$ 📜]
#only("5-")[  wobei $p$ der Druck ist, $rho$ die Wasserdichte, $g$ die Schwerkraft und $h$ die Höhe]
#only("1")[#voiceover("Lass uns verstehen, warum der Höhenunterschied der wichtigste Faktor für den Wasserdruck in einem städtischen Versorgungssystem ist.")]
#only("2")[#voiceover("Der Wasserdruck wird grundlegend durch das Gewicht des darüber liegenden Wassers verursacht.")]
#only("3")[#voiceover("Je höher die Wassersäule, desto größer der Druck am Boden aufgrund des erhöhten Wassergewichts.")]
#only("4")[#voiceover("Diese Beziehung wird durch die hydrostatische Druckgleichung beschrieben: Druck ist gleich Dichte mal Schwerkraft mal Höhe.")]
#only("5")[#voiceover("In dieser Gleichung steht p für Druck, rho für die Dichte des Wassers, g für die Erdbeschleunigung und h für die Höhe der Wassersäule.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt

fig, ax = plt.subplots(figsize=(8, 6))

# Draw the ground
ax.plot([-1, 11], [0, 0], 'k', linewidth=2)

# Draw the reservoir
ax.add_patch(plt.Rectangle((0, 0), 4, 10, fill=True, color='skyblue'))

# Draw the pipes
pipe_x = [4, 4, 6, 6, 8, 8]
pipe_y = [10, 4, 4, 2, 2, 0]
ax.plot(pipe_x, pipe_y, 'k', linewidth=2)

# Draw the buildings
ax.add_patch(plt.Rectangle((5.7, 0), 0.6, 4, fill=True, color='tan'))
ax.add_patch(plt.Rectangle((7.7, 0), 0.6, 2, fill=True, color='tan'))

# Add labels
ax.text(2, 11, 'Reservoir', ha='center')
ax.text(5, 4.5, 'Building 1', ha='center')
ax.text(7, 2.5, 'Building 2', ha='center')

# Add pressure arrows
ax.arrow(6, 1, 0, -0.5, head_width=0.2, head_length=0.2, fc='r', ec='r')
ax.arrow(8, 0.5, 0, -0.3, head_width=0.2, head_length=0.2, fc='r', ec='r')

ax.set_xlim(-1, 11)
ax.set_ylim(-1, 12)
ax.set_aspect('equal')
ax.axis('off')

plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[In diesem Diagramm:]
#v(20pt)
#only("2-")[- Das Reservoir befindet sich auf der höchsten Erhebung 🌊]
#only("3-")[- Wasser fließt durch die Rohre zu den Gebäuden hinunter 🏙️]
#only("4-")[- Der Druck (rote Pfeile) ist im niedrigsten Gebäude am höchsten 🔽]
#only("5-")[Dies liegt daran, dass es die höchste Wassersäule über sich hat 📏]
#only("1")[#voiceover("Lass uns dieses Konzept mit einem einfachen städtischen Wasserversorgungssystem visualisieren.")]
#only("2")[#voiceover("Das Wasserreservoir befindet sich auf der höchsten Erhebung.")]
#only("3")[#voiceover("Wasser fließt durch ein Netzwerk von Rohren zu den Gebäuden in der Stadt hinunter.")]
#only("4")[#voiceover("Der Wasserdruck, dargestellt durch die roten Pfeile, ist im Gebäude auf der niedrigsten Erhebung am höchsten.")]
#only("5")[#voiceover("Dies liegt daran, dass dieses Gebäude die höchste Wassersäule über sich hat, die den größten Druck ausübt.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Der Höhenunterschied ist der Schlüsselfaktor, der den Wasserdruck in einem städtischen Versorgungssystem beeinflusst 🗻]
#v(20pt)
#only("2-")[- Dies ist auf die hydrostatische Druckgleichung zurückzuführen: $p = rho g h$ 📜]
#v(20pt) 
#only("3-")[- Je höher die Wassersäule, desto größer der Druck am Boden 📏]
#v(20pt)
#only("4-")[- Andere Faktoren wie Temperatur, Rohrmaterial und Wasserhärte haben nur minimalen Einfluss 🌡️🔧💧]
#only("1")[#voiceover("Zusammengefasst ist der Höhenunterschied der primäre Faktor, der den Wasserdruck in einem städtischen Versorgungssystem beeinflusst.")]
#only("2")[#voiceover("Dies ist eine direkte Folge der hydrostatischen Druckgleichung, die besagt, dass der Druck proportional zur Höhe der Wassersäule ist.")]
#only("3")[#voiceover("Je höher die Wassersäule, desto größer der Druck am Boden aufgrund des Gewichts des darüber liegenden Wassers.")]
#only("4")[#voiceover("Während Faktoren wie Temperatur, Rohrmaterial und Wasserhärte einen gewissen Einfluss haben können, ist ihr Einfluss im Vergleich zur überwiegenden Bedeutung des Höhenunterschieds minimal.")]
]