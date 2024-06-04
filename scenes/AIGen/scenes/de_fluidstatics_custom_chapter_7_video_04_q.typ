#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Schwimmende Plattform]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the dimensions
V = 50  # Volume in m³
draft = 0.5  # Draft in m

# Calculate the surface area
A = V / draft

# Create a 3D plot
fig = plt.figure(figsize=(8, 8))
ax = fig.add_subplot(111, projection='3d')

# Create the platform
x = np.linspace(0, np.sqrt(A), 100)
y = np.linspace(0, np.sqrt(A), 100)
X, Y = np.meshgrid(x, y)
Z = np.zeros_like(X)

# Plot the platform
ax.plot_surface(X, Y, Z, alpha=0.5, color='blue')

# Plot the water level
water_level = -draft * np.ones_like(X)
ax.plot_surface(X, Y, water_level, alpha=0.3, color='cyan')

# Add labels and title
ax.set_xlabel('Length (m)')
ax.set_ylabel('Width (m)')
ax.set_zlabel('Depth (m)')
ax.set_title('Floating Platform')

# Adjust the view angle
ax.view_init(elev=20, azim=45)

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
// Die Abbildung zeigt eine 3D-Visualisierung der schwimmenden Plattform, mit der Plattform in Blau und dem Wasserspiegel in Cyan. Die Dimensionen basieren auf dem gegebenen Volumen und Tiefgang.

#v(20pt)

#only("1")[
#voiceover("Betrachte eine schwimmende Plattform mit einem Volumen von 50 Kubikmetern und einem Tiefgang, also der Tiefe unter Wasser, von 0,5 Metern.")
]

#v(20pt)

#only("2-")[
#text(size: 24pt)[Gegeben:]
- Volumen $V = 50 m^3$
- Tiefgang $d = 0.5 m$
]
// Die gegebenen Informationen sind ab Folie 2 aufgelistet

#v(20pt)

#only("3-")[
#text(size: 24pt)[Finde die Oberfläche $A$ mit der Formel:]
$ A = V / d $
]
// Die Formel zur Berechnung der Oberfläche wird ab Folie 3 angezeigt

#only("2")[
#voiceover("Es ist gegeben, dass das Volumen 50 Kubikmeter und der Tiefgang 0,5 Meter beträgt.")
]

#only("3")[
#voiceover("Unsere Aufgabe ist es, die Oberfläche der Plattform mit der Formel A gleich V geteilt durch d zu bestimmen, wobei A die Oberfläche, V das Volumen und d der Tiefgang ist.")
]

]

]#questionDef(
questionText: "Was ist die Oberfläche $A$ der schwimmenden Plattform in Quadratmetern? Verwende die Formel $A = \frac{V}{d}$.",
answerOptions: ("$A=100$ $m^2$", "$A=0$ $m^2$"),
correctAnswerIndex: 0,
freeTextDetail: (
  fallbackOptionIndex: 1,
  answerOptionsEquality: (
    a: (
      roundingDecimalPlaces: 2,
      tolerance: none
    )
  ),
  answerOptionMatcher:("$A=\key{a}$ $m^2$"),
  answerOptionsTypes: (
    "a": "number"
  )
),
)