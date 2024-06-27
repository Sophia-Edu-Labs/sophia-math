#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Oberfläche eines Würfels]
#v(40pt)
#only("1-")[#align(center)[#box(width: 200pt, height: 200pt)[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D, art3d
import numpy as np

fig = plt.figure(figsize=(8, 8))
ax = fig.add_subplot(111, projection='3d')

# Cube vertices
vertices = np.array([[0, 0, 0], [1, 0, 0], [1, 1, 0], [0, 1, 0],
                     [0, 0, 1], [1, 0, 1], [1, 1, 1], [0, 1, 1]])

# Cube faces
faces = [[vertices[j] for j in [0, 1, 2, 3]],
         [vertices[j] for j in [4, 5, 6, 7]], 
         [vertices[j] for j in [0, 3, 7, 4]],
         [vertices[j] for j in [1, 2, 6, 5]],
         [vertices[j] for j in [0, 1, 5, 4]],
         [vertices[j] for j in [2, 3, 7, 6]]]

ax.add_collection3d(art3d.Poly3DCollection(faces, facecolors='cyan', linewidths=1, edgecolors='r', alpha=.25))

ax.set_xlabel('4 cm')
ax.set_ylabel('4 cm')
ax.set_zlabel('4 cm')

ax.set_xlim(0, 1)
ax.set_ylim(0, 1)
ax.set_zlim(0, 1)

plt.title("Würfel mit Kantenlänge 4 cm")
plt.tight_layout()
plt.show()

```,
width: 360pt),
)
]
]
]]]
#v(20pt)
#only("2-")[- Formel: $"SA" = 6s^2$]
#v(10pt)
#only("3-")[- $s = 4 "cm"$]
#v(10pt)
#only("4-")[- $"SA" = 6 dot (4 "cm")^2$]
#v(10pt)
#only("5-")[- $"SA" = 6 dot 16 "cm"^2 = 96 "cm"^2$]

#only("1")[
#voiceover("Leider ist das nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen. Hier haben wir einen Würfel mit einer Kantenlänge von 4 Zentimetern.")
]
#only("2")[
#voiceover("Um die Oberfläche eines Würfels zu berechnen, verwenden wir die Formel: Oberfläche ist gleich 6 mal s Quadrat, wobei s die Länge einer Seite ist. Wir verwenden 6, weil ein Würfel 6 Flächen hat und jede Fläche ein Quadrat ist.")
]
#only("3")[
#voiceover("In diesem Fall haben wir eine Kantenlänge, s, von 4 Zentimetern.")
]
#only("4")[
#voiceover("Setzen wir das in unsere Formel ein. Wir erhalten: Oberfläche ist gleich 6 mal 4 Zentimeter zum Quadrat.")
]
#only("5")[
#voiceover("Nun berechnen wir das. 4 zum Quadrat ist 16, also haben wir 6 mal 16 Quadratzentimeter. Das ergibt 96 Quadratzentimeter.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visuelle Darstellung]
#v(40pt)
#only("1-")[#align(center)[#box(width: 300pt, height: 300pt)[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

fig, ax = plt.subplots(figsize=(10, 10))

# Create a 4x4 grid
grid = np.zeros((4, 4))

# Function to draw a square
def draw_square(x, y, size, color):
    rect = plt.Rectangle((x, y), size, size, fill=True, facecolor=color, edgecolor='black')
    ax.add_patch(rect)

# Draw the unfolded cube
draw_square(1, 1, 1, 'cyan')  # Front
draw_square(0, 1, 1, 'lightblue')  # Left
draw_square(2, 1, 1, 'skyblue')  # Right
draw_square(1, 0, 1, 'paleturquoise')  # Bottom
draw_square(1, 2, 1, 'mediumturquoise')  # Top
draw_square(3, 1, 1, 'teal')  # Back

# Set limits and remove axes
ax.set_xlim(0, 4)
ax.set_ylim(0, 3)
ax.axis('off')

# Add labels
for i in range(6):
    x = i % 4
    y = 2 - (i // 4)
    ax.text(x + 0.5, y + 0.5, f'4 cm', ha='center', va='center', fontsize=12)
    ax.text(x + 0.5, y + 0.3, f'4 cm', ha='center', va='center', fontsize=12)

plt.title("Entfalteter Würfel: 6 Flächen", fontsize=16)
plt.tight_layout()
plt.show()

```,
width: 360pt),
)
]
]
]]]
#v(20pt)
#only("2-")[- Jede Fläche: $4 "cm" × 4 "cm" = 16 "cm"^2$]
#v(10pt)
#only("3-")[- Gesamt: $16 "cm"^2 × 6 "Flächen" = 96 "cm"^2$]

#only("1")[
#voiceover("Um das besser zu veranschaulichen, lassen wir unseren Würfel entfalten. Hier sehen wir alle sechs Flächen des Würfels flach ausgelegt.")
]
#only("2")[
#voiceover("Jede Fläche ist ein Quadrat mit Seiten von 4 Zentimetern. Die Fläche jeder Seite ist daher 4 Zentimeter mal 4 Zentimeter, was 16 Quadratzentimeter ergibt.")
]
#only("3")[
#voiceover("Da wir 6 dieser Flächen haben, multiplizieren wir 16 Quadratzentimeter mit 6, was uns unsere gesamte Oberfläche von 96 Quadratzentimetern ergibt.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[- Oberfläche = $96 "cm"^2$ 📏]
#v(20pt)
#only("2-")[- Denke daran: $"SA" = 6s^2$ für jeden Würfel 🧊]
#v(20pt)
#only("3-")[- Übe mit verschiedenen Kantenlängen! 💪]

#only("1")[
#voiceover("Also, wir haben bestätigt, dass die Oberfläche eines Würfels mit einer Kantenlänge von 4 Zentimetern tatsächlich 96 Quadratzentimeter beträgt.")
]
#only("2")[
#voiceover("Denke daran, dass du für jeden Würfel immer die Formel verwenden kannst: Oberfläche ist gleich 6 mal s Quadrat, wobei s die Länge einer Seite ist.")
]
#only("3")[
#voiceover("Um dein Verständnis zu festigen, versuche die Oberfläche für Würfel mit unterschiedlichen Kantenlängen zu berechnen. Das wird dir helfen, dich mit der Formel und dem Konzept wohler zu fühlen. Großartige Arbeit bei der Lösung dieses Problems!")
]
]