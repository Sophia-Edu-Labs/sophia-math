#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Grenzen von Produkten]
#v(40pt)
Wenn $lim_(n -> infinity) a_n = L$ und $lim_(n -> infinity) b_n = M$ ist, dann ist $lim_(n -> infinity) (a_n b_n)$ \_\_\_\_\_. 
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie rot, weil sie falsch ist. 
#only("-1")[a) $L + M$]#only("2-")[#text(fill:red)[a) $L + M$]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie rot, weil sie falsch ist.
#only("-2")[b) $L - M$]#only("3-")[#text(fill:red)[b) $L - M$]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie grün, weil sie richtig ist.
#only("-3")[c) $L M$]#only("4-")[#text(fill:green)[c) $L M$]]
#v(10pt)  
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie rot, weil sie falsch ist.
#only("-4")[d) $L / M$]#only("5-")[#text(fill:red)[d) $L / M$]]

#only("1")[#voiceover("Leider nicht ganz richtig. Hier ist das Video zur Erklärung.")]
#only("2")[#voiceover("Option a, L plus M, ist falsch. Wir addieren hier nicht die Grenzen.")]
#only("3")[#voiceover("Ebenso ist Option b, L minus M, falsch. Wir subtrahieren hier nicht die Grenzen.")]
#only("4")[#voiceover("Option c, L M, ist die richtige Antwort. Wenn wir das Limit eines Produkts nehmen, multiplizieren wir die einzelnen Grenzen.")]
#only("5")[#voiceover("Schließlich ist Option d, L geteilt durch M, falsch. Wir teilen hier nicht die Grenzen.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[Gegeben: $lim_(n -> infinity) a_n = L$ und $lim_(n -> infinity) b_n = M$]
#v(20pt)
#only("2-")[Wir wollen finden: $lim_(n -> infinity) (a_n b_n)$]
#v(20pt)  
#only("3-")[Theorem: Wenn $lim_(n -> infinity) a_n = L$ und $lim_(n -> infinity) b_n = M$ ist, dann ist $lim_(n -> infinity) (a_n b_n) = L M$]
#v(20pt)
#only("4-")[Anwendung des Theorems: $lim_(n -> infinity) (a_n b_n) = L M$]
#v(20pt)
#only("5-")[Daher ist die richtige Antwort c) $L M$. ✅]

#only("1")[#voiceover("Lass uns die Lösung Schritt für Schritt durchgehen. Wir wissen, dass das Limit der Folge a_n, wenn n gegen unendlich geht, L ist, und das Limit der Folge b_n, wenn n gegen unendlich geht, M ist.")]
#only("2")[#voiceover("Wir wollen das Limit des Produkts dieser beiden Folgen finden, also das Limit von a_n mal b_n, wenn n gegen unendlich geht.")]
#only("3")[#voiceover("Es gibt ein Theorem, das besagt: Wenn das Limit von a_n L ist und das Limit von b_n M ist, wenn n gegen unendlich geht, dann ist das Limit ihres Produkts a_n mal b_n gleich dem Produkt ihrer Grenzen, L mal M.")]
#only("4")[#voiceover("Wenden wir dieses Theorem auf unser Problem an, erhalten wir, dass das Limit von a_n mal b_n, wenn n gegen unendlich geht, gleich L mal M ist.")]
#only("5")[#voiceover("Daher ist die richtige Antwort Option c, L M. Denke daran, wenn wir das Limit eines Produkts nehmen, multiplizieren wir die einzelnen Grenzen.")]
]