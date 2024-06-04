#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Landwirtschaftliche Bewässerungssysteme]
#v(40pt)
#only("1-")[- Wasser effizient über unterschiedliche Höhenlagen liefern 🌾💧]
#v(20pt)
#only("2-")[- Höhenunterschiede beeinflussen die Druckanforderungen 🏔️⚖️]
#only("1")[
#voiceover("Landwirtschaftliche Bewässerungssysteme sind darauf ausgelegt, Wasser effizient über unterschiedliche Höhenlagen zu den Pflanzen zu liefern, wie zum Beispiel Felder auf Hügeln oder Terrassen.")
]
#only("2")[
#voiceover("Diese Höhenunterschiede beeinflussen die Druckanforderungen des Bewässerungssystems.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Druckberechnung]
#v(40pt)
#only("1-")[$ p = rho dot g dot h $]
#v(20pt)
#only("2-")[- $p$: Druck (Pa)]
#v(10pt)
#only("3-")[- $rho$: Dichte des Wassers (1000 kg/m³)]
#v(10pt)
#only("4-")[- $g$: Erdbeschleunigung (9,81 m/s²)]
#v(10pt)
#only("5-")[- $h$: Höhenunterschied (m)]
#only("1")[
#voiceover("Der erforderliche Druck, um Wasser auf eine bestimmte Höhe zu heben, kann mit der Formel p gleich rho mal g mal h berechnet werden.")
]
#only("2")[
#voiceover("Hierbei steht p für den Druck in Pascal,")
]
#only("3")[
#voiceover("rho ist die Dichte des Wassers, die ungefähr 1000 Kilogramm pro Kubikmeter beträgt,")
]
#only("4")[
#voiceover("g ist die Erdbeschleunigung, die 9,81 Meter pro Sekunde zum Quadrat beträgt,")
]
#only("5")[
#voiceover("und h ist der Höhenunterschied in Metern.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispielrechnung]
#v(40pt)
#only("1-")[- Wasser auf eine Höhe von 30 m heben]
#v(20pt)
#only("2-")[$ p = 1000 dot 9.81 dot 30 $]
#v(20pt)
#only("3-")[$ p = 294300 $ Pa]
#only("1")[
#voiceover("Betrachten wir ein Beispiel, bei dem Wasser auf eine Höhe von 30 Metern gehoben werden muss.")
]
#only("2")[
#voiceover("Mit der Formel berechnen wir den Druck als 1000 mal 9,81 mal 30.")
]
#only("3")[
#voiceover("Dies ergibt einen Druck von 294.300 Pascal.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Druck vs. Höhe]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```import matplotlib.pyplot as plt
import numpy as np

h = np.linspace(0, 50, 100)
p = 1000 * 9.81 * h

plt.figure(figsize=(6, 4))
plt.plot(h, p/1000, 'b-', linewidth=2)
plt.xlabel('Höhe (m)')
plt.ylabel('Druck (kPa)')
plt.title('Druck vs. Höhe')
plt.grid(True)
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Dieses Diagramm zeigt die Beziehung zwischen Druck und Höhe. Mit zunehmender Höhe steigt der erforderliche Druck linear an.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Bewässerungssysteme müssen Höhenunterschiede berücksichtigen 🌾🏔️]
#v(20pt)
#only("2-")[- Druck steigt mit der Höhe: $p = rho dot g dot h$ 📈]
#v(20pt)
#only("3-")[- Effizientes Design ist entscheidend für die Wasserlieferung 💧✅]
#only("1")[
#voiceover("Zusammenfassend müssen landwirtschaftliche Bewässerungssysteme Höhenunterschiede berücksichtigen, wenn sie Wasser zu den Pflanzen liefern.")
]
#only("2")[
#voiceover("Der erforderliche Druck steigt linear mit der Höhe an, wie durch die Formel p gleich rho mal g mal h beschrieben.")
]
#only("3")[
#voiceover("Ein effizientes Design der Bewässerungssysteme, das diese Druckanforderungen berücksichtigt, ist entscheidend für eine effektive Wasserlieferung in der Landwirtschaft.")
]
]