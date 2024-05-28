#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#only("1")[
#voiceover("Leider nicht ganz richtig. Lass uns das Szenario und die Hicks-Zerlegung Schritt für Schritt durchgehen.")
]

#text(size: 30pt, weight: "bold")[Szenario]

#v(40pt)

#only("2-")[- Analyse der Auswirkung einer Preisänderung auf die Wahl eines Verbrauchers]
// Das Szenario wird ab Folie 2 eingeführt

#only("3-")[- Den Zufriedenheitsgrad (Nutzen) des Verbrauchers konstant halten 😊]
// Die Bedingung, den Nutzen konstant zu halten, wird ab Folie 3 hinzugefügt

#only("2")[
#voiceover("Das von Dir beschriebene Szenario beinhaltet die Analyse der Auswirkung einer Preisänderung auf die Wahl eines Verbrauchers.")
]

#only("3")[
#voiceover("Und wichtig ist, dass wir den Zufriedenheitsgrad, oder Nutzen, des Verbrauchers konstant halten wollen.")
]
]

#slide()[

#text(size: 30pt, weight: "bold")[Warum Hicks-Zerlegung?]

#v(40pt)

#only("1-")[- Hicks-Zerlegung hält den Nutzen konstant 📊]
// Das Hauptmerkmal der Hicks-Zerlegung wird ab Folie 1 gezeigt

#only("2-")[- Slutsky-Zerlegung hält das reale Einkommen konstant 💰]
// Das kontrastierende Merkmal der Slutsky-Zerlegung wird ab Folie 2 gezeigt

#only("1")[
#voiceover("Die Hicks-Zerlegung ist hier besonders geeignet, da sie den Nutzen konstant hält, wenn die Auswirkung einer Preisänderung analysiert wird.")
]

#only("2")[
#voiceover("Im Gegensatz dazu hält die Slutsky-Zerlegung das reale Einkommen konstant, was nicht mit unserem Ziel in diesem Szenario übereinstimmt.")
]
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

# Create a figure and axis
fig, ax = plt.subplots(figsize=(6, 6))

# Define utility function
def utility(x, y):
    return x**(0.5) * y**(0.5)

# Create a grid of points
x = np.linspace(0.1, 10, 100)
y = np.linspace(0.1, 10, 100)
X, Y = np.meshgrid(x, y)

# Compute utility for each point
Z = utility(X, Y)

# Plot utility contours
contours = ax.contour(X, Y, Z, levels=[1, 2, 3, 4], colors='black', linewidths=1)
ax.clabel(contours, inline=True, fontsize=10, fmt='%1.0f')

# Highlight a specific utility level
ax.contour(X, Y, Z, levels=[2], colors='red', linewidths=2)

# Add labels and title
ax.set_xlabel('Good X')
ax.set_ylabel('Good Y')
ax.set_title('Indifference Curves (Utility Contours)')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
// Das Diagramm zeigt Indifferenzkurven, wobei ein bestimmtes Nutzenniveau in Rot hervorgehoben wird

#only("1")[
#voiceover("Hier ist eine grafische Darstellung mit Indifferenzkurven. Jede Kurve repräsentiert ein Nutzenniveau. Die Hicks-Zerlegung würde die Auswirkung einer Preisänderung analysieren, während man auf derselben Indifferenzkurve bleibt, wie der in Rot hervorgehobenen.")
]
]
]

#slide()[

#text(size: 30pt, weight: "bold")[Zusammenfassung]

#v(40pt)

#only("1-")[- Szenario: Analyse der Auswirkung einer Preisänderung auf die Wahl eines Verbrauchers, wobei der Nutzen konstant bleibt 🎯]
// Die Hauptpunkte des Szenarios werden ab Folie 1 zusammengefasst

#only("2-")[- Hicks-Zerlegung ist besser geeignet, da sie den Nutzen konstant hält 📈]
// Die Eignung der Hicks-Zerlegung wird ab Folie 2 erneut betont

#only("3-")[- Grafisch bedeutet dies, auf derselben Indifferenzkurve zu bleiben 📉]
// Die grafische Interpretation wird ab Folie 3 hinzugefügt

#only("1")[
#voiceover("Zusammengefasst geht es im Szenario darum, die Auswirkung einer Preisänderung auf die Wahl eines Verbrauchers zu analysieren, während der Nutzen konstant bleibt.")
]

#only("2")[
#voiceover("Die Hicks-Zerlegung ist hier besser geeignet, da sie den Nutzen konstant hält, was dem Ziel des Szenarios entspricht.")
]

#only("3")[
#voiceover("Grafisch bedeutet dies, dass man bei einer Preisänderung auf derselben Indifferenzkurve bleibt. Hervorragende Arbeit bei der Identifizierung dieses Szenarios!")
]
]