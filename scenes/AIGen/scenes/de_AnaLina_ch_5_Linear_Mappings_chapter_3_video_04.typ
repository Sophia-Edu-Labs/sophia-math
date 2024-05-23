#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung: Bild einer linearen Abbildung]
#v(40pt)
#only("1-")[- $T: V -> W$ ist eine lineare Abbildung]
#only("2-")[- Das Bild von $T$ ist eine Teilmenge von $W$]
#only("3-")[- $"im"(T) = {w ∈ W | w = T(v) "für einige" v ∈ V}$]
// Die wichtigsten Punkte werden in Aufzählungspunkten dargestellt, wobei die Definition des Bildes ab Folie 3 gezeigt wird
#only("1")[
#voiceover("Lassen Sie uns das Konzept des Bildes einer linearen Abbildung rekapitulieren. Betrachten Sie eine lineare Abbildung T von einem Vektorraum V zu einem Vektorraum W.")
]
#only("2")[
#voiceover("Das Bild von T, bezeichnet als 'im' von T, ist eine Teilmenge des Zielraums W.")
]
#only("3")[
#voiceover("Genauer gesagt ist das Bild von T die Menge aller Vektoren w in W, so dass w gleich T von v für einige Vektoren v in V ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung 🎨]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Erstellen Sie ein 3D-Diagramm
fig = plt.figure(figsize=(8, 8))
ax = fig.add_subplot(111, projection='3d')

# Definieren Sie die lineare Abbildung T
def T(v):
    return np.array([2*v[0], v[1]])

# Erstellen Sie ein Meshgrid für V
x = np.linspace(-2, 2, 10)
y = np.linspace(-2, 2, 10)
X, Y = np.meshgrid(x, y)

# Wenden Sie die lineare Abbildung T auf das Meshgrid an
Z = np.zeros_like(X)
for i in range(X.shape[0]):
    for j in range(X.shape[1]):
        Z[i,j] = T([X[i,j], Y[i,j]])[1]

# Bild von T plotten
ax.plot_surface(X, Y, Z, alpha=0.5, cmap='viridis')

# V plotten
ax.plot(x, y, 0, color='blue', label='V')

# W plotten
x_w = np.linspace(-4, 4, 10)
y_w = np.linspace(-2, 2, 10)
X_w, Y_w = np.meshgrid(x_w, y_w)
Z_w = np.zeros_like(X_w)
ax.plot_surface(X_w, Y_w, Z_w, alpha=0.2, color='red', label='W')

# Beschriftungen und Legende hinzufügen
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_zlabel('z')
ax.legend()

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
// Die Abbildung zeigt ein 3D-Diagramm mit V als blaue Ebene, W als rote Ebene und das Bild von T als grüne Fläche innerhalb von W
#only("1")[
#voiceover("Hier ist eine Visualisierung, um das Bild einer linearen Abbildung zu verstehen. Die blaue Ebene stellt den Definitionsbereich V dar, die rote Ebene den Zielraum W, und die grüne Fläche innerhalb von W stellt das Bild von T dar.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]
#v(40pt)
#only("1-")[- Das Bild ist eine Teilmenge des Zielraums]
#only("2-")[- Jeder Vektor im Bild hat ein Urbild im Definitionsbereich]
#only("3-")[- Hilft, das "Erreichen" einer linearen Abbildung zu verstehen]
// Die wichtigsten Erkenntnisse werden in Aufzählungspunkten dargestellt
#only("1")[
#voiceover("Die wichtigsten Erkenntnisse sind: Das Bild ist eine Teilmenge des Zielraums W.")
]
#only("2")[
#voiceover("Jeder Vektor im Bild hat ein Urbild im Definitionsbereich V, was bedeutet, dass er durch die Abbildung 'erreichbar' ist.")
]
#only("3")[
#voiceover("Das Verständnis des Bildes hilft uns, das 'Erreichen' oder die 'Abdeckung' einer linearen Abbildung innerhalb ihres Zielraums zu verstehen.")
]
]