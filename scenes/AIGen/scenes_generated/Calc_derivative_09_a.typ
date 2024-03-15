#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#only("1")[
#voiceover("Ey Leute, hier ist Cilian Murphy und heute leiten wir mal eine Funktion ab.")
]
Gesucht: Ableitung der Funktion
#v(40pt)
#only("2-")[
#text()[$ f(x) = "sin"(x^3) - 2x^2 + 12 $]
]
#only("2")[
#voiceover("Wir suchen die Ableitung von f von x gleich Sinus von x hoch drei minus zwei mal x Quadrat plus zwölf.")
]
]
#slide()[
#only("1")[
#voiceover("Okay, um die Ableitung zu finden, nutzen wir wieder die guten alten Ableitungsregeln.")
]
#only("2")[
#voiceover("Die Linearität der Ableitung,")
]
#only("3")[
#voiceover("die Kettenregel,")
]
#only("4")[
#voiceover("und die Ableitung der Sinusfunktion.")
]
#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
#only("1-")[- Linearität der Ableitung]
#only("2-")[- Kettenregel]
#only("3-")[- Ableitung der Sinusfunktion]
]
#slide()[
#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[$f(x) = "sin"(x^3) - 2x^2 + 12$]
#only("1")[
#voiceover("Das ist unsere Ausgangsfunktion f von x gleich Sinus von x hoch drei minus zwei mal x Quadrat plus zwölf.")
]
#v(10pt)
#only("2")[#voiceover("Jetzt leiten wir jeden Term einzeln nach x ab.")]
#v(10pt)
#only("3-")[
#align(center)[#text(fill:aqua)[⇓ Ableitung]]
]
#only("3")[
#voiceover("Zuerst der Sinusterm. Da kommt die Kettenregel zum Einsatz.")
]
#only("4-")[
$"cos"(x^3) dot 3x^2$
]
#only("4")[
#voiceover("Die Ableitung von Sinus von x hoch drei ist Kosinus von x hoch drei mal die Ableitung von x hoch drei, also drei mal x Quadrat.")
]
#only("5")[
#voiceover("Weiter gehts mit zwei mal x Quadrat. Ableiten ist einfach, macht minus vier mal x.")
]
#only("6-")[
$- 4x$
]
#only("6")[
#voiceover("Die Konstante zwölf fällt beim Ableiten weg, die Ableitung einer Konstanten ist null.")
]
#only("7")[
#voiceover("Jetzt setzen wir alles zusammen und erhalten die gesuchte Ableitung: drei mal x Quadrat mal Kosinus von x hoch drei minus vier mal x.")
]
#v(20pt)
#only("7-")[
#text()[$arrow.r$ Ergebnis:
#v(10pt)
$ f'(x) = 3x^2 "cos"(x^3) - 4x $]
]
#only("7")[
#voiceover("Das wars auch schon. Cheerio und bis zum nächsten Mal!")
]
]