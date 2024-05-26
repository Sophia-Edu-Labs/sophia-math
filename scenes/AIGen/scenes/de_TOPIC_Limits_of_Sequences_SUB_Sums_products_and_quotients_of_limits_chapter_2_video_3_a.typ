#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Problem]
#v(40pt)
#only("1-")[Gegeben $a_n = 1/n$ und $b_n = 2/n$, finde $lim_(n -> infinity) (a_n b_n)$.]
#only("1")[
#voiceover("Großartige Arbeit! Das ist die richtige Antwort. Jetzt sehen wir uns Schritt für Schritt an, wie wir das lösen können. Das Problem verlangt von uns, das Limit des Produkts zweier Folgen a_n und b_n zu finden, wenn n gegen unendlich geht, wobei a_n gleich 1 durch n und b_n gleich 2 durch n ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1]
#v(40pt)
#only("1-")[Erinnere dich an den Satz: Das Limit des Produkts ist das Produkt der Limits.]
#v(20pt)
#only("2-")[$lim_(n -> infinity) (a_n b_n) = (lim_(n -> infinity) a_n) (lim_(n -> infinity) b_n)$]
#only("1")[
#voiceover("Der erste Schritt besteht darin, sich an den Satz zu erinnern, der besagt: Das Limit des Produkts zweier Folgen ist gleich dem Produkt ihrer Limits.")
]
#only("2")[
#voiceover("Mathematisch bedeutet dies, dass das Limit von a_n mal b_n, wenn n gegen unendlich geht, gleich dem Limit von a_n, wenn n gegen unendlich geht, mal dem Limit von b_n, wenn n gegen unendlich geht.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2]
#v(40pt)
#only("1-")[Finde $lim_(n -> infinity) a_n$:]
#v(20pt)
#only("2-")[$lim_(n -> infinity) a_n = lim_(n -> infinity) 1/n = 0$]
#only("1")[
#voiceover("Der nächste Schritt besteht darin, das Limit von a_n zu finden, wenn n gegen unendlich geht.")
]
#only("2")[
#voiceover("Wir sehen, dass a_n gleich 1 durch n ist. Wenn n immer größer wird, nähert sich 1 durch n immer mehr 0. Daher ist das Limit von a_n, wenn n gegen unendlich geht, 0.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3]
#v(40pt)
#only("1-")[Finde $lim_(n -> infinity) b_n$:]
#v(20pt)
#only("2-")[$lim_(n -> infinity) b_n = lim_(n -> infinity) 2/n = 0$]
#only("1")[
#voiceover("Ähnlich müssen wir das Limit von b_n finden, wenn n gegen unendlich geht.")
]
#only("2")[
#voiceover("b_n ist gleich 2 durch n. Wieder nähert sich 2 durch n, wenn n größer wird, 0. Also ist das Limit von b_n, wenn n gegen unendlich geht, ebenfalls 0.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 4]
#v(40pt)
#only("1-")[Wende den Satz an:]
#v(20pt)
#only("2-")[$lim_(n -> infinity) (a_n b_n) = (lim_(n -> infinity) a_n) (lim_(n -> infinity) b_n) = (0)(0) = 0$]
#only("1")[
#voiceover("Jetzt können wir den Satz aus Schritt 1 anwenden.")
]
#only("2")[
#voiceover("Das Limit von a_n mal b_n, wenn n gegen unendlich geht, ist gleich dem Limit von a_n, das 0 ist, mal dem Limit von b_n, das ebenfalls 0 ist. Und 0 mal 0 ist 0.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Daher ist $lim_(n -> infinity) (a_n b_n) = 0$. 🎉]
#only("1")[
#voiceover("Daher können wir schließen, dass das Limit von a_n mal b_n, wenn n gegen unendlich geht, gleich 0 ist. Großartige Arbeit bei der Lösung dieses Problems!")
]
]