#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Pumpeneffizienz]
#v(40pt)
#only("1-")[Welcher Pumpentyp ist am effizientesten für die landwirtschaftliche Bewässerung?]
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[a) Kreiselpumpe]#only("2-")[#text(fill:green)[a) Kreiselpumpe]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) Kolbenpumpe]#only("3-")[#text(fill:red)[b) Kolbenpumpe]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) Membranpumpe]#only("4-")[#text(fill:red)[c) Membranpumpe]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) Schlauchpumpe]#only("5-")[#text(fill:red)[d) Schlauchpumpe]]
#v(40pt)

#only("1")[#voiceover("Leider falsch. Die richtige Antwort ist...")]
// Sprich kurz über a und warum es korrekt ist
#only("2")[#voiceover("a) Kreiselpumpen. Sie sind tatsächlich die effizienteste Art für die landwirtschaftliche Bewässerung. Lass uns sehen, warum.")]
// Sprich kurz über b und warum es falsch ist
#only("3")[#voiceover("b) Kolbenpumpen sind nicht so effizient. Sie eignen sich besser für Anwendungen mit hohem Druck und niedrigem Durchfluss.")]
// Sprich kurz über c und warum es falsch ist
#only("4")[#voiceover("c) Membranpumpen sind zwar zuverlässig, aber auch nicht so effizient wie Kreiselpumpen für diese Anwendung.")]
// Sprich kurz über d und warum es falsch ist
#only("5")[#voiceover("Und d) Schlauchpumpen werden typischerweise für kleinere, präzise Dosieranwendungen verwendet, nicht für großflächige Bewässerung.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Warum Kreiselpumpen? 🌀]
#v(40pt)
#only("1-")[
- Hohe Durchflussraten 🌊
]
#only("2-")[
- Stetiger, pulsationsfreier Durchfluss 📈
]
#only("3-")[
- Einfaches Design, einfache Wartung 🔧
]
#only("4-")[
- Kann Feststoffe und Ablagerungen handhaben 🍂
]
#only("5-")[
- Energieeffizient ⚡
]

#only("1")[#voiceover("Kreiselpumpen sind ideal für die Bewässerung, weil sie hohe Durchflussraten liefern können.")]
#only("2")[#voiceover("Sie liefern einen stetigen, pulsationsfreien Durchfluss, was für eine gleichmäßige Bewässerung wichtig ist.")]
#only("3")[#voiceover("Ihr einfaches Design macht sie leicht zu warten und zu reparieren.")]
#only("4")[#voiceover("Kreiselpumpen können einige Feststoffe und Ablagerungen handhaben, die im Bewässerungswasser häufig vorkommen.")]
#only("5")[#voiceover("Am wichtigsten ist, dass sie energieeffizient sind, was für den großflächigen, kontinuierlichen Betrieb in der Landwirtschaft entscheidend ist.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wie sie funktionieren]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt 
import numpy as np 
from matplotlib.patches import Arc, Arrow 

fig, ax = plt.subplots(figsize=(8, 8)) 

circle = plt.Circle((0.5, 0.5), 0.4, fill=False) 

inlet = Arrow(0.2, 0.5, 0.2, 0, width=0.05, color='blue') 
outlet = Arrow(0.8, 0.5, 0.2, 0, width=0.05, color='red') 

impeller = plt.Circle((0.5, 0.5), 0.2, fill=False, color='green') 

arc1 = Arc((0.5, 0.5), 0.4, 0.4, angle=0, theta1=0, theta2=90, color='green') 
arc2 = Arc((0.5, 0.5), 0.4, 0.4, angle=0, theta1=90, theta2=180, color='green') 
arc3 = Arc((0.5, 0.5), 0.4, 0.4, angle=0, theta1=180, theta2=270, color='green') 
arc4 = Arc((0.5, 0.5), 0.4, 0.4, angle=0, theta1=270, theta2=360, color='green') 

ax.add_patch(circle) 
ax.add_patch(inlet) 
ax.add_patch(outlet) 
ax.add_patch(impeller) 
ax.add_patch(arc1) 
ax.add_patch(arc2) 
ax.add_patch(arc3) 
ax.add_patch(arc4) 

ax.set_xlim(0, 1) 
ax.set_ylim(0, 1) 
ax.set_aspect('equal') 
ax.set_xticks([]) 
ax.set_yticks([]) 

ax.annotate('Inlet', xy=(0.1, 0.55)) 
ax.annotate('Outlet', xy=(0.8, 0.55)) 
ax.annotate('Impeller', xy=(0.45, 0.5)) 

plt.show() 
```, 
width: 360pt), 
) 
] 
] 
#v(40pt) 
#only("1-")[ 
1. Wasser tritt durch den #text(fill:blue)[Einlass] ein 🔵 
] 
#only("2-")[ 
2. Drehendes #text(fill:green)[Laufrad] wirbelt das Wasser auf 🌀 
] 
#only("3-")[ 
3. Zentrifugalkraft drückt das Wasser nach außen 🌠 
] 
#only("4-")[ 
4. Wasser tritt durch den #text(fill:red)[Auslass] aus 🔴 
] 

#only("1")[#voiceover("Hier ist ein einfaches Diagramm, wie eine Kreiselpumpe funktioniert. Wasser tritt durch den Einlass, der in Blau dargestellt ist, in die Pumpe ein.")] 
#only("2")[#voiceover("Im Inneren wirbelt ein drehendes Laufrad, das in Grün dargestellt ist, das Wasser auf.")] 
#only("3")[#voiceover("Die durch das drehende Laufrad erzeugte Zentrifugalkraft drückt das Wasser nach außen.")] 
#only("4")[#voiceover("Das Wasser wird dann durch den Auslass, der in Rot dargestellt ist, mit höherer Geschwindigkeit und höherem Druck als am Einlass abgeführt.")] 
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[
- Kreiselpumpen sind am effizientesten für die Bewässerung 🌾
]
#only("2-")[
- Sie liefern hohen Durchfluss, stetigen Ausstoß 🚰
]
#only("3-")[
- Einfaches, wartungsarmes Design 🔧
]
#only("4-")[
- Zentrifugalkraft ist das Schlüsselprinzip 🌀
]

#only("1")[#voiceover("Zusammenfassend sind Kreiselpumpen die effizienteste Wahl für die landwirtschaftliche Bewässerung.")]
#only("2")[#voiceover("Sie liefern die hohen, stetigen Durchflussraten, die für die großflächige Bewässerung benötigt werden.")]
#only("3")[#voiceover("Ihr einfaches Design macht sie zuverlässig und leicht zu warten.")]
#only("4")[#voiceover("Und sie nutzen die Kraft der Zentrifugalkraft, um Wasser effizient zu bewegen. Gute Arbeit beim Identifizieren der richtigen Antwort!")]
]