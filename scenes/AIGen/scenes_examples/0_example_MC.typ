#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
  

#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
  #set text(size: 20pt)
  #it.body
]
#set text(lang: "de")

#slide()[

#only("1")[
#voiceover("Welche der folgenden Funktionen hat ein lokales Maximum bei x=0?")]
#text(size: 30pt, weight: "bold")[Maximum bei $x=0$?]
#v(40pt)
#only("2-")[$f(x) = x^3$]
#only("2")[#voiceover("Ist es die Funktion f von x gleich x hoch drei?")]
#v(10pt)
#only("3-")[$f(x) = x^2$]
#only("3")[#voiceover("Oder die Funktion f von x gleich x quadrat?")]
#v(10pt)
#only("4-")[$f(x) = -x^2$]
#only("4")[#voiceover("Oder ist es die Funktion f von x gleich minus x quadrat?")]
#v(10pt)
#only("5-")[$f(x) = -x^3$]
#only("5")[#voiceover("Oder, letzte Option: ... Ist es die Funktion f von x gleich minus x hoch drei? ...")]
]

#slide()[
#only("1")[
#voiceover("Betrachten wir die einzelnen Optionen.")
]
#text(size: 30pt, weight: "bold")[Lösung]
#v(40pt)
#only("-1")[$f(x) = x^3$]#only("2-")[#text(fill:red)[$f(x) = x^3$: Wendepunkt]]
#only("2")[#voiceover("Die Funktion x hoch drei kann es nicht sein. Die zweite Ableitung an der Stelle x gleich Null ist nämlich Null, also haben wir dort einen Wendepunkt und kein Maximum. ...")]
#v(10pt)
#only("-2")[$f(x) = x^2$]#only("3-")[#text(fill:red)[$f(x) = x^2$: Minimum]]
#only("3")[#voiceover("Die Funktion x quadrat kann es auch nicht sein. Die zweite Ableitung an der Stelle x gleich Null ist nämlich positiv, also haben wir dort ein Minimum und kein Maximum. ...")]
#v(10pt)
#only("-3")[$f(x) = -x^2$]#only("4-")[#text(fill:green)[$f(x) = -x^2$: Maximum]]
#only("4")[#voiceover("Die Funktion minus x quadrat ist die richtige Antwort. Die erste Ableitung an der Stelle x gleich Null ist nämlich Null, und die zweite Ableitung an der Stelle x gleich Null ist negativ, also haben wir dort ein Maximum. ...")]
#v(10pt)
#only("-4")[$f(x) = -x^3$]#only("5-")[#text(fill:red)[$f(x) = -x^3$: Wendepunkt]]
#only("5")[#voiceover("Schließlich kann es die  Funktion minus x hoch drei auch nicht sein. Die zweite Ableitung an der Stelle x gleich Null ist auch da Null, also haben wir dort einen Wendepunkt und kein Maximum. ...")]
]




#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]

#only("1")[
  #voiceover("Lasst uns das ganze noch visualisieren. ...")
]
#v(60pt)
#only("2-")[
#box()[
  #morphchildren(id: "plot")[
#figure(
  pyimage(```
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

# Generating y values
y1 = f1(x)
y2 = f2(x)
y3 = f3(x)
y4 = f4(x)

# Plotting the functions
plt.figure(figsize=(10, 8))

plt.subplot(2, 2, 1)
plt.plot(x, y1)
plt.title("$f(x)=x^3$")
plt.scatter([0], [f1(0)], color='red', s=100)  # Point of interest

plt.subplot(2, 2, 2)
plt.plot(x, y2)
plt.title("$f(x)=x^2$")
plt.scatter([0], [f2(0)], color='red', s=100)  # Point of interest

plt.subplot(2, 2, 3)
plt.plot(x, y3)
plt.title("$f(x)=-x^2$")
plt.scatter([0], [f3(0)], color='red', s=100)  # Point of interest

plt.subplot(2, 2, 4)
plt.plot(x, y4)
plt.title("$f(x)=-x^3$")
plt.scatter([0], [f4(0)], color='red', s=100)  # Point of interest

plt.tight_layout()
plt.show()
    ```, 
  width: 360pt),
caption: [], 
)
]
]
]
#only("2")[
  #voiceover("Hier seht ihr die vier Funktionen. Die roten Punkte markieren die Stelle x gleich Null. ... Wir können sehen, dass lediglich die Funktion minus x quadrat an der Stelle x gleich Null ein Maximum hat. ...")
]
]


