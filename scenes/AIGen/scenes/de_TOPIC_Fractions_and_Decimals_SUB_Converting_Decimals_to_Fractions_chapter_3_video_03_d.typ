#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von Zahlen größer als 1 in Brüche]
#v(40pt)
#only("1-")[Welchem Bruch entspricht $4.75$?]
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[a) $475/100$]#only("2-")[#text(fill:green)[a) $475/100$]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) $4.75/10$]#only("3-")[#text(fill:red)[b) $4.75/10$]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) $47.5/10$]#only("4-")[#text(fill:red)[c) $47.5/10$]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) $475/10$]#only("5-")[#text(fill:red)[d) $475/10$]]
#v(40pt)

#only("1")[#voiceover("Das war leider nicht korrekt. Lass uns die Optionen durchgehen, um zu verstehen, warum die richtige Antwort a) 475 über 100 ist.")]
#only("2")[#voiceover("Option a) 475 über 100 ist korrekt. Wenn du 475 über 100 vereinfachst, erhältst du 4.75.")]
#only("3")[#voiceover("Option b) 4.75 über 10 ist falsch. Wenn du 4.75 durch 10 teilst, erhältst du 0.475, was nicht gleich 4.75 ist.")]
#only("4")[#voiceover("Option c) 47.5 über 10 ist falsch. Wenn du 47.5 durch 10 teilst, erhältst du 4.75, aber der Bruch ist nicht in seiner einfachsten Form.")]
#only("5")[#voiceover("Option d) 475 über 10 ist falsch. Wenn du 475 durch 10 teilst, erhältst du 47.5, was viel größer als 4.75 ist.")]
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
#voiceover("Bevor wir die Übung lösen, eine kurze Erinnerung an die Schritte zur Umwandlung von Dezimalzahlen in Brüche. Zuerst zählst du die Anzahl der Dezimalstellen in der Dezimalzahl.")
]
#only("2")[
#voiceover("Als nächstes entfernst du das Dezimalzeichen aus der Zahl.")
]
#only("3")[
#voiceover("Dann teilst du die resultierende Zahl durch eine Eins, gefolgt von Nullen, wobei die Anzahl der Nullen der Anzahl der Dezimalstellen entspricht.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Umwandlung von $4.75$ in einen Bruch]
#v(40pt)
#only("1-")[- Schritt 1: 🔢 Zähle die Dezimalstellen in $4.75$. $arrow$ Es gibt 2 Dezimalstellen.]
#v(20pt)
#only("2-")[- Schritt 2: ✂️ Entferne das Dezimalzeichen: $arrow 475$. ]
#v(20pt)
#only("3-")[- Schritt 3: ➗ Teile durch $100 arrow 475/100$ ]

#only("1")[
#voiceover("Nun lass uns diese Schritte auf die Dezimalzahl 4.75 anwenden ... Um vier Komma sieben fünf in einen Bruch umzuwandeln, zählen wir zuerst die Dezimalstellen. Es gibt zwei Dezimalstellen.")
]
#only("2")[
#voiceover("Als nächstes entfernen wir das Dezimalzeichen, was uns vierhundertfünfundsiebzig ergibt.")
]
#only("3")[
#voiceover("Dann teilen wir vierhundertfünfundsiebzig durch eine Eins, gefolgt von zwei Nullen. Da 4.75 zwei Dezimalstellen hat, teilen wir es durch einhundert. So erhalten wir vierhundertfünfundsiebzig über einhundert. Und das war's, wir sind fertig! Die Lösung ist 475 über 100.")
]
]