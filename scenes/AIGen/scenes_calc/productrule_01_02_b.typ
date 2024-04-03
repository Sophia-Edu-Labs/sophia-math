#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Das stimmt, toll. Betrachten wir die Lösung gemeinsam!")
]

Gesucht: Ableitung der Funktion
#v(40pt)

#only("2-")[#text()[$ f(x) = sin(x) dot x $]]
#only("2")[
  #voiceover("Wir wollen die Ableitung der Funktion f von x gleich Sinus von x mal x bestimmen.")
]
]

#slide()[
#only("1")[
  #voiceover("Wir wenden die Produktregel an. Das heißt, wir bilden Sinus von x mal die Ableitung von x plus x mal die Ableitung von Sinus von x.")
]

#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
    #only("1-")[- Produktregel: $(u(x) dot v(x))' = u(x) dot v'(x) + v(x) dot u'(x)$]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[$f(x) = sin(x) dot x$]
#only("1")[#voiceover("Wir beginnen mit der Funktion f von x gleich Sinus von x mal x.")]
#v(10pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Anwendung der Produktregel]]]
#only("2")[#voiceover("Jetzt wenden wir die Produktregel an. Die Ableitung von Sinus von x mal x ist Sinus von x mal die Ableitung von x plus x mal die Ableitung von Sinus von x.")]
#v(10pt)
#only("3-")[$f'(x) = sin(x) dot (x)' + x dot (sin(x))'$]
#only("3")[#voiceover("Also ist f Strich von x gleich Sinus von x mal die Ableitung von x plus x mal die Ableitung von Sinus von x.")]
#v(10pt)
#only("4-")[#align(center)[#text(fill:aqua)[⇓ Ableitungen berechnen]]]
#only("4")[#voiceover("Jetzt berechnen wir die einzelnen Ableitungen. Die Ableitung von x ist 1 und die Ableitung von Sinus von x ist Kosinus von x.")]
#v(10pt)
#only("5-")[$f'(x) = sin(x) dot 1 + x dot cos(x)$]
#only("5")[#voiceover("Eingesetzt ergibt das: f Strich von x ist gleich Sinus von x mal 1 plus x mal Kosinus von x.")]
#v(10pt)
#only("6-")[$f'(x) = sin(x) + x dot cos(x)$]
#only("6")[#voiceover("Wir können die Terme noch etwas umstellen und erhalten: f Strich von x ist gleich Sinus von x plus x mal Kosinus von x.")]
]