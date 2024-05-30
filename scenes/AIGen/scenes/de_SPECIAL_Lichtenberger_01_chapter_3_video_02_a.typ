#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Auftrieb und Volumen]
#v(40pt)
Von drei unterschiedlich großen Objekten mit derselben Dichte schwimmt das mit dem mittleren Volumen. Welches andere Objekt schwimmt auch?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) das kleine]#only("2-")[#text(fill:red)[a) das kleine]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) das große]#only("3-")[#text(fill:red)[b) das große]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-3")[c) beide]#only("4-")[#text(fill:green)[c) beide]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) keines]#only("5-")[#text(fill:red)[d) keines]]
#only("1")[#voiceover("Leider falsch. Hier ist das Video.")]
#only("2")[#voiceover("Das kleine Objekt allein kann nicht das einzige andere Objekt sein, das schwimmt. Lass uns sehen warum...")]
#only("3")[#voiceover("Ähnlich kann das große Objekt allein nicht das einzige andere Objekt sein, das schwimmt.")]
#only("4")[#voiceover("Die richtige Antwort ist, dass sowohl das kleine als auch das große Objekt ebenfalls schwimmen werden. Wenn Objekte die gleiche Dichte haben, wird ihr Auftriebsverhalten unabhängig von der Größe gleich sein.")]
#only("5")[#voiceover("Es kann also nicht sein, dass weder das kleine noch das große Objekt schwimmt, während das mittlere es tut.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[- Objekte mit derselben Dichte haben die gleichen Auftriebseigenschaften 🎈]
#v(20pt)
#only("2-")[- Wenn ein Objekt schwimmt, werden alle Objekte mit derselben Dichte schwimmen, unabhängig von der Größe 📏]
#v(20pt)
#only("3-")[- Da das mittlere Objekt schwimmt, müssen auch die kleinen und großen Objekte schwimmen 🌊]
#v(20pt)
#only("4-")[Daher ist die richtige Antwort #text(weight: "bold")[c) beide] ✅]
#only("1")[#voiceover("Lass uns das Schritt für Schritt durchgehen. Zuerst ist es wichtig zu verstehen, dass Objekte mit derselben Dichte die gleichen Auftriebseigenschaften haben.")]
#only("2")[#voiceover("Das bedeutet, dass wenn ein Objekt einer bestimmten Dichte schwimmt, alle Objekte mit derselben Dichte ebenfalls schwimmen werden, unabhängig von ihrer Größe.")]
#only("3")[#voiceover("In diesem Fall wird uns gesagt, dass das mittelgroße Objekt schwimmt. Daher müssen sowohl das kleine als auch das große Objekt, die die gleiche Dichte haben, ebenfalls schwimmen.")]
#only("4")[#voiceover("Die richtige Antwort ist also c) beide, das kleine und das große Objekt, werden zusammen mit dem mittleren Objekt schwimmen.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

objects = ['Klein', 'Mittel', 'Groß']
y_pos = np.arange(len(objects))

plt.figure(figsize=(8, 4))
bars = plt.barh(y_pos, [1, 2, 3], align='center', alpha=0.5)
bars[0].set_color('lightblue')
bars[1].set_color('skyblue')  
bars[2].set_color('lightblue')  
plt.yticks(y_pos, objects)
plt.xlabel('Größe')
plt.title('Objekte mit gleicher Dichte')
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung. Wir haben drei Objekte unterschiedlicher Größe, aber mit derselben Dichte, dargestellt durch die Balken.")
]
#only("2")[
#voiceover("Wenn das mittlere Objekt, dargestellt in einem dunkleren Blau, schwimmt, müssen auch die kleinen und großen Objekte, in hellblau, schwimmen.")
]
#only("3")[
#voiceover("Die Größe spielt für den Auftrieb keine Rolle, wenn die Dichte gleich ist. Deshalb ist die richtige Antwort, dass sowohl das kleine als auch das große Objekt ebenfalls schwimmen werden.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[- Dichte, nicht Größe, bestimmt den Auftrieb 🎈]
#v(20pt)  
#only("2-")[- Objekte mit derselben Dichte zeigen das gleiche Auftriebsverhalten 🌊]
#v(20pt)
#only("3-")[- Wenn eines schwimmt, schwimmen alle! 🛥️]
#only("1")[
#voiceover("Zusammenfassend ist die wichtigste Erkenntnis, dass die Dichte, nicht die Größe, den Auftrieb eines Objekts bestimmt.")
]
#only("2")[
#voiceover("Objekte mit derselben Dichte zeigen das gleiche Auftriebsverhalten, unabhängig von ihrer Größe.")
]
#only("3")[
#voiceover("Wenn also ein Objekt einer bestimmten Dichte schwimmt, werden alle Objekte dieser Dichte schwimmen, egal wie groß oder klein sie sind!")
]
]