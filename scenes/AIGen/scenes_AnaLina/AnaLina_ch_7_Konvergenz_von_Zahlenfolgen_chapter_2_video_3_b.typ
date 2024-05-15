#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Zahlenfolge]
#v(40pt)
#only("1-")[Betrachte die Zahlenfolge $a_n = n$]
#v(20pt)
#only("2-")[Frage: Existiert $lim_(n->oo) a_n$? 🤔]
#only("1")[
#voiceover("Das war leider nicht richtig. Lass uns die Zahlenfolge a_n gleich n betrachten und die richtige Lösung herausfinden.")
]
#only("2")[
#voiceover("Die Frage ist also: Existiert der Grenzwert von a_n, wenn n gegen unendlich geht?")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzwert]
#v(40pt)
#only("1-")[Definition: $lim_(n->oo) a_n = L$ 📖]
#v(20pt)
#only("2-")[gdw. für jedes $ε > 0$ ein $N ∈ NN$ existiert, sodass:]
#v(10pt)
#only("3-")[$|a_n - L| < ε$ für alle $n ≥ N$]
#only("1")[
#voiceover("Erinnern wir uns zunächst an die Definition eines Grenzwertes. Der Grenzwert von a_n für n gegen unendlich ist L,")
]
#only("2")[
#voiceover("genau dann, wenn für jedes epsilon größer 0 ein natürliches N existiert, sodass")
]
#only("3")[
#voiceover("der Betrag von a_n minus L kleiner als epsilon ist für alle n größer gleich N.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Anwendung]
#v(40pt)
#only("1-")[Angenommen $lim_(n->oo) a_n = L$ existiert ✅]
#v(20pt)
#only("2-")[Dann müsste für jedes $ε > 0$ ein $N ∈ NN$ existieren mit:]
#v(10pt)
#only("3-")[$|a_n - L| < ε$ für alle $n ≥ N$]
#only("1")[
#voiceover("Wenden wir das nun auf unsere Folge an. Angenommen, der Grenzwert von a_n existiert und ist gleich L.")
]
#only("2")[
#voiceover("Dann müsste für jedes epsilon größer 0 ein natürliches N existieren, sodass")
]
#only("3")[
#voiceover("der Betrag von a_n minus L kleiner als epsilon ist für alle n größer gleich N.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Widerspruch]
#v(40pt)
#only("1-")[Wähle $ε = 1$ 🔍]
#v(20pt)
#only("2-")[Dann müsste ein $N ∈ NN$ existieren mit:]
#v(10pt)
#only("3-")[$|n - L| < 1$ für alle $n ≥ N$]
#v(20pt)
#only("4-")[Aber: Für $n > L + 1$ ist $|n - L| ≥ 1$ ❌]
#only("1")[
#voiceover("Wählen wir nun speziell epsilon gleich 1.")
]
#only("2")[
#voiceover("Dann müsste ein natürliches N existieren, sodass")
]
#only("3")[
#voiceover("der Betrag von n minus L kleiner als 1 ist für alle n größer gleich N.")
]
#only("4")[
#voiceover("Aber das führt zum Widerspruch: Denn für alle n größer als L plus 1 ist der Betrag von n minus L größer gleich 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Die Annahme $lim_(n->oo) a_n = L$ führt zum Widerspruch 🚫]
#v(20pt)
#only("2-")[Daher: $lim_(n->oo) a_n$ existiert nicht ❎]
#v(20pt)
#only("3-")[Die Folge $a_n = n$ ist unbeschränkt 📈]
#only("1")[
#voiceover("Die Annahme, dass der Grenzwert von a_n existiert, führt also zu einem Widerspruch.")
]
#only("2")[
#voiceover("Daher können wir schließen, dass der Grenzwert von a_n nicht existiert.")
]
#only("3")[
#voiceover("Die Folge a_n gleich n ist unbeschränkt und hat keinen Grenzwert für n gegen unendlich.")
]
]