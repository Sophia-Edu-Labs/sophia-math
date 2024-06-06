#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Potenzfunktionen als $x → ∞$]
#v(40pt)
#only("1-")[- Betrachte $f(x) = x^n$, wobei $n ∈ NN$]
#v(20pt)
#only("2-")[- Beispiele: $f(x) = x^2$, $f(x) = x^3$, $f(x) = x^4$]
#v(20pt)
#only("3-")[- Wenn $x$ größer wird, wird auch $f(x)$ größer 📈]
#only("1")[
#voiceover("Schauen wir uns das Verhalten von Potenzfunktionen der Form f von x gleich x hoch n an, wobei n eine natürliche Zahl ist, wenn x gegen unendlich geht.")
]
#only("2")[
#voiceover("Einige Beispiele für solche Funktionen sind f von x gleich x quadrat, f von x gleich x hoch drei und f von x gleich x hoch vier.")
]
#only("3")[
#voiceover("Wenn x immer größer wird, wird auch der Wert von f von x immer größer.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 5, 100)

plt.figure(figsize=(8, 6))

for n in range(1, 5):
    plt.plot(x, x**n, label=f'$x^{n}$')

plt.xlabel('$x$')
plt.ylabel('$f(x)$')
plt.title('Potenzfunktionen als $x → ∞$')
plt.legend()
plt.grid(True)

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Hier ist eine Visualisierung einiger Potenzfunktionen. Wie Du sehen kannst, wachsen alle Funktionen schnell und streben gegen unendlich, wenn x größer wird.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Formale Definition]
#v(40pt)
#only("1-")[Für jedes $n ∈ NN$, wenn $x → ∞$, $f(x) = x^n → ∞$]
#v(20pt)
#only("2-")[Mathematisch: $lim_(x→∞) x^n = ∞$]
#only("1")[
#voiceover("Formal können wir sagen, dass für jede natürliche Zahl n, wenn x gegen unendlich geht, die Funktion f von x gleich x hoch n auch gegen unendlich geht.")
]
#only("2")[
#voiceover("Mathematisch schreiben wir dies als den Limes von x hoch n, wenn x gegen unendlich geht, gleich unendlich.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Intuition 💡]
#v(40pt)
#only("1-")[- Große Zahlen multiplizieren → noch größere Zahlen]
#v(20pt)
#only("2-")[- Beispiel: $10^2 = 100$, $10^3 = 1000$, $10^4 = 10000$]
#only("1")[
#voiceover("Intuitiv ergibt das Sinn. Wenn wir große Zahlen multiplizieren, erhalten wir noch größere Zahlen.")
]
#only("2")[
#voiceover("Zum Beispiel ist 10 hoch zwei gleich 100, 10 hoch drei gleich 1000 und 10 hoch vier gleich 10.000.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Potenzfunktionen: $f(x) = x^n$, $n ∈ NN$]
#v(20pt)
#only("2-")[- Wenn $x → ∞$, $f(x) → ∞$]
#v(20pt)
#only("3-")[- Große Zahlen multiplizieren ergibt noch größere Zahlen]
#only("1")[
#voiceover("Zusammenfassend sind Potenzfunktionen Funktionen der Form f von x gleich x hoch n, wobei n eine natürliche Zahl ist.")
]
#only("2")[
#voiceover("Wenn x gegen unendlich geht, geht auch der Wert von f von x gegen unendlich.")
]
#only("3")[
#voiceover("Das liegt daran, dass das Multiplizieren großer Zahlen noch größere Zahlen ergibt.")
]
]