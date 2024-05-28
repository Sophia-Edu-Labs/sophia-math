#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Substitutionseffekt 🔄]
#v(40pt)
#only("1-")[- Zeigt, wie sich der Konsum ändert, wenn sich der Preis ändert]
#v(20pt)
#only("2-")[- Hält den Nutzen konstant 📊]
#only("1")[
#voiceover("Der Substitutionseffekt zeigt, wie sich der Konsum ändert, wenn sich der Preis ändert,")
]
#only("2")[
#voiceover("während das Nutzenniveau des Konsumenten konstant gehalten wird.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Grafische Darstellung 📈]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define utility function
def utility(x, y):
    return np.log(x) + np.log(y)

# Define initial budget constraint
p1_x, p1_y = 2, 1
m1 = 100

# Define new budget constraint after price change
p2_x, p2_y = 1, 1
m2 = 100

# Generate grid of points
x = np.linspace(0.1, 100, 100)
y = np.linspace(0.1, 100, 100)
X, Y = np.meshgrid(x, y)

# Compute utility for each point
U = utility(X, Y)

# Plot utility contours
plt.figure(figsize=(8, 6))
plt.contour(X, Y, U, levels=20, cmap='viridis', alpha=0.7)

# Plot initial budget constraint
x1_max = m1 / p1_x
y1_max = m1 / p1_y
plt.plot([0, x1_max], [y1_max, 0], 'k-', linewidth=2, label='Initial Budget')

# Plot new budget constraint
x2_max = m2 / p2_x
y2_max = m2 / p2_y
plt.plot([0, x2_max], [y2_max, 0], 'k--', linewidth=2, label='New Budget')

# Find initial optimal bundle
U_max = np.max(U)
idx = np.unravel_index(np.argmax(U, axis=None), U.shape)
x1_opt, y1_opt = X[idx], Y[idx]
plt.plot(x1_opt, y1_opt, 'ro', markersize=10, label='Initial Optimum')

# Find new optimal bundle after substitution effect
U_target = utility(x1_opt, y1_opt)
idx = np.argmin(np.abs(U - U_target))
x2_opt, y2_opt = X.flatten()[idx], Y.flatten()[idx]
plt.plot(x2_opt, y2_opt, 'bo', markersize=10, label='Substitution Effect')

plt.xlabel('Good X')
plt.ylabel('Good Y')
plt.title('Substitution Effect')
plt.legend()
plt.grid(True)
plt.show()
```, width: 360pt))
]
]
#only("1")[
#voiceover("Dieses Diagramm zeigt den Substitutionseffekt. Die durchgezogene Linie stellt die ursprüngliche Budgetbeschränkung dar, und die gestrichelte Linie ist die neue Budgetbeschränkung nach einer Preisänderung. Der rote Punkt ist das anfängliche optimale Konsumbündel, und der blaue Punkt zeigt das neue optimale Bündel nach dem Substitutionseffekt, wobei der Nutzen auf dem anfänglichen Niveau gehalten wird.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]
#v(40pt)
#only("1-")[- Der Substitutionseffekt isoliert die Auswirkungen einer Preisänderung auf den Konsum]
#v(20pt)
#only("2-")[- Hält den Konsumenten auf derselben Indifferenzkurve (Nutzenniveau)]
#v(20pt)
#only("3-")[- Zeigt die Reaktion des Konsumenten auf relative Preisänderungen]
#only("1")[
#voiceover("Der Substitutionseffekt isoliert die Auswirkungen einer Preisänderung auf den Konsum,")
]
#only("2")[
#voiceover("indem der Konsument auf derselben Indifferenzkurve, oder dem Nutzenniveau, gehalten wird.")
]
#only("3")[
#voiceover("Er zeigt, wie der Konsument auf relative Preisänderungen reagiert und seinen Konsum anpasst, während er das gleiche Zufriedenheitsniveau beibehält.")
]
]