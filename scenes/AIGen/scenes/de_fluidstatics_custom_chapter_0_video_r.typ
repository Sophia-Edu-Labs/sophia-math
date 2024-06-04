#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Hydraulisches Hebesystem 🏗]
#v(40pt)
#only("1-")[- Verwendet Flüssigkeitsdruck, um schwere Objekte zu heben 🏋]
#v(20pt)
#only("2-")[- Beziehungen: Kraft, Fläche, Druck 🔗]
#v(20pt)
#only("3-")[- Wichtige Gleichungen: $p = F / A$, $F = p \cdot A$ 📏]

#only("1")[
#voiceover("Ein hydraulisches Hebesystem verwendet Flüssigkeitsdruck, um schwere Objekte zu heben. Es ist ein leistungsstarkes Werkzeug in vielen industriellen und baulichen Anwendungen.")
]

#only("2")[
#voiceover("Das System funktioniert auf Basis der Beziehungen zwischen Kraft, Fläche und Druck. Das Verständnis dieser Beziehungen ist entscheidend für die Konstruktion und den Betrieb eines hydraulischen Hebesystems.")
]

#only("3")[
#voiceover("Die wichtigen Gleichungen sind: Druck ist gleich Kraft geteilt durch Fläche und Kraft ist gleich Druck mal Fläche. Diese Gleichungen ermöglichen es uns, den notwendigen Druck oder die erforderliche Kraft für eine gegebene Situation zu berechnen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispielrechnung 🧮]
#v(40pt)

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt 
import numpy as np 

# Parameter 
F = 58860  # Kraft (N) 
A_press = 400  # Fläche des Presskolbens (cm²) 
A_pump = 5  # Fläche des Pumpkolbens (cm²) 
h_lift = 200  # Hubhöhe (cm) 
s_pump = 50  # Pumpenhub (cm) 

# Druck berechnen 
p = F / (A_press / 10000)  # Umrechnung von cm² in m² 

# Pumpenkraft berechnen 
F_pump = p * (A_pump / 10000)  # Umrechnung von cm² in m² 

# Anzahl der Pumpenhübe berechnen 
n = (A_press * h_lift) / (A_pump * s_pump) 

# Plotten 
labels = ['Druck (MPa)', 'Pumpenkraft (N)', 'Pumpenhübe'] 
values = [p / 1e6, F_pump, n]  # Umrechnung von Pa in MPa 

fig, ax = plt.subplots(figsize=(6, 6)) 
ax.bar(labels, values) 
ax.set_ylabel('Wert') 
ax.grid(True) 
plt.show() 
```, 
width: 360pt), 
) 
] 
]

#only("1")[ 
#voiceover("Schauen wir uns eine Beispielrechnung an. Angenommen, wir müssen einen 6000 kg schweren Motor mit einem hydraulischen Hebesystem heben, dessen Presskolben eine Fläche von 400 Quadratzentimetern hat.") 
]

#v(20pt) 
#only("2-")[- Erforderlicher Druck: $p = F / A = 1.47$ MPa] 
#v(20pt) 
#only("3-")[- Pumpenkraft (wenn die Fläche des Pumpkolbens 5 cm² beträgt): $F = p \cdot A = 735.75$ N] 
#v(20pt) 
#only("4-")[- Anzahl der Pumpenhübe (wenn die Hubhöhe 2 m und der Pumpenhub 50 cm beträgt): $n = 320$]

#only("2")[ 
#voiceover("Zuerst berechnen wir den erforderlichen Druck. Mit der Gleichung Druck ist gleich Kraft geteilt durch Fläche erhalten wir einen Druck von 1,47 Megapascal.") 
]

#only("3")[ 
#voiceover("Als nächstes, wenn der Pumpkolben eine Fläche von 5 Quadratzentimetern hat, können wir die notwendige Pumpenkraft mit der Gleichung Kraft ist gleich Druck mal Fläche berechnen. Dies ergibt eine Pumpenkraft von etwa 736 Newton.") 
]

#only("4")[ 
#voiceover("Schließlich können wir die Anzahl der benötigten Pumpenhübe bestimmen, wenn die Hubhöhe 2 Meter und jeder Pumpenhub 50 Zentimeter beträgt. Unter Verwendung der Beziehung zwischen den verdrängten Volumina der Press- und Pumpkolben finden wir heraus, dass 320 Pumpenhübe erforderlich sind.") 
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]
#v(40pt)
#only("1-")[- Hydraulische Hebesysteme: leistungsstarkes Werkzeug, das Flüssigkeitsdruck verwendet 💪]
#v(20pt)
#only("2-")[- Verstehe die Beziehungen zwischen Kraft, Fläche und Druck 📊]
#v(20pt)
#only("3-")[- Wende Gleichungen an, um das System zu entwerfen und zu betreiben 🔧]

#only("1")[
#voiceover("Zusammenfassend sind hydraulische Hebesysteme ein leistungsstarkes Werkzeug, das Flüssigkeitsdruck verwendet, um schwere Lasten zu heben.")
]

#only("2")[
#voiceover("Das Verständnis der Beziehungen zwischen Kraft, Fläche und Druck ist entscheidend für die Arbeit mit diesen Systemen.")
]

#only("3")[
#voiceover("Durch die Anwendung der wichtigen Gleichungen können wir hydraulische Hebesysteme effektiv entwerfen und betreiben. Dies ermöglicht es uns, schwere Hebeaufgaben in verschiedenen industriellen und baulichen Bereichen zu bewältigen.")
]
]