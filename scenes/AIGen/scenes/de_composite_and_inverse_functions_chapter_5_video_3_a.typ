#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Großartige Arbeit! Das ist absolut korrekt. Lassen Sie uns die Lösung Schritt für Schritt gemeinsam durchgehen.")
]

#text(size: 30pt, weight: "bold")[Überprüfung von Umkehrfunktionen]

#v(40pt)

#only("2-")[#text()[$ f(x) = 2x + 3 $]]
#only("3-")[#text()[$ g(x) = (x - 3) / 2 $]]
// Die Funktionen f(x) und g(x) werden ab Folie 2 bzw. 3 angezeigt

#only("2")[
#voiceover("Wir betrachten die Funktionen f von x gleich zwei mal x plus drei")
]
#only("3")[
#voiceover("und g von x gleich x minus drei geteilt durch zwei.")
]

]

#slide()[

#only("1")[
#voiceover("Um zu überprüfen, ob diese Funktionen Umkehrfunktionen voneinander sind, müssen wir zwei Bedingungen prüfen:")
]

#text(size: 30pt, weight: "bold")[Bedingungen für Umkehrfunktionen]

#v(40pt)

#only("1-")[1. $ f(g(x)) = x $]
#only("2-")[2. $ g(f(x)) = x $]
// Die beiden Bedingungen für Umkehrfunktionen werden ab Folie 1 bzw. 2 angezeigt

#only("1")[
#voiceover("Erstens sollte die Zusammensetzung von f und g, also f von g von x, gleich x sein.")
]
#only("2")[
#voiceover("Zweitens sollte die Zusammensetzung von g und f, also g von f von x, ebenfalls gleich x sein.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Überprüfung der Bedingung 1]

#v(40pt)

#only("1-")[$ f(g(x)) = f((x - 3) / 2) $]

#v(10pt)

#only("2-")[#align(center)[#text(fill:aqua)[⇓ Ersetze g(x) in f(x)]]]

#v(10pt)

#only("3-")[$ f(g(x)) = 2((x - 3) / 2) + 3 $]

#v(10pt)

#only("4-")[#align(center)[#text(fill:aqua)[⇓ Vereinfache]]]

#v(10pt)

#only("5-")[$ f(g(x)) = x - 3 + 3 $]
#only("6-")[$ f(g(x)) = x $]

#only("1")[#voiceover("Um die erste Bedingung zu überprüfen, beginnen wir damit, g von x in f von x zu ersetzen.")]

#only("2")[#voiceover("Das ergibt f von g von x gleich f von x minus drei geteilt durch zwei.")]

#only("3")[#voiceover("Wenden wir die Funktion f an, erhalten wir zwei mal die Menge x minus drei geteilt durch zwei, plus drei.")]

#only("4")[#voiceover("Lassen Sie uns nun diesen Ausdruck vereinfachen.")]

#only("5")[#voiceover("Durch Ausmultiplizieren erhalten wir x minus drei, und durch Hinzufügen von drei erhalten wir einfach x.")]

#only("6")[#voiceover("Also ist f von g von x gleich x, was die erste Bedingung erfüllt.")]

]

#slide()[

#text(size: 30pt, weight: "bold")[Überprüfung der Bedingung 2]

#v(40pt)

#only("1-")[$ g(f(x)) = g(2x + 3) $]

#v(10pt)

#only("2-")[#align(center)[#text(fill:aqua)[⇓ Ersetze f(x) in g(x)]]]

#v(10pt)

#only("3-")[$ g(f(x)) = (2x + 3 - 3) / 2 $]

#v(10pt)

#only("4-")[#align(center)[#text(fill:aqua)[⇓ Vereinfache]]]

#v(10pt)

#only("5-")[$ g(f(x)) = 2x / 2 $]
#only("6-")[$ g(f(x)) = x $]

#only("1")[#voiceover("Ähnlich wie bei der ersten Bedingung ersetzen wir f von x in g von x.")]

#only("2")[#voiceover("Das ergibt g von f von x gleich zwei x plus drei minus drei, alles geteilt durch zwei.")]

#only("3")[#voiceover("Durch Vereinfachung des Zählers heben sich die Dreien auf, und wir erhalten zwei x geteilt durch zwei.")]

#only("4")[#voiceover("Und zwei geteilt durch zwei ist einfach eins, sodass wir x erhalten.")]

#only("5")[#voiceover("Somit ist g von f von x gleich x, was die zweite Bedingung erfüllt.")]

#only("6")[#voiceover("Da beide Bedingungen erfüllt sind, können wir schließen, dass f und g tatsächlich Umkehrfunktionen voneinander sind.")]

]

#slide()[

#text(size: 30pt, weight: "bold")[Schlussfolgerung]

#v(40pt)

#only("1-")[$ f(g(x)) = x $]
#only("2-")[$ g(f(x)) = x $]

#v(20pt)

#only("3-")[🎉 $ f(x) $ und $ g(x) $ sind Umkehrfunktionen! 🎉]

#only("1")[#voiceover("Wir haben überprüft, dass f von g von x gleich x ist,")]

#only("2")[#voiceover("und g von f von x ebenfalls gleich x ist.")]

#only("3")[#voiceover("Daher können wir mit Sicherheit sagen, dass die Funktionen f von x gleich zwei x plus drei und g von x gleich x minus drei geteilt durch zwei tatsächlich Umkehrfunktionen sind. Großartige Arbeit!")]

]