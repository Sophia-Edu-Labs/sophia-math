#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#only("1")[
  #voiceover("Super, richtig.")
]

Gesucht: Ableitung der Funktion
#v(40pt)

#only("2-")[#text()[$ f(x) = 2 sin(x) $]]
#only("2")[
  #voiceover("Wir wollen die Ableitung der Funktion f von x gleich zwei mal Sinus von x bestimmen.")
]
]

#slide()[
#only("1")[
  #voiceover("Wir nutzen die Faktorregel, das heißt, wir können die Konstante 2 einfach vor die Ableitung von Sinus von x schreiben. Und die Ableitung von Sinus ist Kosinus.")
]

#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
    #only("1-")[- Faktorregel]
    #only("2-")[- Ableitung von Sinus ist Kosinus]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[$f(x) = 2 sin(x)$]
#only("1")[#voiceover("Wir beginnen mit der Funktion f von x gleich zwei mal Sinus von x.")]
#v(10pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Anwendung der Faktorregel]]]
#only("2")[#voiceover("Jetzt wenden wir die Faktorregel an. Die Ableitung von zwei mal Sinus von x ist zwei mal die Ableitung von Sinus von x.")]
#v(10pt)
#only("3-")[$f'(x) = 2 dot (sin(x))'$]
#only("3")[#voiceover("Also ist f Strich von x gleich zwei mal die Ableitung von Sinus von x.")]
#v(10pt)
#only("4-")[#align(center)[#text(fill:aqua)[⇓ Ableitung von Sinus ist Kosinus]]]
#only("4")[#voiceover("Jetzt nutzen wir, dass die Ableitung von Sinus Kosinus ist.")]
#v(10pt)
#only("5-")[$f'(x) = 2 cos(x)$]
#only("5")[#voiceover("Also ist f Strich von x gleich zwei mal Kosinus von x.")]
]