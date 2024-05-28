#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Hicks-Zerlegung]
#v(40pt)
#only("1-")[Was stellen die Indifferenzkurven in einem Hicks-Zerlegungsdiagramm dar?]
#v(40pt)
#only("-1")[a) Einkommensniveaus]#only("2-")[#text(fill:red)[a) Einkommensniveaus]]
#v(10pt)
#only("-1")[b) Nutzenniveaus]#only("2-")[#text(fill:green)[b) Nutzenniveaus]]
#v(10pt)
#only("-1")[c) Preisniveaus]#only("3-")[#text(fill:red)[c) Preisniveaus]]
#v(10pt)
#only("-1")[d) Mengen]#only("4-")[#text(fill:red)[d) Mengen]]

#only("1")[#voiceover("Leider falsch. Hier ist die richtige Antwort.")]
#only("2")[#voiceover("Option a) Einkommensniveaus ist falsch. Indifferenzkurven stellen keine Einkommensniveaus dar.")]
#only("2")[#voiceover("Option b) Nutzenniveaus ist die richtige Antwort. Indifferenzkurven repräsentieren verschiedene Nutzenniveaus oder Zufriedenheitsgrade, die ein Konsument erreichen kann.")]
#only("3")[#voiceover("Option c) Preisniveaus ist falsch. Indifferenzkurven beziehen sich nicht auf Preise.")]
#only("4")[#voiceover("Option d) Mengen ist auch falsch. Indifferenzkurven stellen nicht direkt die Mengen von Gütern dar.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Indifferenzkurven]
#v(40pt)
#only("1-")[Wichtige Punkte zu Indifferenzkurven:]
#v(20pt)
#only("2-")[- Verbinden Bündel, die das gleiche Nutzenniveau bieten 😊]
#v(10pt)
#only("3-")[- Schneiden sich nicht ❌]
#v(10pt) 
#only("4-")[- Fallen nach unten ↘]
#v(10pt)
#only("5-")[- Sind konvex zum Ursprung 🪞]

#only("1")[#voiceover("Lass uns einige wichtige Punkte zu Indifferenzkurven durchgehen.")]
#only("2")[#voiceover("Indifferenzkurven verbinden Güterbündel, die dem Konsumenten das gleiche Maß an Zufriedenheit oder Nutzen bieten.")]
#only("3")[#voiceover("Indifferenzkurven schneiden sich nicht. Jede Kurve repräsentiert ein eindeutiges Nutzenniveau.")]
#only("4")[#voiceover("Sie fallen nach unten, was zeigt, dass zur Aufrechterhaltung des gleichen Nutzens eine Abnahme eines Gutes durch eine Zunahme des anderen ausgeglichen werden muss.")]
#only("5")[#voiceover("Indifferenzkurven sind konvex zum Ursprung, was die abnehmende Grenzrate der Substitution zwischen Gütern widerspiegelt.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Grafische Darstellung]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

fig, ax = plt.subplots(figsize=(8, 6))

x = np.linspace(0, 10, 100)

for i in range(1, 4):
    y = 10 / (i * x)
    ax.plot(x, y, label=f'Nutzenniveau {i}')

ax.set_xlabel('Gut X')
ax.set_ylabel('Gut Y')
ax.set_title('Indifferenzkurven')
ax.legend()

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[#voiceover("Hier ist eine grafische Darstellung von Indifferenzkurven.")]
#only("2")[#voiceover("Jede Kurve repräsentiert ein anderes Nutzenniveau.")]
#only("3")[#voiceover("Höhere Kurven repräsentieren höhere Nutzenniveaus.")]
#only("4")[#voiceover("Jedes Bündel auf derselben Kurve bietet dem Konsumenten die gleiche Zufriedenheit.")]
#only("5")[#voiceover("Wie du sehen kannst, fallen die Kurven nach unten und schneiden sich nicht.")]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[In der Hicks-Zerlegung:]
#v(20pt)
#only("2-")[- Stellen Indifferenzkurven Nutzenniveaus dar 📈]
#v(10pt)
#only("3-")[- Sie ermöglichen die Trennung von Substitutions- und Einkommenseffekten 🔍]
#v(10pt)
#only("4-")[- Ein wichtiges Werkzeug in der Konsumtheorie 🛍️]

#only("1")[#voiceover("Zusammenfassend, im Kontext der Hicks-Zerlegung:")]
#only("2")[#voiceover("Indifferenzkurven repräsentieren verschiedene Nutzenniveaus oder Zufriedenheitsgrade.")]
#only("3")[#voiceover("Sie sind ein wichtiges Werkzeug, das es uns ermöglicht, die Substitutions- und Einkommenseffekte einer Preisänderung zu trennen.")]
#only("4")[#voiceover("Das Verständnis von Indifferenzkurven ist grundlegend in der Konsumtheorie und Wohlfahrtsanalyse.")]
]