#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Stetigkeitsprüfung]
#v(40pt)
Um zu überprüfen, ob eine Funktion an einem Punkt stetig ist, müssen wir den Grenzwert der Funktion, wenn $x$ sich dem Punkt nähert, mit dem \_\_\_\_\_ der Funktion vergleichen.
#v(40pt)
#only("-1")[a) Ableitung]#only("2-")[#text(fill:red)[a) Ableitung]]
#v(10pt)
#only("-2")[b) Integral]#only("3-")[#text(fill:red)[b) Integral]]
#v(10pt)
#only("-3")[c) Wert an diesem Punkt]#only("4-")[#text(fill:green)[c) Wert an diesem Punkt]]
#v(10pt)
#only("-4")[d) zweite Ableitung]#only("5-")[#text(fill:red)[d) zweite Ableitung]]

#only("1")[#voiceover("Großartig! Du hast die richtige Antwort gewählt.")]
#only("2")[#voiceover("Die Ableitung wird nicht verwendet, um die Stetigkeit an einem Punkt zu überprüfen.")]
#only("3")[#voiceover("Das Integral wird auch nicht verwendet, um die Stetigkeit an einem Punkt zu überprüfen.")]
#only("4")[#voiceover("Die richtige Antwort ist c) Wert an diesem Punkt. Um die Stetigkeit zu überprüfen, vergleichen wir den Grenzwert, wenn sich x dem Punkt nähert, mit dem Wert der Funktion an diesem Punkt.")]
#only("5")[#voiceover("Die zweite Ableitung wird ebenfalls nicht verwendet, um die Stetigkeit zu überprüfen.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[Um zu überprüfen, ob $f(x)$ an $x = a$ stetig ist:]
#v(20pt)
#only("2-")[1. Finde $lim_(x -> a) f(x)$]
#v(10pt)
#only("3-")[2. Finde $f(a)$]
#v(10pt)
#only("4-")[3. Vergleiche $lim_(x -> a) f(x)$ und $f(a)$]
#v(10pt)
#only("5-")[- Wenn $lim_(x -> a) f(x) = f(a)$, dann ist $f(x)$ an $x = a$ stetig ✅]
#v(10pt)
#only("6-")[- Wenn $lim_(x -> a) f(x) != f(a)$, dann ist $f(x)$ an $x = a$ nicht stetig ❌]

#only("1")[#voiceover("Hier ist eine Schritt-für-Schritt-Lösung zur Überprüfung der Stetigkeit an einem Punkt.")]
#only("2")[#voiceover("Zuerst finde den Grenzwert der Funktion, wenn sich x dem Punkt nähert.")]
#only("3")[#voiceover("Als nächstes finde den Wert der Funktion an diesem Punkt.")]
#only("4")[#voiceover("Vergleiche dann den Grenzwert und den Funktionswert.")]
#only("5")[#voiceover("Wenn der Grenzwert dem Funktionswert entspricht, dann ist die Funktion an diesem Punkt stetig.")]
#only("6")[#voiceover("Wenn der Grenzwert nicht dem Funktionswert entspricht, dann ist die Funktion an diesem Punkt nicht stetig.")]
]