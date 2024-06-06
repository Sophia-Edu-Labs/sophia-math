#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Gleichungen mit n-ten Wurzeln lösen]
#v(40pt)
Übung 1: Löse $root(3, x) = 2$
#v(20pt)
a) 4
b) 6 
c) 8
d) 10
#v(40pt)
#only("1-")[#text(fill:green)[c) 8]]
#only("2-")[a) 4 #text(fill:red)[b) 6] d) 10]

#only("1")[
#voiceover("Das war leider nicht korrekt. Lass uns gemeinsam die richtige Lösung anschauen.")
]
#only("2")[
#voiceover("Die anderen Optionen sind falsch. 4 und 6 sind zu klein, und 10 ist zu groß. Lass uns Schritt für Schritt lösen, warum 8 die richtige Antwort ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[Gegeben: $root(3, x) = 2$]
#v(20pt)
#only("2-")[Schritt 1: Beide Seiten hoch drei nehmen]
#v(10pt)
$(root(3, x))^3 = 2^3$
#v(10pt)
$x = 8$
#v(20pt)
#only("3-")[Daher ist die Lösung $x = 8$. 🎉]

#only("1")[
#voiceover("Gegeben ist die Gleichung Kubikwurzel von x gleich 2.")
]
#only("2")[
#voiceover("Um x zu lösen, nehmen wir beide Seiten der Gleichung hoch drei. Auf der linken Seite heben sich Kubikwurzel und Kubik auf, sodass nur x übrig bleibt. Auf der rechten Seite ergibt 2 hoch drei 8.")
]
#only("3")[
#voiceover("Daher ist die Lösung x gleich 8. Wir können dies überprüfen, indem wir 8 für x in die ursprüngliche Gleichung einsetzen. Die Kubikwurzel von 8 ist tatsächlich 2, also ist unsere Lösung korrekt.")
]
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

x = np.linspace(0, 10, 100)
y = np.cbrt(x)

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='$root(3, x)$')
plt.scatter([8], [2], color='red', label='Lösung: (8, 2)')
plt.grid(True)
plt.legend()
plt.xlabel('x')
plt.ylabel('$root(3, x)$')
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Das Diagramm zeigt die Funktion $y = root(3, x)$.]
#v(20pt)
#only("2-")[Der rote Punkt (8, 2) ist die Lösung der Gleichung $root(3, x) = 2$. 📍]

#only("1")[
#voiceover("Dieses Diagramm zeigt die Funktion y gleich Kubikwurzel von x.")
]
#only("2")[
#voiceover("Der rote Punkt mit den Koordinaten 8 Komma 2 stellt die Lösung unserer Gleichung Kubikwurzel von x gleich 2 dar. An diesem Punkt ist der y-Wert, also die Kubikwurzel von x, 2, und der entsprechende x-Wert ist 8.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[- Um Gleichungen mit n-ten Wurzeln zu lösen, nimm beide Seiten hoch n. 📈]
#v(20pt)
#only("2-")[- Dadurch hebt sich die n-te Wurzel auf einer Seite auf, sodass Du die Variable lösen kannst. ✅]
#v(20pt)
#only("3-")[- Überprüfe immer Deine Lösung, indem Du sie in die ursprüngliche Gleichung einsetzt. 🔍]

#only("1")[
#voiceover("Um Gleichungen mit n-ten Wurzeln zu lösen, ist es wichtig, beide Seiten der Gleichung hoch n zu nehmen.")
]
#only("2")[
#voiceover("Diese Operation hebt die n-te Wurzel auf einer Seite auf, sodass Du eine einfachere Gleichung erhältst, die Du für die Variable lösen kannst.")
]
#only("3")[
#voiceover("Denke immer daran, Deine Lösung zu überprüfen, indem Du sie in die ursprüngliche Gleichung einsetzt. Dies stellt sicher, dass Deine Lösung korrekt ist.")
]
]