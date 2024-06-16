#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Einführung in die Umwandlung komplexer Brüche in Dezimalzahlen]
#v(40pt)
#only("1-")[- Stell dir vor, du hast einen Bruch wie $3/8$.]
#v(20pt)
#only("2-")[- Wie können wir diesen in eine Dezimalzahl umwandeln?]
#only("1")[
#voiceover("Stell dir vor, du hast einen Bruch wie drei Achtel.")]
#only("2")[
#voiceover("Wie können wir diesen in eine Dezimalzahl umwandeln? Finden wir es heraus!")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritte zur Umwandlung komplexer Brüche in Dezimalzahlen]
#v(40pt)
#only("1-")[- Schritt 1: Finde einen Wert, mit dem du sowohl den Zähler als auch den Nenner multiplizieren kannst. 🔢]
#v(20pt)
#only("2-")[- Schritt 2: Multipliziere sowohl den Zähler als auch den Nenner mit diesem Wert. ✖️]
#v(20pt)
#only("3-")[- Schritt 3: Stelle sicher, dass der Nenner eine Zehnerpotenz ist. ➗]
#v(20pt)
#only("4-")[- Schritt 4: Wandle den resultierenden Bruch in eine Dezimalzahl um. ➡️]
#only("1")[
#voiceover("Um komplexe Brüche in Dezimalzahlen umzuwandeln, befolgen wir diese Schritte. Zuerst finden wir einen Wert, mit dem wir sowohl den Zähler als auch den Nenner multiplizieren.")]
#only("2")[
#voiceover("Als nächstes multiplizieren wir sowohl den Zähler als auch den Nenner mit diesem Wert.")]
#only("3")[
#voiceover("Dann stellen wir sicher, dass der Nenner eine Zehnerpotenz ist.")]
#only("4")[
#voiceover("Schließlich wandeln wir den resultierenden Bruch in eine Dezimalzahl um.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Beispiel: Umwandlung von $3/8$ in eine Dezimalzahl]
#v(40pt)
#only("1-")[- Schritt 1: Multipliziere Zähler und Nenner mit $125$.]
#v(20pt)
#only("2-")[- Schritt 2: $3 * 125 = 375$ und $8 * 125 = 1000$.]
#v(20pt)
#only("3-")[- Schritt 3: Der Bruch ist jetzt $375/1000$.]
#v(20pt)
#only("4-")[- Schritt 4: Wandle in eine Dezimalzahl um: $0.375$.]
#only("1")[
#voiceover("Gehen wir ein Beispiel durch. Um drei Achtel in eine Dezimalzahl umzuwandeln, multiplizieren wir zuerst sowohl den Zähler als auch den Nenner mit einhundertfünfundzwanzig.")]
#only("2")[
#voiceover("Also haben wir drei mal einhundertfünfundzwanzig gleich dreihundertfünfundsiebzig und acht mal einhundertfünfundzwanzig gleich eintausend.")]
#only("3")[
#voiceover("Der Bruch ist jetzt dreihundertfünfundsiebzig durch eintausend.")]
#only("4")[
#voiceover("Schließlich wandeln wir diesen Bruch in eine Dezimalzahl um, was uns null Komma dreihundertfünfundsiebzig ergibt.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Multipliziere Zähler und Nenner mit demselben Wert. ✖️]
#v(20pt)
#only("2-")[- Stelle sicher, dass der Nenner eine Zehnerpotenz ist. ➗]
#v(20pt)
#only("3-")[- Wandle den resultierenden Bruch in eine Dezimalzahl um. ➡️]
#only("1")[
#voiceover("Zusammenfassend: Multipliziere zuerst den Zähler und den Nenner mit demselben Wert.")]
#only("2")[
#voiceover("Dann stelle sicher, dass der Nenner eine Zehnerpotenz ist.")]
#only("3")[
#voiceover("Schließlich wandle den resultierenden Bruch in eine Dezimalzahl um. Und so wandelst du komplexe Brüche in Dezimalzahlen um!")]
]