#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme


#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme

#slide()[

#only("1")[
  #voiceover("Betrachten wir die Funktion")
]
Definitions- und Wertebereich
#v(40pt)
#only("2-")[#text()[$ f(x) = e^x + 1/x^2 $]]
#only("2")[
  #voiceover("der Funktion f von x gleich e hoch x plus eins durch x Quadrat.")
]
]

#slide()[
#only("1")[
  #voiceover("Um den Definitions- und Wertebereich zu finden, betrachten wir zunächst den Ausdruck des")
]
#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
    #only("1-")[- Untersuchung des Nenners]
    #only("2-")[- Eigenschaften von e^x]
#only("2")[
  #voiceover("Nenners von 1 durch x Quadrat, denn dieser darf nicht null werden. Danach schauen wir uns den Wertebereich beider Summanden an.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Definitionsbereich]
#v(40pt)
#only("-1")[$f(x) = e^x + 1/x^2$]#only("2-4")[$f(x) = e^x + $#text(fill: red)[$1/x^2$]]#only("4-")[$f(x) = e^x + $#text(fill: red)[$1/x^2$]]
#only("1")[#voiceover("Ok, zunächst betrachten wir also den ")]
#only("2")[#voiceover("Ausdruck eins durch x quadrat. Der Zähler, also x quadrat, darf ja ")]
#only("3")[#voiceover("nicht null werden. Das bedeutet, dass  ")]
#only("4")[#voiceover("x nicht null sein darf.")]
#only("5")[#voiceover("In die E Funktion dürfen wir alle Werte für x einsetzen. Also ist der Definitionsberich alle reellen Zahlen außer null.")]
]

#v(10pt)
#only("3-")[#align(center)[#text(fill:aqua)[⇓ Nenner $≠0$]]]
#v(10pt)
#only("4-")[#align(center)[#text()[$x≠0$]]
]


#slide()[
#text(size: 30pt, weight: "bold")[Wertebereich]
#v(40pt)
#only("-1")[$f(x) = e^x + 1/x^2$]#only("2-4")[$f(x) = e^x + $#text(fill: red)[$1/x^2$]]#only("4-")[$f(x) = e^x + $#text(fill: red)[$1/x^2$]]
#v(40pt)
#only("1-")[- $limits(lim)_(x-> -infinity)e^x=0$]
#v(20pt)
#only("1-")[- $limits(lim)_(x->infinity)e^x=infinity$]
#v(40pt)

#only("1-")[- $limits(lim)_(x-> -infinity)1/x^2=0$]
#v(20pt)
#only("1-")[- $limits(lim)_(x->infinity)1/x^2=0$]

#only("1")[#voiceover("Überlegen wir uns jetzt, was der Wertebereich ist. Dafür betrachten wir wieder die beiden Summanden.")]
#only("2")[#voiceover("Wir beginnen mit dem Ausdruck e hoch x. Für ")]
#only("3")[#voiceover("nicht null werden. Das bedeutet, dass  ")]
#only("4")[#voiceover("x nicht null sein darf.")]
#only("5")[#voiceover("In die E Funktion dürfen wir alle Werte für x einsetzen. Also ist der Definitionsberich alle reellen Zahlen außer null.")]
]
#v(10pt)
#only("3-")[#align(center)[#text(fill:aqua)[⇓ Nenner $≠0$]]]
#v(10pt)
#only("4-")[#align(center)[#text()[$x≠0$]]
]


// #slide()[
// #text(size: 30pt, weight: "bold")[Visualisierung]

// #only("1")[
//   #voiceover("Lasst uns das ganze noch visualisieren. ...")
// ]
// #v(60pt)
// #only("2-")[
// #box()[
//   #morphchildren(id: "plot")[
// #figure(
//   pyimage(```
// import matplotlib.pyplot as plt
// import numpy as np

// # Defining the function
// def f(x):
//     return np.exp(x) + 1/x**2

// # Generating x values around the undefined point and beyond
// x_positive = np.linspace(0.1, 2, 400)
// x_negative = np.linspace(-2, -0.1, 400)

// # Generating y values
// y_positive = f(x_positive)
// y_negative = f(x_negative)

// # Plotting the function
// plt.figure(figsize=(10, 6))

// plt.plot(x_positive, y_positive, label='Positive $x$')
// plt.plot(x_negative, y_negative, label='Negative $x$')

// plt.title("$f(x) = e^x + \1/x^2$")
// plt.xlabel("$x$")
// plt.ylabel("$f(x)$")

// plt.axhline(0, color='black', lw=0.5)
// plt.axvline(0, color='black', lw=0.5, linestyle='--')
// plt.legend()

// plt.ylim(-2, 10)  # Setting y limits to visualize the range better

// plt.show()
//     ```, 
//   width: 360pt),
// caption: [], 
// )
// ]
// ]
// ]
// #only("2")[
//   #voiceover("Hier seht ihr die vier Funktionen. Die roten Punkte markieren die Stelle x gleich Null. ... Wir können sehen, dass lediglich die Funktion minus x quadrat an der Stelle x gleich Null ein Maximum hat. ...")
// ]
// ]
