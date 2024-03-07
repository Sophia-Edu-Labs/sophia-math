#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
    #only("1")[
        #voiceover("Welche der folgenden Funktionen hat ein lokales Minimum bei x=0? Also, wo genau liegt das Minimum bei x=0?")
    ]
    #text(size: 30pt, weight: "bold")[
        Minimum bei $x=0$?
    ]
    #v(40pt)
    #only("2-")[$f(x) = x^3$]
    #only("2")[#voiceover("Betrachten wir zunächst die Funktion f von x gleich x hoch drei.")]
    #v(10pt)
    #only("3-")[$f(x) = x^2$]
    #only("3")[#voiceover("Wie sieht es mit der Funktion f von x gleich x quadrat aus?")]
    #v(10pt)
    #only("4-")[$f(x) = -x^2$]
    #only("4")[#voiceover("Oder die Funktion f von x gleich minus x quadrat?")]
    #v(10pt)
    #only("5-")[$f(x) = -x^3$]
    #only("5")[#voiceover("Und schließlich, die Funktion f von x gleich minus x hoch drei, ist das eine Möglichkeit?")]
]

#slide()[
    #only("1")[
        #voiceover("Lassen Sie uns jede Option genauer betrachten und herausfinden, welche Funktion ein lokales Minimum bei x=0 hat.")
    ]
    #text(size: 30pt, weight: "bold")[
        Lösung
    ]
    #v(40pt)
    #only("-1")[$f(x) = x^3$]#only("2-")[#text(fill:red)[$f(x) = x^3$: Kein Minimum/Maximum]]
    #only("2")[#voiceover("Die Funktion x hoch drei hat bei x gleich Null keinen Extrempunkt, sondern einen Wendepunkt.")]
    #v(10pt)
    #only("-2")[$f(x) = x^2$]#only("3-")[#text(fill:green)[$f(x) = x^2$: Minimum]]
    #only("3")[#voiceover("Die Funktion x quadrat hat bei x gleich Null ein klares Minimum, denn ihre Ableitung wechselt von negativ zu positiv.")]
    #v(10pt)
    #only("-3")[$f(x) = -x^2$]#only("4-")[#text(fill:red)[$f(x) = -x^2$: Maximum]]
    #only("4")[#voiceover("Die Funktion minus x quadrat wiederum hat bei x gleich Null ein Maximum, da ihre Ableitung von positiv zu negativ wechselt.")]
    #v(10pt)
    #only("-4")[$f(x) = -x^3$]#only("5-")[#text(fill:red)[$f(x) = -x^3$: Kein Minimum/Maximum]]
    #only("5")[#voiceover("Und schließlich die Funktion minus x hoch drei, auch sie hat bei x gleich Null keinen Extrempunkt, sondern einen Wendepunkt.")]
]

#slide()[
    #text(size: 30pt, weight: "bold")[
        Visualisierung
    ]
    #only("1")[
        #voiceover("Um unser Verständnis zu vertiefen, schauen wir uns eine Visualisierung dieser Funktionen an.")
    ]
    #v(60pt)
    #only("2-")[
        #box()[
            #morphchildren(id: "plot")[
                #figure(
                    pyimage(`
import matplotlib.pyplot as plt
import numpy as np

# Defining the functions
def f1(x):
    return x**3

def f2(x):
    return x**2

def f3(x):
    return -x**2

def f4(x):
    return -x**3

# Generating x values
x = np.linspace(-2, 2, 400)

# Generating y values for each function
y1 = f1(x)
y2 = f2(x)
y3 = f3(x)
y4 = f4(x)

# Plotting
plt.figure(figsize=(10, 8))

# f(x) = x^3
plt.subplot(2, 2, 1)
plt.plot(x, y1)
plt.title("$f(x)=x^3$")
plt.scatter([0], [f1(0)], color='red')  # Highlighting the point at x=0

# f(x) = x^2
plt.subplot(2, 2, 2)
plt.plot(x, y2)
plt.title("$f(x)=x^2$")
plt.scatter([0], [f2(0)], color='green')  # Highlighting the minimum at x=0

# f(x) = -x^2
plt.subplot(2, 2, 3)
plt.plot(x, y3)
plt.title("$f(x)=-x^2$")
plt.scatter([0], [f3(0)], color='red')  # Highlighting the point at x=0

# f(x) = -x^3
plt.subplot(2, 2, 4)
plt.plot(x, y4)
plt.title("$f(x)=-x^3$")
plt.scatter([0], [f4(0)], color='red')  # Highlighting the point at x=0

plt.tight_layout()
plt.show()
                    `, width: 360pt),
                caption: [],
                )
            ]
        ]
    ]
    #only("2")[
        #voiceover("Hier können wir klar sehen, dass nur die Funktion x quadrat bei x gleich Null ein Minimum aufweist. Die anderen Funktionen haben entweder ein Maximum oder einen Wendepunkt.")
    ]
]