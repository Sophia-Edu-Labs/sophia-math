#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[

#only("1")[
#voiceover("Das war leider nicht korrekt. Lass uns die Lösung Schritt für Schritt gemeinsam durchgehen.")
]

#text(size: 30pt, weight: "bold")[Stetigkeit von $f(x) = |x|$ bei $x = 0$]

#v(40pt)

#only("2-")[#text()[$ f(x) = |x| $]]
// Die Funktion f(x) wird ab Folie 2 gezeigt

#only("2")[
#voiceover("Wir betrachten die Funktion f von x gleich dem Absolutwert von x.")
]

]

#slide()[

#only("1")[
#voiceover("Um die Stetigkeit bei x gleich null zu überprüfen, müssen wir drei Bedingungen verifizieren:")
]

#text(size: 30pt, weight: "bold")[Bedingungen für Stetigkeit]

#v(40pt)

#only("1-")[1. $lim_(x→0) f(x)$ existiert]
// Die erste Bedingung wird ab Folie 1 gezeigt

#only("2-")[2. $f(0)$ ist definiert]
// Die zweite Bedingung wird ab Folie 2 gezeigt

#only("3-")[3. $lim_(x→0) f(x) = f(0)$]
// Die dritte Bedingung wird ab Folie 3 gezeigt

#only("2")[
#voiceover("Erstens, der Grenzwert von f von x, wenn x gegen null geht, muss existieren.")
]

#only("3")[
#voiceover("Zweitens, f von null muss definiert sein.")
]

#only("4")[
#voiceover("Drittens, der Grenzwert von f von x, wenn x gegen null geht, muss gleich f von null sein.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Überprüfung der Bedingungen]

#v(40pt)

#only("1-")[1. $lim_(x→0) |x| = 0$ ✅]
// Die erste Bedingung wird ab Folie 1 überprüft

#only("2-")[2. $f(0) = |0| = 0$ ✅]
// Die zweite Bedingung wird ab Folie 2 überprüft

#only("3-")[3. $lim_(x→0) |x| = 0 = f(0)$ ✅]
// Die dritte Bedingung wird ab Folie 3 überprüft

#only("1")[
#voiceover("Lass uns die erste Bedingung überprüfen. Der Grenzwert des Absolutwerts von x, wenn x gegen null geht, ist null. Der Grenzwert existiert also.")
]

#only("2")[
#voiceover("Nun zur zweiten Bedingung. f von null ist der Absolutwert von null, was null ist. f von null ist also definiert.")
]

#only("3")[
#voiceover("Schließlich die dritte Bedingung. Der Grenzwert des Absolutwerts von x, wenn x gegen null geht, was null ist, ist gleich f von null, was ebenfalls null ist.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Visualisierung]

#v(40pt)

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 1000)
y = np.abs(x)

plt.figure(figsize=(6, 6))
plt.plot(x, y, color='blue', label='f(x) = |x|')
plt.scatter(0, 0, color='red', label='(0, f(0))')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.legend()
plt.title('Graph von f(x) = |x|')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]

#only("1")[
#voiceover("Hier ist eine Visualisierung der Funktion f von x gleich dem Absolutwert von x. Beachte, wie der Graph bei x gleich null stetig ist, ohne Unterbrechung oder Lücke.")
]

]
]

#slide()[

#text(size: 30pt, weight: "bold")[Fazit]

#v(40pt)

#only("1-")[Da alle drei Bedingungen erfüllt sind, können wir schließen, dass $f(x) = |x|$ bei $x = 0$ stetig ist. 🎉]

#only("1")[
#voiceover("Da alle drei Bedingungen für die Stetigkeit erfüllt sind, können wir schließen, dass die Funktion f von x gleich dem Absolutwert von x bei x gleich null tatsächlich stetig ist.")
]

]