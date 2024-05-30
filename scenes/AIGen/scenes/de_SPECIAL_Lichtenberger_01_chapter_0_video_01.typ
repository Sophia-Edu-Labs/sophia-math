#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Was ist Druck? 🌡️]
// Der Titel "Was ist Druck?" wird auf allen Folien angezeigt
#v(40pt)
#only("2-")[- Kraft, die pro Flächeneinheit ausgeübt wird]
// Die Definition von Druck wird ab Folie 2 angezeigt
#v(20pt)
#only("3-")[- Formel: $P = F/A$]
// Die Formel für Druck wird ab Folie 3 angezeigt
#v(20pt)
#only("4-")[- Beeinflusst durch Umgebung und Tiefe]
// Die Faktoren, die den Druck beeinflussen, werden ab Folie 4 angezeigt
#only("1")[
#voiceover("In diesem Video werden wir das Konzept des Drucks und die Faktoren, die ihn beeinflussen, erkunden.")
]
#only("2")[
#voiceover("Druck wird definiert als die Kraft, die pro Flächeneinheit ausgeübt wird. Mit anderen Worten, es ist ein Maß dafür, wie viel Kraft auf eine gegebene Fläche ausgeübt wird.")
]
#only("3")[
#voiceover("Mathematisch wird Druck durch die Formel P gleich F geteilt durch A dargestellt, wobei P der Druck, F die Kraft und A die Fläche ist.")
]
#only("4")[
#voiceover("Druck kann durch verschiedene Faktoren beeinflusst werden, wie die Umgebung und die Tiefe. Lass uns diese Faktoren genauer betrachten.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Umweltfaktoren 🌍]
#v(40pt)
#only("1-")[- Der atmosphärische Druck nimmt mit der Höhe ab]
#v(20pt)
#only("2-")[- Beispiel: Druck auf Meereshöhe vs. Berggipfel 🏔️]
#only("1")[
#voiceover("Einer der Umweltfaktoren, die den Druck beeinflussen, ist die Höhe. Je höher Du gehst, desto geringer wird der atmosphärische Druck.")
]
#only("2")[
#voiceover("Zum Beispiel ist der atmosphärische Druck auf Meereshöhe deutlich höher als auf einem Berggipfel. Deshalb können Deine Ohren beim schnellen Höhenwechsel knacken.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Tiefe und Druck 🌊]
#v(40pt)
#only("1-")[- Druck nimmt mit der Tiefe in Flüssigkeiten (Wasser, Luft) zu]
#v(20pt)
#only("2-")[- Beispiel: Druck an der Meeresoberfläche vs. Tiefsee 🐟]
#v(20pt)
#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Daten erstellen
depth = np.linspace(0, 10, 100)
pressure = depth * 10

# Diagramm erstellen
plt.figure(figsize=(6, 4))
plt.plot(depth, pressure, color='blue')
plt.xlabel('Tiefe (m)')
plt.ylabel('Druck (kPa)')
plt.title('Druck vs. Tiefe im Wasser')
plt.grid(True)
plt.tight_layout()
plt.show()
```,
width: 360pt),
caption: "Druck nimmt linear mit der Tiefe im Wasser zu",
)
]
]
]
#only("1")[
#voiceover("Ein weiterer Faktor, der den Druck beeinflusst, ist die Tiefe, insbesondere in Flüssigkeiten wie Wasser oder Luft. Je tiefer Du in eine Flüssigkeit eintauchst, desto höher wird der Druck.")
]
#only("2")[
#voiceover("Zum Beispiel ist der Druck an der Oberfläche des Ozeans viel geringer als in der Tiefsee. Deshalb sind Tiefseetiere an hohe Drücke angepasst.")
]
#only("3")[
#voiceover("Dieses Diagramm zeigt, wie der Druck linear mit der Tiefe im Wasser zunimmt. Je tiefer Du gehst, desto höher wird der Druck.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
// Der Titel "Zusammenfassung" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[- Druck = Kraft / Fläche]
// Der Zusammenfassungspunkt über die Definition von Druck wird ab Folie 1 angezeigt
#v(20pt)
#only("2-")[- Beeinflusst durch Umgebung (Höhe) und Tiefe]
// Der Zusammenfassungspunkt über die Faktoren, die den Druck beeinflussen, wird ab Folie 2 angezeigt
#v(20pt)
#only("3-")[- Das Verständnis von Druck ist in verschiedenen Bereichen entscheidend 🌍🚀🌊]
// Der Zusammenfassungspunkt über die Bedeutung des Verständnisses von Druck wird ab Folie 3 angezeigt
#only("1")[
#voiceover("Zusammenfassend wird Druck als Kraft pro Flächeneinheit definiert und kann mit der Formel P gleich F geteilt durch A berechnet werden.")
]
#only("2")[
#voiceover("Druck wird durch Umweltfaktoren wie die Höhe beeinflusst, wobei der atmosphärische Druck mit zunehmender Höhe abnimmt, und durch die Tiefe in Flüssigkeiten, wobei der Druck mit zunehmender Tiefe steigt.")
]
#only("3")[
#voiceover("Das Verständnis des Druckkonzepts und der Faktoren, die ihn beeinflussen, ist in verschiedenen Bereichen entscheidend, wie Meteorologie, Luftfahrt und Meeresbiologie.")
]
]