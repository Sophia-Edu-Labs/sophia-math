#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Gerade Potenzfunktionen]
#v(40pt)
#only("1-")[Welche der folgenden ist eine gerade Potenzfunktion?]
#v(40pt)
#only("-1")[a) $f(x) = x^3$]#only("2-")[#text(fill:red)[a) $f(x) = x^3$]]
#v(10pt)
#only("-2")[b) $f(x) = x^5$]#only("3-")[#text(fill:red)[b) $f(x) = x^5$]]
#v(10pt)
#only("-3")[c) $f(x) = x^2$]#only("4-")[#text(fill:green)[c) $f(x) = x^2$]]
#v(10pt)
#only("-4")[d) $f(x) = x^7$]#only("5-")[#text(fill:red)[d) $f(x) = x^7$]]
#v(40pt)

#only("1")[#voiceover("Großartig! Das ist die richtige Antwort. Lass uns sehen, warum.")]

#only("2")[#voiceover("Option a, $f(x) = x^3$, ist keine gerade Potenzfunktion, weil der Exponent 3 eine ungerade Zahl ist.")]

#only("3")[#voiceover("Ebenso ist Option b, $f(x) = x^5$, keine gerade Potenzfunktion, weil der Exponent 5 ebenfalls eine ungerade Zahl ist.")]

#only("4")[#voiceover("Option c, $f(x) = x^2$, ist die richtige Antwort. Es ist eine gerade Potenzfunktion, weil der Exponent 2 eine gerade Zahl ist.")]

#only("5")[#voiceover("Schließlich ist Option d, $f(x) = x^7$, keine gerade Potenzfunktion, weil der Exponent 7 eine ungerade Zahl ist.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Erklärung]
#v(40pt)
#only("1-")[Eine Potenzfunktion hat die Form $f(x) = x^n$, wobei $n$ eine Konstante ist. 🧮]
#v(20pt)
#only("2-")[Wenn $n$ eine gerade Zahl ist, ist es eine #text(fill:green)[gerade Potenzfunktion]. ✅]
#v(20pt)
#only("3-")[Wenn $n$ eine ungerade Zahl ist, ist es eine #text(fill:red)[ungerade Potenzfunktion]. ❌]
#v(40pt)
#only("4-")[Beispiele:]
#v(20pt)
#only("5-")[
- $f(x) = x^2$ #text(fill:green)[(Gerade)]
- $f(x) = x^4$ #text(fill:green)[(Gerade)]
- $f(x) = x^3$ #text(fill:red)[(Ungerade)]
- $f(x) = x^5$ #text(fill:red)[(Ungerade)]
]

#only("1")[#voiceover("Denke daran, eine Potenzfunktion ist eine Funktion der Form $f(x) = x^n$, wobei $n$ eine Konstante ist.")]

#only("2")[#voiceover("Wenn der Exponent $n$ eine gerade Zahl ist, nennen wir es eine gerade Potenzfunktion.")]

#only("3")[#voiceover("Andererseits, wenn der Exponent $n$ eine ungerade Zahl ist, nennen wir es eine ungerade Potenzfunktion.")]

#only("4")[#voiceover("Schauen wir uns einige Beispiele an.")]

#only("5")[#voiceover("$f(x) = x^2$ und $f(x) = x^4$ sind gerade Potenzfunktionen, weil ihre Exponenten 2 und 4 gerade Zahlen sind. Im Gegensatz dazu sind $f(x) = x^3$ und $f(x) = x^5$ ungerade Potenzfunktionen, weil ihre Exponenten 3 und 5 ungerade Zahlen sind.")]
]