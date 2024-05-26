#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Produkt von Grenzwerten 📈×📉]

#v(40pt)

#only("1-")[
- Wenn $lim_(n->infinity) a_n = L$ und $lim_(n->infinity) b_n = M$, dann $lim_(n->infinity) (a_n b_n) = L M$
]

#only("1")[
#voiceover("Zusammengefasst: Wenn der Grenzwert der Folge a_n für n gegen unendlich L ist und der Grenzwert der Folge b_n für n gegen unendlich M ist, dann ist der Grenzwert des Produkts dieser Folgen, a_n mal b_n, für n gegen unendlich gleich dem Produkt ihrer individuellen Grenzwerte, also L mal M.")
]

#v(40pt)

#only("2-")[
Zum Beispiel:
- Wenn $a_n = 1/n$ und $b_n = 2/n$
- $lim_(n->infinity) a_n = 0$ und $lim_(n->infinity) b_n = 0$
- Dann, $lim_(n->infinity) (a_n b_n) = lim_(n->infinity) (1/n × 2/n) = 0 × 0 = 0$
]

#only("2")[
#voiceover("Zum Beispiel: Wenn a_n gleich 1 durch n ist und b_n gleich 2 durch n ist, wissen wir, dass der Grenzwert von a_n für n gegen unendlich 0 ist und der Grenzwert von b_n für n gegen unendlich ebenfalls 0 ist. Dann ist der Grenzwert des Produkts a_n mal b_n, also 1 durch n mal 2 durch n, für n gegen unendlich gleich dem Produkt der individuellen Grenzwerte, also 0 mal 0, was 0 ist.")
]

#v(40pt)

#only("3-")[
💡 Diese Eigenschaft erlaubt es uns, die Grenzwerte komplexerer Folgen zu finden, indem wir sie in einfachere zerlegen.
]

#only("3")[
#voiceover("Diese Eigenschaft der Grenzwerte ist sehr nützlich, da sie es uns erlaubt, die Grenzwerte komplexerer Folgen zu finden, indem wir sie in einfachere Folgen zerlegen, deren Grenzwerte wir leicht bestimmen können, und dann diese Grenzwerte miteinander multiplizieren.")
]
]