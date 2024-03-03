#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[

#only("1")[
  #voiceover("Das ist leider falsch.  ... Um die Stammfunktion zu finden, beginnen wir also mit der Integration ")
]
#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[$f(x) = -2 sin(1/2 x)$]
#only("1")[#voiceover("Wir beginnen mit der Funktion f von x gleich minus zwei mal der Sinus von ein halb x.")]
#v(10pt)
#only("2")[#voiceover("Um eine Stammfunktion zu bestimmen, integrieren wir die Funktion nach x.")]
#v(10pt)
#only("3-")[#align(center)[#text(fill:aqua)[⇓ Integrationsregeln]]]
#only("3")[#voiceover("Wir nutzen die allgemeine Regel, dass das Integral von Sinus b x gleich minus 1/b mal der Kosinus von b x ist, plus einer Konstanten.")]
#v(10pt)
#only("4-")[$F(x) = -2 dot (-1/(1/2)) cos(1/2 x) + C$]
#only("4")[#voiceover("Die Stammfunktion von minus zwei mal dem Sinus von ein halb x wird zu vier mal dem Kosinus von ein halb x plus einer Konstanten C.")]
#v(10pt)
#only("5-")[$F(x) = 4 cos(1/2 x) + C$]
#only("5")[#voiceover("Damit vereinfacht sich unsere Stammfunktion zu vier mal dem Kosinus von ein halb x plus C.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Bestimmung der Konstanten]
#v(40pt)
#only("1-")[$F(π) = 1$]
#only("1")[#voiceover("Jetzt setzen wir den Punkt (π, 1) in unsere Stammfunktion ein, um die Integrationskonstante zu bestimmen.")]
#v(10pt)
#only("2-")[$4 cos(1/2 π) + C = 1$]
#only("2")[#voiceover("Wir setzen π für x in die Stammfunktion ein und gleichzeitig den Funktionswert auf 1.")]
#v(10pt)
#only("3-")[$4 cos(π/2) + C = 1$]
#only("3")[#voiceover("Dies vereinfacht sich zu vier mal dem Kosinus von π geteilt durch 2 plus C gleich 1.")]
#v(10pt)
#only("4-")[$4 dot 0 + C = 1$]
#only("4")[#voiceover("Der Kosinus von π geteilt durch 2 ist 0, daher fällt der erste Term weg, und wir bleiben mit C gleich 1.")]
#v(10pt)
#only("5-")[$C = 1$]
#only("5")[#voiceover("Folglich ist die Integrationskonstante C gleich 1.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Finale Stammfunktion]
#v(40pt)
#only("1-")[$F(x) = 4 cos(1/2 x) + 1$]
#only("1")[#voiceover("Jetzt, da wir die Konstante C bestimmt haben, lautet die Stammfunktion F von x gleich vier mal dem Kosinus von ein halb x plus 1.")]
]