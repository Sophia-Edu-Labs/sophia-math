#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#only("1")[
#voiceover("Lass uns das Verhalten von Potenzfunktionen rekapitulieren, wenn x gegen Null geht.")
]
#text(size: 30pt, weight: "bold")[Potenzfunktionen, wenn $x→0$]
// Der Titel "Potenzfunktionen, wenn x→0" wird auf dieser Folie angezeigt
#v(40pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Define the power functions
def f1(x):
    return x**2
def f2(x):
    return x**3
def f3(x):
    return x**4

# Generate x values close to zero
x = np.linspace(-1, 1, 1000)

# Create the plot
plt.figure(figsize=(8, 6))
plt.plot(x, f1(x), label='$f(x) = x^2$')
plt.plot(x, f2(x), label('$f(x) = x^3$')
plt.plot(x, f3(x), label('$f(x) = x^4$')

# Add annotations
plt.annotate('$(0, 0)$', xy=(0, 0), xytext=(-0.2, 0.1), fontsize=14, 
             arrowprops=dict(arrowstyle="->", connectionstyle="arc3"))

# Improve aesthetics
plt.grid(True, which='both', linestyle='--', linewidth=0.5)
plt.axhline(0, color='grey', lw=1)
plt.axvline(0, color='grey', lw=1)
plt.legend(fontsize=14)
plt.title('Potenzfunktionen, wenn $x→0$', fontsize=16)
plt.xlabel('$x$', fontsize=14)
plt.ylabel('$f(x)$', fontsize=14)
plt.xlim(-1, 1)
plt.ylim(-0.5, 1)

plt.show()
```,
width: 360pt),
)
]
]
]
// Die Abbildung zeigt die Graphen der Potenzfunktionen x^2, x^3 und x^4, wenn x gegen Null geht. Alle Funktionen konvergieren zum Punkt (0, 0). Diese Abbildung wird ab Folie 2 angezeigt.
#only("2")[
#voiceover("Wenn x gegen Null geht, nähert sich der Wert einer Potenzfunktion f von x gleich x hoch n, wobei n eine natürliche Zahl ist, ebenfalls Null.")
]

#v(40pt)

#only("3-")[- Wenn $x→0$, $f(x)=x^n→0$ für $n∈ℕ$]
// Der Hauptpunkt wird ab Folie 3 in Aufzählungsform angezeigt

#only("3")[#voiceover("Das gilt für jede natürliche Zahl n. Die Graphen verschiedener Potenzfunktionen mit unterschiedlichen natürlichen Exponenten konvergieren alle zum Punkt Null, Null, wenn x gegen Null geht.")]

#only("4-")[🎯 Alle Potenzfunktionen mit natürlichen Exponenten konvergieren zu $(0,0)$, wenn $x→0$]
// Die Hauptaussage wird ab Folie 4 mit einem Emoji angezeigt

#only("4")[#voiceover("Die wichtigste Erkenntnis ist also, dass alle Potenzfunktionen mit natürlichen Exponenten zum Punkt Null, Null konvergieren, wenn x gegen Null geht.")]
]