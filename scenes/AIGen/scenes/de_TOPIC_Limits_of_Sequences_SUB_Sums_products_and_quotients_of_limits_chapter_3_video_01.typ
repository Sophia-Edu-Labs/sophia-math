#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzwerte von Folgenquotienten]
#v(40pt)
#only("1-")[$ lim_(n -> infinity) ((a_n)/(b_n)) = ? $]
#only("1")[
#voiceover("Betrachte zwei Folgen a_n und b_n. Was ist der Grenzwert ihres Quotienten, wenn n gegen unendlich geht?")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzwerte von Folgenquotienten]
#v(40pt)
#only("1-")[$ lim_(n -> infinity) ((a_n)/(b_n)) = (lim_(n -> infinity) a_n)/(lim_(n -> infinity) b_n) $]
#v(20pt)
#only("2-")[⚠️ Vorausgesetzt $ lim_(n -> infinity) b_n ≠ 0 $]
#only("1")[
#voiceover("Der Grenzwert des Quotienten zweier Folgen ist gleich dem Quotienten ihrer individuellen Grenzwerte.")
]
#only("2")[
#voiceover("Dies gilt jedoch nur, wenn der Grenzwert der Nennerfolge b_n nicht null ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[Betrachte $ a_n = 1/n $ und $ b_n = 1/n^2 $]
#v(20pt)
#only("2-")[$ lim_(n -> infinity) (a_n/b_n) = ? $]
#only("1")[
#voiceover("Schauen wir uns ein Beispiel an. Betrachte die Folgen a_n gleich 1 durch n und b_n gleich 1 durch n Quadrat.")
]
#only("2")[
#voiceover("Was ist der Grenzwert des Quotienten dieser Folgen, wenn n gegen unendlich geht?")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[$ lim_(n -> infinity) ((a_n)/(b_n)) = (lim_(n -> infinity) (1)/(n))/(lim_(n -> infinity) (1)/(n^2)) $]
#v(20pt)
#only("2-")[$ = (0)/(0) = (0 dot n^2)/(0 dot n) = n $]
#v(20pt)
#only("3-")[$ lim_(n -> infinity) ((a_n)/(b_n)) = lim_(n -> infinity) n = infinity $]
#only("1")[
#voiceover("Nach der gerade gelernten Regel ist dies gleich dem Grenzwert von a_n geteilt durch den Grenzwert von b_n.")
]
#only("2")[
#voiceover("Der Grenzwert von 1 durch n ist null und der Grenzwert von 1 durch n Quadrat ist ebenfalls null. Das ergibt 0 durch 0, was eine unbestimmte Form ist. Aber wir können dies umschreiben als 0 mal n Quadrat durch 0 mal n, was sich zu n vereinfacht.")
]
#only("3")[
#voiceover("Daher ist der Grenzwert des Quotienten dieser Folgen der Grenzwert von n, wenn n gegen unendlich geht, was unendlich ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[$ lim_(n -> infinity) ((a_n)/(b_n)) = (lim_(n -> infinity) a_n)/(lim_(n -> infinity) b_n) $]
#v(20pt)
#only("2-")[⚠️ Vorausgesetzt $ lim_(n -> infinity) b_n ≠ 0 $]
#v(20pt)
#only("3-")[🧮 Verwende die Regel von L'Hôpital für (0)/(0) oder (infinity)/(infinity)]
#only("1")[
#voiceover("Zusammenfassend ist der Grenzwert des Quotienten zweier Folgen der Quotient ihrer Grenzwerte,")
]
#only("2")[
#voiceover("vorausgesetzt, dass der Grenzwert der Nennerfolge nicht null ist.")
]
#only("3")[
#voiceover("Wenn du eine unbestimmte Form wie 0 durch 0 oder unendlich durch unendlich erhältst, kannst du die Regel von L'Hôpital verwenden, um den Grenzwert zu berechnen.")
]
]