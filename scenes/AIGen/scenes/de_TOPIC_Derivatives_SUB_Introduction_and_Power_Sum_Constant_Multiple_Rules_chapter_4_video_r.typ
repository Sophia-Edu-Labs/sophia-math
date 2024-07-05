#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Überblick: Ableitungsregeln kombinieren 📊]
#v(40pt)
#only("1-")[- Ableitungsregeln vereinfachen komplexe Berechnungen 🧮]
#only("2-")[- Wir werden überprüfen, wie man Potenz-, Summen- und Konstantenregeln kombiniert 🔍]
#only("3-")[- Dies hilft uns, komplexere Funktionen effizient zu bewältigen 💡]

#only("1")[
#voiceover("Lass uns überprüfen, wie wir Ableitungsregeln kombinieren, um komplexere Funktionen zu handhaben.")
]
#only("2")[
#voiceover("Insbesondere werden wir uns ansehen, wie die Potenzregel, Summenregel und Konstantenregel zusammenarbeiten.")
]
#only("3")[
#voiceover("Diese Kombination ermöglicht es uns, eine Vielzahl von Funktionen effizienter abzuleiten.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Regeln im Überblick 📝]
#v(20pt)
#only("1-")[1. Potenzregel: $dif/"dx" (x^n) = n x^(n-1)$]
#v(10pt)
#only("2-")[2. Summenregel: $dif/"dx" (f(x) + g(x)) = f'(x) + g'(x)$]
#v(10pt)
#only("3-")[3. Konstantenregel: $dif/"dx" (c f(x)) = c f'(x)$]

#only("1")[
#voiceover("Zuerst lass uns die Potenzregel schnell wiederholen. Die Ableitung von x hoch n ist n mal x hoch n minus 1.")
]
#only("2")[
#voiceover("Als nächstes besagt die Summenregel, dass die Ableitung einer Summe die Summe der Ableitungen ist.")
]
#only("3")[
#voiceover("Schließlich sagt uns die Konstantenregel, dass wir konstante Koeffizienten beim Ableiten herausziehen können.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Regeln kombinieren: Beispiel 🌟]
#v(20pt)
#only("1-")[Betrachte: $f(x) = 3x^4 - 2x^2 + 5x - 7$]
#v(20pt)
#only("2-")[Schritt 1: Wende die Konstanten- und Potenzregel an]
#only("3-")[Schritt 2: Verwende die Summenregel]
#v(20pt)
#only("4-")[$f'(x) = 12x^3 - 4x + 5$]

#only("1")[
#voiceover("Lass uns diese Regeln anwenden, um die Ableitung von f von x gleich 3 x hoch 4 minus 2 x quadrat plus 5 x minus 7 zu finden.")
]
#only("2")[
#voiceover("Wir beginnen damit, die Konstantenregel und die Potenzregel auf jeden Term anzuwenden.")
]
#only("3")[
#voiceover("Dann verwenden wir die Summenregel, um diese Ergebnisse zu kombinieren.")
]
#only("4")[
#voiceover("Das ergibt f Strich von x gleich 12 x hoch 3 minus 4 x plus 5.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 🎓]
#v(40pt)
#only("1-")[- Regeln kombinieren für effiziente Ableitung 🔧]
#only("2-")[- Wende die Regeln der Reihe nach an: Konstantenregel, Potenzregel, dann Summenregel 🔢]
#only("3-")[- Übe mit verschiedenen Funktionen, um diese Technik zu meistern 💪]

#only("1")[
#voiceover("Zusammenfassend ermöglicht uns das Kombinieren von Ableitungsregeln, komplexe Funktionen effizient abzuleiten.")
]
#only("2")[
#voiceover("Der Schlüssel ist, die Regeln der Reihe nach anzuwenden: zuerst die Konstanten- und Potenzregel auf einzelne Terme, dann die Summenregel, um die Ergebnisse zu kombinieren.")
]
#only("3")[
#voiceover("Mit Übung wirst Du darin geübt, diese Regeln auf eine Vielzahl von Funktionen anzuwenden.")
]
]