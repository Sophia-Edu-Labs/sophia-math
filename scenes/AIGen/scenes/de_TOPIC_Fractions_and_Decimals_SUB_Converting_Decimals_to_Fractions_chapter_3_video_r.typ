#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Überblick: Umwandlung von Zahlen größer als 1 in Brüche]
#v(40pt)
#only("1-")[- Die Umwandlung von Zahlen größer als 1 in Brüche ist nützlich für präzise Berechnungen. 🔢]
#only("2-")[- Lass uns die Schritte dazu durchgehen. 📏]
#only("1")[
#voiceover("Lass uns durchgehen, wie man Zahlen größer als 1 in Brüche umwandelt. Das ist nützlich für präzise Berechnungen.")
]
#only("2")[
#voiceover("Wir werden die einzelnen Schritte dieses Prozesses durchgehen.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritte zur Umwandlung von Zahlen größer als 1 in Brüche]
#v(40pt)
#only("1-")[- Schritt 1: Zähle die Stellen nach dem Dezimalpunkt. 🔢]
#v(20pt)
#only("2-")[- Schritt 2: Entferne den Dezimalpunkt. ✂️]
#v(20pt)
#only("3-")[- Schritt 3: Teile durch 1, gefolgt von so vielen Nullen wie Stellen nach dem Punkt. ➗]
#v(20pt)
#only("4-")[- Beispiel: $2.75$ wird zu $275/100$.]
#only("1")[
#voiceover("Zuerst zählst du die Anzahl der Stellen nach dem Dezimalpunkt.")
]
#only("2")[
#voiceover("Als nächstes entfernst du den Dezimalpunkt.")
]
#only("3")[
#voiceover("Dann teilst du die resultierende Zahl durch eins, gefolgt von so vielen Nullen wie es Stellen nach dem Dezimalpunkt gab.")
]
#only("4")[
#voiceover("Zum Beispiel wird zwei Komma sieben fünf zu zweihundertfünfundsiebzig durch einhundert.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Umwandlung von $2.75$ in einen Bruch]
#v(40pt)
#only("1-")[- Schritt 1: Zähle die Stellen nach dem Dezimalpunkt in $2.75$. Es gibt 2 Stellen. 🔢]
#v(20pt)
#only("2-")[- Schritt 2: Entferne den Dezimalpunkt: $275$. ✂️]
#v(20pt)
#only("3-")[- Schritt 3: Teile durch $10^2 = 100$: $275/100$. ➗]
#v(20pt)
#only("1")[
#voiceover("Schauen wir uns ein Beispiel an. Bei zwei Komma sieben fünf zählst du die Stellen nach dem Dezimalpunkt: Es sind zwei.")
]
#only("2")[
#voiceover("Entferne den Dezimalpunkt, um zweihundertfünfundsiebzig zu erhalten.")
]
#only("3")[
#voiceover("Dann teilst du zweihundertfünfundsiebzig durch einhundert, weil es zwei Stellen nach dem Dezimalpunkt gibt. Also zweihundertfünfundsiebzig durch einhundert.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Zähle die Stellen nach dem Dezimalpunkt. 🔢]
#v(20pt)
#only("2-")[- Entferne den Dezimalpunkt. ✂️]
#v(20pt)
#only("3-")[- Teile durch 1, gefolgt von so vielen Nullen wie Stellen nach dem Punkt. ➗]
#only("1")[
#voiceover("Zusammengefasst: Zuerst zählst du die Stellen nach dem Dezimalpunkt.")
]
#only("2")[
#voiceover("Als nächstes entfernst du den Dezimalpunkt.")
]
#only("3")[
#voiceover("Dann teilst du durch eins, gefolgt von so vielen Nullen wie es Stellen nach dem Dezimalpunkt gab. Das war's!")
]
]