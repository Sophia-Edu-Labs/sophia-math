#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Druckänderung mit der Tiefe]
#v(40pt)
Der kleine Fisch taucht von einer Tiefe von 10 m auf eine Tiefe von 30 m. Was passiert mit dem Druck?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[b) Er verdreifacht sich ungefähr.]#only("2-")[#text(fill:green)[b) Er verdreifacht sich ungefähr.]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[a) Er verdoppelt sich ungefähr.]#only("3-")[#text(fill:red)[a) Er verdoppelt sich ungefähr.]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) Er vervierfacht sich ungefähr.]#only("4-")[#text(fill:red)[c) Er vervierfacht sich ungefähr.]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) Er bleibt ungefähr gleich.]#only("5-")[#text(fill:red)[d) Er bleibt ungefähr gleich.]]

#only("1")[#voiceover("Leider war das nicht korrekt. Hier ist das Video zur Erklärung.")]
#only("2")[#voiceover("Der Druck verdreifacht sich ungefähr, wenn der Fisch von 10 m auf 30 m Tiefe taucht.")]
#only("3")[#voiceover("Der Druck verdoppelt sich nicht nur, da die Tiefenänderung mehr als eine Verdopplung ist.")]
#only("4")[#voiceover("Der Druck vervierfacht sich auch nicht, da die Tiefenänderung nicht so groß ist.")]
#only("5")[#voiceover("Und der Druck bleibt definitiv nicht gleich, da er mit der Tiefe zunimmt.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Erklärung]
#v(40pt)
#only("1-")[- Der Wasserdruck nimmt um etwa 1 bar für alle 10 m Tiefe zu 🌊]
#v(20pt)
#only("2-")[- Bei 10 m Tiefe: Druck $≈$ 1 bar]
#v(10pt)
#only("3-")[- Bei 30 m Tiefe: Druck $≈$ 3 bar]
#v(20pt)
#only("4-")[- Druckänderung: 3 bar $÷$ 1 bar = 3 mal 📈]
#v(20pt)
#only("5-")[Also, der Druck #text(weight: "bold")[verdreifacht sich ungefähr], wenn der Fisch von 10 m auf 30 m Tiefe taucht. 🐠]

#only("1")[#voiceover("Lass uns das Schritt für Schritt aufschlüsseln. Wir wissen, dass der Wasserdruck um etwa 1 bar für alle 10 Meter Tiefe zunimmt.")]
#only("2")[#voiceover("Also beträgt der Druck in einer Tiefe von 10 Metern ungefähr 1 bar.")]
#only("3")[#voiceover("Und in einer Tiefe von 30 Metern beträgt der Druck ungefähr 3 bar.")]
#only("4")[#voiceover("Um die Druckänderung zu finden, teilen wir den Druck bei 30 Metern durch den Druck bei 10 Metern. 3 geteilt durch 1 ergibt 3, also hat sich der Druck verdreifacht.")]
#only("5")[#voiceover("Daher verdreifacht sich der Druck ungefähr, wenn der Fisch von 10 Metern auf 30 Meter Tiefe taucht.")]
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

depths = [0, 10, 20, 30, 40]
pressures = [0, 1, 2, 3, 4]

plt.figure(figsize=(8, 6))
plt.plot(pressures, depths, marker='o', markersize=8, linewidth=2, label='Druck vs Tiefe')
plt.scatter([1], [10], color='blue', s=100, label='10 m Tiefe')
plt.scatter([3], [30], color='red', s=100, label='30 m Tiefe')

plt.xlabel('Druck (bar)')
plt.ylabel('Tiefe (m)')
plt.title('Druckänderung mit der Tiefe im Wasser')
plt.grid(True)
plt.legend()
plt.gca().invert_yaxis()  # Y-Achse invertieren, um die Tiefe nach unten zu zeigen
plt.show()
```,
width: 360pt),
)
]
]

#v(40pt)
#only("1-")[Hier ist ein Diagramm, das zeigt, wie sich der Druck mit der Tiefe im Wasser ändert. 📊]
#v(20pt)
#only("2-")[Der #text(fill:blue)[blaue Punkt] repräsentiert eine Tiefe von 10 m, wo der Druck etwa 1 bar beträgt.]
#v(20pt)
#only("3-")[Der #text(fill:red)[rote Punkt] repräsentiert eine Tiefe von 30 m, wo der Druck etwa 3 bar beträgt.]
#v(20pt)
#only("4-")[Der Druck #text(weight: "bold")[verdreifacht sich], wenn die Tiefe von 10 m auf 30 m #text(weight: "bold")[verdreifacht] wird. 🧮]

#only("1")[#voiceover("Dieses Diagramm veranschaulicht, wie sich der Druck mit der Tiefe im Wasser ändert.")]
#only("2")[#voiceover("Der blaue Punkt im Diagramm repräsentiert eine Tiefe von 10 Metern, wo der Druck ungefähr 1 bar beträgt.")]
#only("3")[#voiceover("Der rote Punkt repräsentiert eine Tiefe von 30 Metern, wo der Druck ungefähr 3 bar beträgt.")]
#only("4")[#voiceover("Wie du sehen kannst, verdreifacht sich der Druck, wenn die Tiefe von 10 Metern auf 30 Meter verdreifacht wird. Diese lineare Beziehung zwischen Tiefe und Druck ist ein Schlüsselkonzept zum Verständnis der Druckänderungen unter Wasser.")]
]