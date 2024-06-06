#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Gleichungen mit rationalen Exponenten lösen]
#v(40pt)
#only("1-")[- Beispiel: $x^(2/3) = 8$]
#v(20pt)
#only("2-")[- Schritt 1: Den Term mit dem Exponenten isolieren]
#v(20pt)
#only("3-")[- Schritt 2: Beide Seiten mit dem Kehrwert des Exponenten potenzieren]
#only("1")[
#voiceover("Lass uns lernen, wie man Gleichungen mit rationalen Exponenten löst. Betrachte die Gleichung x hoch zwei Drittel gleich acht.")
]
#only("2")[
#voiceover("Der erste Schritt ist, den Term mit dem Exponenten auf einer Seite der Gleichung zu isolieren. In diesem Fall ist er bereits isoliert.")
]
#only("3")[
#voiceover("Als nächstes potenzieren wir beide Seiten der Gleichung mit dem Kehrwert des Exponenten. Der Kehrwert von zwei Drittel ist drei Halbe.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Das Beispiel lösen]
#v(40pt)
#only("1-")[$(x^(2/3))^(3/2) = 8^(3/2)$]
#v(20pt)
#only("2-")[$(x^((2/3)dot(3/2))) = 8^(3/2)$]
#v(20pt)
#only("3-")[$x^1 = 8^(3/2)$]
#v(20pt)
#only("4-")[$x = 8^(3/2) = (2^3)^(3/2) = 2^(3dot(3/2)) = 2^4 = 16$]
#only("1")[
#voiceover("Indem wir beide Seiten mit drei Halbe potenzieren, erhalten wir x hoch zwei Drittel, alles hoch drei Halbe, gleich acht hoch drei Halbe.")
]
#only("2")[
#voiceover("Mit der Potenzregel für Exponenten ergibt zwei Drittel mal drei Halbe eins. Auf der linken Seite haben wir also x hoch eins.")
]
#only("3")[
#voiceover("x hoch eins ist einfach x. Also haben wir x gleich acht hoch drei Halbe.")
]
#only("4")[
#voiceover("Acht hoch drei Halbe ist dasselbe wie zwei hoch drei, alles hoch drei Halbe, was gleich zwei hoch vier ist, was sechzehn ergibt. Daher ist x gleich sechzehn.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[1️⃣ Den Term mit dem Exponenten isolieren]
#v(20pt)
#only("2-")[2️⃣ Beide Seiten mit dem Kehrwert des Exponenten potenzieren]
#v(20pt)
#only("3-")[3️⃣ Vereinfachen und lösen]
#only("1")[
#voiceover("Zusammengefasst: Um Gleichungen mit rationalen Exponenten zu lösen, ist der erste Schritt, den Term mit dem Exponenten zu isolieren.")
]
#only("2")[
#voiceover("Dann potenziere beide Seiten der Gleichung mit dem Kehrwert des Exponenten.")
]
#only("3")[
#voiceover("Schließlich vereinfache den resultierenden Ausdruck und löse die Variable. Mit diesen Schritten kannst Du sicher Gleichungen mit rationalen Exponenten lösen!")
]
]