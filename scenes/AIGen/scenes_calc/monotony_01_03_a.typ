#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme

#slide()[
#text(size: 30pt, weight: "bold")[Lösung]
#v(40pt)

#only("1-")[$f(x) = x^3 - x$]
#only("1")[#voiceover("Das ist leider falsch. Wir haben die Funktion f von x gleich x hoch drei minus x.")]

#v(10pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Ableitung bilden]]]
#only("2")[#voiceover("Zuerst bilden wir die Ableitung. Die Ableitung von x hoch drei ist drei x quadrat, und die Ableitung von minus x ist minus eins.")]

#v(10pt)
#only("3-")[$f'(x) = 3x^2 - 1$]
#only("3")[#voiceover("Die Ableitung ist also f Strich von x gleich drei x quadrat minus eins.")]

#v(10pt)
#only("4-")[#align(center)[#text(fill:aqua)[⇓ Vorzeichen untersuchen]]]
#only("4")[#voiceover("Jetzt untersuchen wir das Vorzeichen der Ableitung.")]

#v(10pt)
#only("5-")[$3x^2 - 1 > 0$ für $|x| > 1/sqrt(3)$]
#only("5")[#voiceover("Drei x quadrat minus eins ist größer als null, wenn der Betrag von x größer ist als eins durch Wurzel drei.")]

#v(10pt)
#only("6-")[$3x^2 - 1 < 0$ für $|x| < 1/sqrt(3)$]
#only("6")[#voiceover("Und drei x quadrat minus eins ist kleiner als null, wenn der Betrag von x kleiner ist als eins durch Wurzel drei.")]

#v(10pt)
#only("7-")[#text(weight: "bold")[⇒ $f(x)$ ist weder monoton steigend noch fallend]]
#only("7")[#voiceover("Da die Ableitung ihr Vorzeichen wechselt, ist die Funktion f von x gleich x hoch drei minus x weder monoton steigend noch monoton fallend.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualisierung]
#v(40pt)
#only("1-")[Graph von $f(x) = x^3 - x$]  

#only("1")[
#voiceover("Hier seht ihr den Graphen der Funktion f von x gleich x hoch drei minus x. Wie ihr seht, steigt die Funktion zunächst, fällt dann aber wieder. Sie ist also weder durchgehend steigend noch durchgehend fallend, sondern wechselt ihre Monotonie.")   
]
#v(60pt)
#only("1-")[
#figure(
 pyimage(```
import matplotlib.pyplot as plt  
import numpy as np

# Defining the function
def f(x):
   return x**3 - x

# Generating x values  
x = np.linspace(-3, 3, 400)

# Generating y values
y = f(x)

# Plotting the function
plt.figure(figsize=(8, 6)) 
plt.plot(x, y)

plt.grid(True)
plt.title("$f(x) = x^3 - x$")

# Showing the plot
plt.show()  
   ```,
 width: 360pt)
)
]
]