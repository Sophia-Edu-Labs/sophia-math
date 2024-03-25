#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
  #set text(size: 20pt)
  #it.body
]
#set text(lang: "de")

#slide()[
#text(size: 30pt, weight: "bold")[Extremstellen finden]
#v(40pt)
#only("2-")[- $1$. und $2$. Ableitung finden]
#only("3-")[- Kritische Punkte bestimmen]
#only("4-")[- Maxima oder Minima?]

#only("1")[
#voiceover("Wie finden wir also die Extremstellen einer Funktion?")
]
#only("2")[
#voiceover("Dafür brauchen wir die erste und zweite Ableitung der Funktion.")
] 
#only("3")[
#voiceover("Mit der ersten Ableitung finden wir die kritischen Punkte der Funktion. Das sind Stellen, an denen die Ableitung gleich Null ist, und die möglichen Kandidaten für Extremstellen.")
]
#only("3")[
#voiceover("Dann setzen wir die Kritischen Punkte in die zweite Ableitung ein. Ist die zweite Ableitung an einer Stelle negativ, haben wir ein Maximum. Ist sie positiv, haben wir ein Minimum. Und wenn die zweite Ableitung null ist, haben wir einen Wendepunkt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Kritische Punkte finden]
#v(40pt)

#only("1-")[- Berechne 1. Ableitung]
#only("2-")[- Stellen, an denen Ableitung nicht existiert]
#only("3-")[- Finde durch Nullsetzen der ersten Ableitung] 

#only("1")[
#voiceover("Ok, beginnen wir damit, die kritischen Punkte zu ermitteln. Kritische Punkte sind wie gesagt Punkte")
]
#only("2")[
#voiceover("Auch Stellen, an denen die Ableitung nicht existiert, zählen als kritische Punkte.")
]  
#only("3")[
#voiceover("Um sie zu finden, setzen wir die erste Ableitung gleich null und lösen nach x auf.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Zweite Ableitung]
#v(40pt)
#only("1-")[- Gibt Auskunft über Krümmung]  
#only("2-")[- An kritischen Punkten auswerten]
#only("3-")[- Negativ ⇒ Maximum, Positiv ⇒ Minimum]

#only("1")[
#voiceover("Die zweite Ableitung einer Funktion informiert uns über ihre Krümmung.")
]
#only("2")[  
#voiceover("Wir werten sie an den kritischen Punkten aus, die wir zuvor gefunden haben.")
]
#only("3")[
#voiceover("Ist die zweite Ableitung dort negativ, liegt ein Maximum vor. Ist sie positiv, haben wir ein Minimum.")
] 
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: $f(x) = x^2 + 2$]
#v(40pt) 
#only("1-")[$f(x) = x^2 + 2$]
#only("1")[#voiceover("Schauen wir uns das an einem Beispiel an. Gegeben sei die Funktion f(x) = x^2 + 2.")]

#v(10pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Erste Ableitung]]]
#only("2")[#voiceover("Zuerst bestimmen wir die erste Ableitung. Die Ableitung von x^2 ist 2x, die Ableitung der Konstante 2 ist 0.")]

#v(10pt)  
#only("3-")[$f'(x) = 2x$]
#only("3")[#voiceover("Die erste Ableitung ist also f'(x) = 2x.")]

#v(10pt)
#only("4-")[#align(center)[#text(fill:aqua)[⇓ Kritischer Punkt]]]  
#only("4")[#voiceover("Um den kritischen Punkt zu finden, setzen wir die erste Ableitung gleich 0.")]

#v(10pt)
#only("5-")[$2x = 0$]  
#only("5")[#voiceover("2x = 0.")]

#v(10pt)
#only("6-")[$x = 0$] 
#only("6")[#voiceover("Aufgelöst nach x ergibt das x = 0. Das ist unser kritischer Punkt.")]

#v(10pt)
#only("7-")[#align(center)[#text(fill:aqua)[⇓ Zweite Ableitung]]]
#only("7")[#voiceover("Jetzt bestimmen wir die zweite Ableitung. Die Ableitung von 2x ist einfach 2.")]  

#v(10pt)
#only("8-")[$f''(x) = 2$]
#only("8")[#voiceover("Die zweite Ableitung ist also f''(x) = 2.")] 

#v(10pt) 
#only("9-")[$f''(0) = 2 > 0$]
#only("9")[#voiceover("Werten wir sie am kritischen Punkt x = 0 aus, erhalten wir 2. Da 2 größer 0 ist, liegt bei x = 0 ein Minimum vor.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#only("1-")[- Graph der Funktion]  
#only("2-")[- Kritischer Punkt markiert]
#only("3-")[- Globales Minimum bei x = 0]

#only("1")[
#voiceover("Zur Veranschaulichung zeichnen wir den Graphen der Funktion.")   
]
#v(60pt)
#only("2-")[
#figure(
  pyimage(```
import matplotlib.pyplot as plt  
import numpy as np

# Defining the function
def f(x):
    return x**2 + 2

# Generating x values  
x = np.linspace(-3, 3, 400)

# Generating y values
y = f(x)

# Plotting the function
plt.figure(figsize=(8, 6)) 
plt.plot(x, y)

# Marking the extremum
plt.scatter(0, f(0), color='red', s=100)  # Point of extremum

plt.grid(True)

# Showing the plot
plt.show()  
    ```,
  width: 360pt),
caption: [$f(x)=x^2 + 2$]
)
]
#only("2")[
#voiceover("Hier seht ihr den Graphen von f. Der rote Punkt markiert den kritischen Punkt, den wir gefunden haben.")  
]
#only("3")[
#voiceover("Wie die Analyse gezeigt hat, handelt es sich um ein globales Minimum bei x = 0.")
]
]