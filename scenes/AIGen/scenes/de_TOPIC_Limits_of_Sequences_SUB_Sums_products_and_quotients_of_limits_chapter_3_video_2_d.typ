#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Quotienten von Grenzwerten]
#v(40pt)
Wenn $lim_(n -> infinity) a_n = L$ und $lim_(n -> infinity) b_n = M$ (M != 0), dann ist $lim_(n -> infinity) (a_n / b_n)$ \_\_\_\_\_.
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) L + M]#only("2-")[#text(fill:red)[a) L + M]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) L - M]#only("3-")[#text(fill:red)[b) L - M]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) L M]#only("4-")[#text(fill:red)[c) L M]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-4")[d) L / M]#only("5-")[#text(fill:green)[d) L / M]]
#only("1")[#voiceover("Großartig! Das ist die richtige Antwort.")]
#only("2")[#voiceover("Option a) L + M ist falsch. Beim Bilden des Grenzwerts eines Quotienten addieren wir nicht die einzelnen Grenzwerte.")]
#only("3")[#voiceover("Option b) L - M ist ebenfalls falsch. Wir subtrahieren auch nicht die einzelnen Grenzwerte.")]
#only("4")[#voiceover("Option c) L M ist auch falsch. Wir multiplizieren die einzelnen Grenzwerte nicht, wenn es um einen Quotienten geht.")]
#only("5")[#voiceover("Die richtige Antwort ist d) L / M. Beim Bilden des Grenzwerts eines Quotienten teilen wir die Grenzwerte des Zählers und des Nenners, vorausgesetzt, der Grenzwert des Nenners ist nicht null.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[1️⃣ Gegeben: $lim_(n -> infinity) a_n = L$ und $lim_(n -> infinity) b_n = M$ (M != 0)]
#v(20pt)
#only("2-")[2️⃣ Wir wollen finden: $lim_(n -> infinity) (a_n / b_n)$]
#v(20pt)
#only("3-")[3️⃣ Erinnere dich an die Regel: Wenn $lim_(n -> infinity) a_n = L$ und $lim_(n -> infinity) b_n = M$ (M != 0), dann $lim_(n -> infinity) (a_n / b_n) = L / M$]
#v(20pt)
#only("4-")[4️⃣ Wende die Regel an: $lim_(n -> infinity) (a_n / b_n) = L / M$]
#v(20pt)
#only("5-")[5️⃣ Daher ist die richtige Antwort d) L / M 🎉]

#only("1")[#voiceover("Lass uns die Lösung Schritt für Schritt durchgehen. Zuerst haben wir gegeben, dass der Grenzwert der Folge a_n für n gegen unendlich L ist und der Grenzwert der Folge b_n für n gegen unendlich M ist, wobei M nicht null ist.")]

#only("2")[#voiceover("Wir sollen den Grenzwert des Quotienten von a_n über b_n für n gegen unendlich finden.")]

#only("3")[#voiceover("Um dies zu lösen, erinnern wir uns an die Regel für Grenzwerte von Quotienten. Wenn der Grenzwert von a_n L ist und der Grenzwert von b_n M ist, wobei M nicht null ist, dann ist der Grenzwert des Quotienten a_n über b_n gleich L über M.")]

#only("4")[#voiceover("Wenden wir diese Regel auf unser Problem an, erhalten wir, dass der Grenzwert von a_n über b_n für n gegen unendlich gleich L über M ist.")]

#only("5")[#voiceover("Daher ist die richtige Antwort Option d) L über M. Großartige Arbeit bei der Lösung dieses Problems!")]
]