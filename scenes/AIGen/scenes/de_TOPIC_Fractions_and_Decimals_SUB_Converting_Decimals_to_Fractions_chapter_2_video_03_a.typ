#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von Dezimalzahlen in Brüche]
#v(40pt)
#only("1-")[Welcher Bruch entspricht $0.75$?]
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) $75/10$]#only("2-")[#text(fill:red)[a) $75/10$]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-2")[b) $75/100$]#only("3-")[#text(fill:green)[b) $75/100$]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) $7.5/100$]#only("4-")[#text(fill:red)[c) $7.5/100$]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) $7.5/10$]#only("5-")[#text(fill:red)[d) $7.5/10$]]
#v(40pt)

#only("1")[#voiceover("Keine Sorge, lass uns die Optionen durchgehen, um zu verstehen, warum die richtige Antwort b) fünfundsiebzig Hundertstel ist.")]
#only("2")[#voiceover("Option a) fünfundsiebzig Zehntel ist falsch. Fünfundsiebzig Zehntel vereinfacht sich zu sieben Komma fünf, was viel größer als null Komma fünfundsiebzig ist.")]
#only("3")[#voiceover("Option b) fünfundsiebzig Hundertstel ist korrekt. Wenn Du fünfundsiebzig Hundertstel vereinfachst, erhältst Du drei Viertel, was gleich null Komma fünfundsiebzig ist.")]
#only("4")[#voiceover("Option c) sieben Komma fünf Hundertstel ist falsch. Sieben Komma fünf Hundertstel vereinfacht sich zu null Komma null fünfundsiebzig, was viel kleiner als null Komma fünfundsiebzig ist.")]
#only("5")[#voiceover("Option d) sieben Komma fünf Zehntel ist ebenfalls falsch. Sieben Komma fünf Zehntel vereinfacht sich zu null Komma sieben Komma fünf, aber es ist nicht in seiner einfachsten Form.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritte zur Umwandlung von Dezimalzahlen in Brüche]
#v(40pt)
#only("1-")[- Schritt 1: Zähle die Dezimalstellen. 🔢]
#v(20pt)
#only("2-")[- Schritt 2: Entferne das Dezimalzeichen. ✂️]
#v(20pt)
#only("3-")[- Schritt 3: Teile durch eine Zehnerpotenz. ➗]
#only("1")[
#voiceover("Bevor wir die Übung lösen, eine kurze Erinnerung an die Schritte zur Umwandlung von Dezimalzahlen in Brüche. Zuerst zählst Du die Anzahl der Dezimalstellen in der Dezimalzahl.")
]
#only("2")[
#voiceover("Als nächstes entfernst Du das Dezimalzeichen aus der Zahl.")
]
#only("3")[
#voiceover("Dann teilst Du die resultierende Zahl durch eine Eins, gefolgt von Nullen, wobei die Anzahl der Nullen der Anzahl der Dezimalstellen entspricht.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Umwandlung von $0.75$ in einen Bruch]
#v(40pt)
#only("1-")[- Schritt 1: 🔢 Zähle die Dezimalstellen in $0.75$. $arrow$Es gibt 2 Dezimalstellen.]
#v(20pt)
#only("2-")[- Schritt 2: ✂️ Entferne das Dezimalzeichen: $arrow 75$. ]
#v(20pt)
#only("3-")[- Schritt 3: ➗ Teile durch $100 arrow 75/100$ ]

#only("1")[
#voiceover("Nun lass uns diese Schritte auf die Dezimalzahl null Komma fünfundsiebzig anwenden ... Um null Komma fünfundsiebzig in einen Bruch umzuwandeln, zählen wir zuerst die Dezimalstellen. Es gibt zwei Dezimalstellen.")
]
#only("2")[
#voiceover("Als nächstes entfernen wir das Dezimalzeichen, was uns fünfundsiebzig gibt.")
]
#only("3")[
#voiceover("Dann teilen wir fünfundsiebzig durch eine Eins, gefolgt von zwei Nullen. Da null Komma fünfundsiebzig zwei Dezimalstellen hat, teilen wir es durch einhundert. So erhalten wir fünfundsiebzig Hundertstel. Und das war's, wir sind fertig! Die Lösung ist fünfundsiebzig Hundertstel.")
]
]