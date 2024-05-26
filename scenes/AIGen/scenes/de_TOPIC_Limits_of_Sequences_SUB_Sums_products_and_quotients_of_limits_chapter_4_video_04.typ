#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Kombinieren von Grenzwerten 🧮]
#v(40pt)
#only("1-")[
- Grenzwerte von Summen, Produkten und Quotienten
]
#v(20pt)
#only("2-")[
- $lim_(n -> infinity) (a_n + b_n) = lim_(n -> infinity) a_n + lim_(n -> infinity) b_n$
]
#v(20pt)
#only("3-")[
- $lim_(n -> infinity) (a_n b_n) = lim_(n -> infinity) a_n dot lim_(n -> infinity) b_n$
]
#v(20pt)
#only("4-")[
- $lim_(n -> infinity) (a_n / b_n) = lim_(n -> infinity) a_n / lim_(n -> infinity) b_n$, wenn $lim_(n -> infinity) b_n != 0$
]
#only("1")[
#voiceover("In dieser Zusammenfassung werden wir besprechen, wie man Grenzwerte durch Summen, Produkte und Quotienten kombiniert, um den Grenzwert komplexerer Folgen zu finden.")
]
#only("2")[
#voiceover("Der Grenzwert der Summe zweier Folgen ist gleich der Summe ihrer individuellen Grenzwerte.")
]
#only("3")[
#voiceover("Ähnlich ist der Grenzwert des Produkts zweier Folgen gleich dem Produkt ihrer individuellen Grenzwerte.")
]
#only("4")[
#voiceover("Für Quotienten gilt: Der Grenzwert des Quotienten zweier Folgen ist gleich dem Quotienten ihrer individuellen Grenzwerte, vorausgesetzt, der Grenzwert der Nennerfolge ist nicht null.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel 📝]
#v(40pt)
#only("1-")[
Gegeben $a_n = 1/n$ und $b_n = 2/n^2$, finde:
]
#v(20pt)
#only("2-")[
$lim_(n -> infinity) (a_n + b_n) / a_n$
]
#only("1")[
#voiceover("Schauen wir uns ein Beispiel an. Gegeben sind zwei Folgen a_n gleich 1 durch n und b_n gleich 2 durch n Quadrat. Wir wollen den Grenzwert ihrer Summe, geteilt durch a_n, finden, wenn n gegen unendlich geht.")
]
#only("2")[
#voiceover("Wir können dies unter Verwendung der gerade besprochenen Regeln aufschlüsseln.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösung 🎯]
#v(40pt)
#only("1-")[
$lim_(n -> infinity) (a_n + b_n) / a_n$
]
#v(20pt)
#only("2-")[
$= (lim_(n -> infinity) a_n + lim_(n -> infinity) b_n) / lim_(n -> infinity) a_n$
]
#v(20pt)
#only("3-")[
$= (0 + 0) / 0$
]
#v(20pt)
#only("4-")[
$= 0 / 0$ (unbestimmte Form)
]
#v(20pt)
#only("5-")[
$= lim_(n -> infinity) (1 + b_n / a_n) = 1$
]
#only("1")[
#voiceover("Wir beginnen mit dem Grenzwert, den wir finden wollen.")
]
#only("2")[
#voiceover("Unter Verwendung der Regeln für Grenzwerte von Summen und Quotienten können wir dies in die Summe der Grenzwerte von a_n und b_n, geteilt durch den Grenzwert von a_n, aufteilen.")
]
#only("3")[
#voiceover("Wir wissen, dass der Grenzwert von 1 durch n und 2 durch n Quadrat, wenn n gegen unendlich geht, beide null sind.")
]
#only("4")[
#voiceover("Dies ergibt null geteilt durch null, was eine unbestimmte Form ist.")
]
#only("5")[
#voiceover("Um dies zu lösen, können wir den ursprünglichen Ausdruck zu 1 plus b_n durch a_n vereinfachen und dann den Grenzwert finden. Wenn n gegen unendlich geht, geht b_n durch a_n gegen null, sodass der Grenzwert 1 ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]
#v(40pt)
#only("1-")[
- Grenzwerte können unter Verwendung von Summen-, Produkt- und Quotientenregeln kombiniert werden
]
#v(20pt)
#only("2-")[
- Sei vorsichtig mit unbestimmten Formen (wie 0/0)
]
#v(20pt)
#only("3-")[
- Vereinfache Ausdrücke, bevor Du Grenzwerte berechnest, wenn nötig
]
#only("1")[
#voiceover("Die wichtigsten Erkenntnisse aus dieser Zusammenfassung sind:")
]
#only("2")[
#voiceover("Erstens, Grenzwerte können unter Verwendung der Regeln für Summen, Produkte und Quotienten kombiniert werden. Sei jedoch vorsichtig mit unbestimmten Formen wie null durch null.")
]
#only("3")[
#voiceover("Wenn Du auf eine unbestimmte Form stößt, versuche den Ausdruck zu vereinfachen, bevor Du den Grenzwert berechnest, so wie wir es im Beispiel getan haben.")
]
]