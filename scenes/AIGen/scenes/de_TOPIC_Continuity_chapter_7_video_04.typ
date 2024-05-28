#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Stetigkeit und Grenzwerte 🔄]
#v(40pt)
#only("1-")[- Stetigkeit ist eng mit Grenzwerten verbunden]
#v(20pt)
#only("2-")[- Damit eine Funktion an einem Punkt stetig ist:]
#v(20pt)
#only("3-")[  1. Der Grenzwert muss existieren]
#v(10pt)
#only("4-")[  2. Die Funktion muss an diesem Punkt definiert sein]
#v(10pt)
#only("5-")[  3. Der Grenzwert muss dem Funktionswert an diesem Punkt entsprechen]
#only("1")[#voiceover("Stetigkeit und Grenzwerte sind eng miteinander verbundene Konzepte in der Mathematik.")]
#only("2")[#voiceover("Damit eine Funktion an einem bestimmten Punkt stetig ist, müssen drei Bedingungen erfüllt sein.")]
#only("3")[#voiceover("Erstens muss der Grenzwert der Funktion, wenn x sich dem Punkt nähert, existieren.")]
#only("4")[#voiceover("Zweitens muss die Funktion an diesem Punkt definiert sein.")]
#only("5")[#voiceover("Und drittens muss der Grenzwert der Funktion, wenn x sich dem Punkt nähert, dem Funktionswert an diesem Punkt entsprechen.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel 📈]
#v(40pt)
#only("1-")[Betrachte die Funktion $f(x) = x^2$]
#v(20pt)
#only("2-")[Ist $f(x)$ stetig bei $x = 1$?]
#v(20pt)
#only("3-")[1. $lim_(x->1) f(x) = lim_(x->1) x^2 = 1$]
#v(10pt)
#only("4-")[2. $f(1) = 1^2 = 1$]
#v(10pt)
#only("5-")[3. $lim_(x->1) f(x) = f(1)$]
#v(10pt)
#only("6-")[Daher ist $f(x)$ stetig bei $x = 1$ ✅]
#only("1")[#voiceover("Betrachten wir ein Beispiel. Nehmen wir die Funktion f von x gleich x Quadrat.")]
#only("2")[#voiceover("Wir wollen bestimmen, ob f von x bei x gleich 1 stetig ist.")]
#only("3")[#voiceover("Zuerst finden wir den Grenzwert von f von x, wenn x sich 1 nähert. Dieser Grenzwert ist gleich 1.")]
#only("4")[#voiceover("Als nächstes bewerten wir die Funktion bei x gleich 1. f von 1 ist ebenfalls gleich 1.")]
#only("5")[#voiceover("Schließlich vergleichen wir den Grenzwert und den Funktionswert. Da der Grenzwert, wenn x sich 1 nähert, gleich f von 1 ist,")]
#only("6")[#voiceover("können wir schließen, dass f von x tatsächlich bei x gleich 1 stetig ist.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]
#v(40pt)
#only("1-")[- Stetigkeit erfordert, dass der Grenzwert dem Funktionswert entspricht]
#v(20pt)
#only("2-")[- Überprüfe den Grenzwert, den Funktionswert und deren Gleichheit]
#v(20pt)
#only("3-")[- Das Verständnis von Stetigkeit ist entscheidend für die Analyse von Funktionen 📊]
#only("1")[#voiceover("Die wichtigste Erkenntnis ist, dass Stetigkeit erfordert, dass der Grenzwert einer Funktion, wenn x sich einem Punkt nähert, dem Funktionswert an diesem Punkt entspricht.")]
#only("2")[#voiceover("Um die Stetigkeit zu überprüfen, prüfe immer die Existenz des Grenzwerts, den Funktionswert an dem Punkt und die Gleichheit zwischen beiden.")]
#only("3")[#voiceover("Das Verständnis von Stetigkeit ist entscheidend für die Analyse des Verhaltens und der Eigenschaften von Funktionen in der Mathematik.")]
]