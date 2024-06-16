#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#only("1")[
#voiceover("Leider war das nicht ganz richtig. Lass uns die Lösung Schritt für Schritt gemeinsam durchgehen.")
]
#text(size: 30pt, weight: "bold")[Umwandlung von Dezimalzahlen mit führenden Nullen in Brüche]
#v(40pt)
Welcher Bruch entspricht $0.09$?
#v(40pt)
#only("1-")[Die richtige Antwort ist $9/100$]
#only("1")[
#voiceover("Das ist richtig, gut gemacht! Die richtige Antwort ist neun geteilt durch einhundert. Lass uns herausfinden, warum das so ist.")]
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
#text(size: 30pt, weight: "bold")[Beispiel: Umwandlung von $0.09$ in einen Bruch]
#v(40pt)
#only("1-")[- Schritt 1: 🔢 Zähle die Dezimalstellen in $0.09$. $arrow$ Es gibt 2 Dezimalstellen.]
#v(20pt)
#only("2-")[- Schritt 2: ✂️ Entferne das Dezimalzeichen: $arrow 9$. ]
#v(20pt)
#only("3-")[- Schritt 3: ➗ Teile durch $100 arrow 9/100$ ]
#only("1")[
#voiceover("Jetzt wenden wir diese Schritte auf die Dezimalzahl null Komma null neun an ... Um null Komma null neun in einen Bruch umzuwandeln, zählen wir zuerst die Dezimalstellen. Es gibt zwei Dezimalstellen.")
]
#only("2")[
#voiceover("Als nächstes entfernen wir das Dezimalzeichen, was uns neun ergibt.")
]
#only("3")[
#voiceover("Dann teilen wir neun durch eine Eins, gefolgt von zwei Nullen. Da null Komma null neun zwei Dezimalstellen hat, teilen wir es durch einhundert. So erhalten wir neun Hundertstel. Und das war's, wir sind fertig! Die Lösung ist neun Hundertstel.")
]
]