#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Kombinieren von Grenzwerten]
#v(40pt)
#only("1-")[- Grenzwerte können kombiniert werden mit:
  - ➕ Summen
  - ✖️ Produkten 
  - ➗ Quotienten]
#v(20pt)
#only("2-")[- Um den Grenzwert komplexerer Folgen zu finden]
#only("1")[
#voiceover("Grenzwerte von Folgen können mit Summen, Produkten und Quotienten kombiniert werden.")
]
#only("2")[
#voiceover("Dies ermöglicht es uns, den Grenzwert komplexerer Folgen zu finden, indem wir sie in einfachere Teile zerlegen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summenregel]
#v(40pt)
#only("1-")[Wenn $lim_(n -> infinity) a_n = L$ und $lim_(n -> infinity) b_n = M$, dann:]
#v(20pt)
#only("2-")[$lim_(n -> infinity) (a_n + b_n) = L + M$]
#only("1")[
#voiceover("Die Summenregel besagt, dass wenn der Grenzwert der Folge a_n L ist und der Grenzwert der Folge b_n M ist, dann...")
]
#only("2")[
#voiceover("der Grenzwert der Summe dieser Folgen, a_n plus b_n, gleich L plus M ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Produktregel]
#v(40pt)
#only("1-")[Wenn $lim_(n -> infinity) a_n = L$ und $lim_(n -> infinity) b_n = M$, dann:]
#v(20pt)
#only("2-")[$lim_(n -> infinity) (a_n b_n) = L M$]
#only("1")[
#voiceover("Ähnlich besagt die Produktregel, dass wenn der Grenzwert der Folge a_n L ist und der Grenzwert der Folge b_n M ist, dann...")
]
#only("2")[
#voiceover("der Grenzwert des Produkts dieser Folgen, a_n mal b_n, gleich L mal M ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Quotientenregel]
#v(40pt)
#only("1-")[Wenn $lim_(n -> infinity) a_n = L$ und $lim_(n -> infinity) b_n = M$ (𝑀 ≠ 0), dann:]
#v(20pt)
#only("2-")[$lim_(n -> infinity) (a_n / b_n) = L / M$]
#only("1")[
#voiceover("Schließlich besagt die Quotientenregel, dass wenn der Grenzwert der Folge a_n L ist und der Grenzwert der Folge b_n M ist, wobei M nicht null ist, dann...")
]
#only("2")[
#voiceover("der Grenzwert des Quotienten dieser Folgen, a_n geteilt durch b_n, gleich L geteilt durch M ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[Gegeben $a_n = 1/n$ und $b_n = 2/n^2$, finde:]
#v(20pt)
#only("2-")[$lim_(n -> infinity) (a_n + b_n) / a_n$]
#v(20pt)
#only("3-")[Lösung: $lim_(n -> infinity) (a_n + b_n) / a_n = 1$]
#only("1")[
#voiceover("Schauen wir uns ein Beispiel an. Gegeben sind die Folgen a_n gleich 1 durch n und b_n gleich 2 durch n², wir wollen finden...")
]
#only("2")[
#voiceover("den Grenzwert, wenn n gegen unendlich geht, der Summe von a_n und b_n, geteilt durch a_n.")
]
#only("3")[
#voiceover("Mit Hilfe der Summen-, Quotienten- und Einzelgrenzwerte können wir berechnen, dass dieser Grenzwert gleich 1 ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Grenzwerte können mit Summen-, Produkt- und Quotientenregeln kombiniert werden 🎨]
#v(20pt)
#only("2-")[- Ermöglicht das Finden von Grenzwerten komplexer Folgen durch Zerlegung 🧩]
#v(20pt)
#only("3-")[- Mächtiges Werkzeug zur Analyse des Verhaltens von Folgen 🔍]
#only("1")[
#voiceover("Zusammenfassend können Grenzwerte von Folgen mit Summen-, Produkt- und Quotientenregeln kombiniert werden.")
]
#only("2")[
#voiceover("Dies ermöglicht es uns, die Grenzwerte komplexer Folgen zu finden, indem wir sie in einfachere Teile zerlegen.")
]
#only("3")[
#voiceover("Diese Regeln bieten ein mächtiges Werkzeug zur Analyse des Verhaltens von Folgen, wenn sie gegen unendlich gehen.")
]
]