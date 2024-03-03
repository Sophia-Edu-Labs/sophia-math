#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[

#only("1")[
  #voiceover("Das ist leider nicht richtig ... Wir wollen ja die Stammfunktion von ")
]

Berechne eine Stammfunktion von
#v(40pt)
#only("2-")[#text()[$f(x) = 1/(x^2) + x$]]
#only("2")[
  #voiceover("der Funktion f von x gleich eins durch x quadrat plus x,")
]
#v(40pt)
#only("3-")[
die durch den Punkt $(1,0)$ läuft
]
#only("3")[
  #voiceover("die durch den Punkt mit den Koordinaten eins und null läuft bestimmen.")
]
]

#slide()[

#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[$f(x) = 1/(x^2) + x$]
#only("1")[
  #voiceover("Wir beginnen mit der Funktion f von x gleich eins durch x quadrat plus x.")
]

#v(10pt)
#only("2")[
  #voiceover("Um eine Stammfunktion zu bestimmen, integrieren wir jeden Term der Funktion einzeln nach x.")
]

#v(10pt)
#only("3-")[
  #align(center)[#text(fill:aqua)[⇓ Integrationsregeln]]
]

#only("3")[
  #voiceover("Dafür wenden wir die üblichen Integrationsregeln an...")
]
#v(10pt)
#only("4-")[$F(x) = -1/x$]
#only("5-")[$ + 1/2 x^2$]
#only("6-")[$ + C$]

#only("4")[
  #voiceover("Das Integral von eins durch x quadrat ist minus eins durch x. ...")
]
#only("5")[
  #voiceover("und das Integral von x ist ein halb x quadrat. ..")
]
#only("6")[
  #voiceover("Dann fügen wir noch die Integrationskonstante c hinzu. Die allgemeine Stammfunktion ist also F von x gleich minus eins durch x plus ein halb x quadrat plus c.")
]
]

#slide()[

#text(size: 30pt, weight: "bold")[Bestimmung der Konstanten C]
#v(40pt)

#only("1")[
  #voiceover("Jetzt müssen wir c so bestimmen, dass die Stammfunktion den Punkt 1 und 0 durchläuft.")
]
#v(10pt)
#only("1-")[$0 = -1/1 + 1/2 1^2 + C$]
#v(10pt)
#only("2-")[$C = 1/2$]
#only("2")[
  #voiceover("Durch Einsetzen der Koordinaten des Punktes 1 0 lösen wir die Gleichung. So können wir erkennen, dass die Integrationskonstante c gleich ein halb ist.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Endresultat]
#v(40pt)
#only("1-")[$F(x) = -1/x + 1/2 x^2 + 1/2$]
#only("1")[
  #voiceover("Die spezielle Stammfunktion, die den Punkt 1 0 durchläuft, lautet also F von x gleich minus eins durch x plus ein halb x quadrat plus ein halb.")
]
]