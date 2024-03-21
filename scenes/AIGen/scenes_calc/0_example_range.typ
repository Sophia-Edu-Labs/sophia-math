#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme


#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme

#slide()[

#only("1")[
  #voiceover("Wir suchen den Definitions- und Wertebereich")
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
  #voiceover("Um den Definitionsbereich zu finden, betrachten wir zunächst den Nenner von 1 durch x Quadrat. Denn dieser darf nicht null werden, sonst teilen wir durch 0.")
]
#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
    #only("1-")[- Untersuche Nenner von $1/x^2$]
    #only("2-")[- Wertebereich von $e^x$ und $1/x^2$]
#only("2")[
  #voiceover("Dann schauen wir uns den Wertebereich beider Summanden an. ...")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Definitionsbereich]
#v(40pt)
#only("-1")[$f(x) = e^x + 1/x^2$]#only("2-4")[$f(x) = e^x + $#text(fill: red)[$1/x^2$]]#only("5-")[$f(x) = #text(fill: red)[$e^x$] + 1/x^2$]
#only("1")[#voiceover("Ok, zunächst betrachten wir also den ")]
#only("2")[#voiceover("Ausdruck eins durch x quadrat. Der Zähler, also x quadrat, darf ja ")]
#only("3")[#voiceover("nicht null werden. Das bedeutet, dass  ")]
#only("4")[#voiceover("x nicht null sein darf.")]
#only("5")[#voiceover("In die E Funktion dürfen wir alle Werte für x einsetzen. Also ist der Definitionsbereich alle reellen Zahlen außer null. ...")]
]

#v(10pt)
#only("3-")[#align(center)[#text(fill:aqua)[⇓ Nenner $≠0$]]]
#v(10pt)
#only("4-")[#align(center)[#text()[$x≠0$]]
]


#slide()[
#text(size: 30pt, weight: "bold")[Wertebereich]
#v(40pt)
#only("-1")[$f(x) = e^x + 1/x^2$]#only("2-3")[$f(x) = e^x + $#text(fill: red)[$1/x^2$]]#only("4-")[$f(x) = #text(fill: red)[$e^x$] + 1/x^2$]
#v(40pt)
#only("2-")[- $limits(lim)_(x-> -infinity)e^x=0$]
#v(20pt)
#only("3-")[- $limits(lim)_(x->infinity)e^x=infinity$]
#v(40pt)

#only("4-")[- $limits(lim)_(x-> -infinity)1/x^2=0$]
#v(20pt)
#only("5-")[- $limits(lim)_(x->infinity)1/x^2=0$]

#only("1")[#voiceover("Überlegen wir uns jetzt, was der Wertebereich ist. Dafür betrachten wir wieder die beiden Summanden.")]
#only("2")[#voiceover("Wir beginnen mit dem Ausdruck e hoch x. Für x gegen minus unendlich geht e hoch x gegen null.")]
#only("3")[#voiceover("und für x gegen plus unendlich geht e hoch x gegen plus unendlich.")]
#only("4")[#voiceover("Machen wir das gleiche für den Ausdruck eins durch x quadrat. Für x gegen minus unendlich geht eins durch x quadrat gegen null.")]
#only("5")[#voiceover("und für x gegen plus unendlich geht eins durch x quadrat ebenfalls gegen null. Also ist der Wertebereich von f von x gleich null bis plus unendlich, weil die Summe für x gegen minus unendlich gegen null und für x gegen plus unendlich gegen plus unendlich geht. ... Das wars schon mit unsrer Matheübung, bis bald!")]

]
