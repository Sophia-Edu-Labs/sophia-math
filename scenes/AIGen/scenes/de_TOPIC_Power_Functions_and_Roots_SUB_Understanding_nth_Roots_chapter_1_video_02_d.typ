#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Übung]
#v(40pt)
Wie wird die 5. Wurzel von 32 in der Notation geschrieben?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) $root(2, 32)$]#only("2-")[#text(fill:red)[a) $root(2, 32)$]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) $root(3, 32)$]#only("3-")[#text(fill:red)[b) $root(3, 32)$]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) $root(4, 32)$]#only("4-")[#text(fill:red)[c) $root(4, 32)$]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-4")[d) $root(5, 32)$]#only("5-")[#text(fill:green)[d) $root(5, 32)$]]
#only("1")[#voiceover("Großartig! Du hast die richtige Antwort gewählt.")]
#only("2")[#voiceover("Option a ist falsch, weil $root(2, 32)$ die Quadratwurzel oder 2. Wurzel von 32 darstellt, nicht die 5. Wurzel.")]
#only("3")[#voiceover("Option b ist ebenfalls falsch, da $root(3, 32)$ für die Kubikwurzel oder 3. Wurzel von 32 steht.")]
#only("4")[#voiceover("Ebenso ist Option c falsch, da $root(4, 32)$ die 4. Wurzel von 32 bezeichnet.")]
#only("5")[#voiceover("Die richtige Antwort ist Option d. $root(5, 32)$ ist die korrekte Notation für die 5. Wurzel von 32.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[In der Notation $root(n, a)$:]
#v(20pt)
#only("2-")[- $n$ steht für die #text(weight: "bold")[Wurzel], d.h. die Potenz, auf die das Ergebnis erhoben werden muss, um $a$ zu erhalten. 📏]
#v(20pt)
#only("3-")[- $a$ ist der #text(weight: "bold")[Radikand], die Zahl unter dem Wurzelzeichen. 🔢]
#v(40pt)
#only("4-")[Also, für die 5. Wurzel von 32 haben wir:]
#v(20pt)
#only("5-")[- $n = 5$ (es ist die 5. Wurzel)]
#v(20pt)
#only("6-")[- $a = 32$ (32 ist die Zahl, von der wir die Wurzel ziehen)]
#v(40pt)
#only("7-")[Daher ist die korrekte Notation $root(5, 32)$. ✅]

#only("1")[#voiceover("Lass uns die Notation $root(n, a)$ Schritt für Schritt aufschlüsseln.")]
#only("2")[#voiceover("Der Buchstabe $n$ steht für die Wurzel. Es ist die Potenz, auf die das Ergebnis erhoben werden muss, um die ursprüngliche Zahl $a$ zu erhalten.")]
#only("3")[#voiceover("Der Buchstabe $a$ steht für den Radikand, also die Zahl unter dem Wurzelzeichen.")]
#only("4")[#voiceover("Nun wenden wir dies auf unsere Frage zur 5. Wurzel von 32 an.")]
#only("5")[#voiceover("In diesem Fall ist $n$ gleich 5, weil wir es mit der 5. Wurzel zu tun haben.")]
#only("6")[#voiceover("Und $a$ ist 32, da 32 die Zahl ist, von der wir die Wurzel ziehen.")]
#only("7")[#voiceover("Wenn wir alles zusammenfügen, sehen wir, dass die korrekte Notation für die 5. Wurzel von 32 $root(5, 32)$ ist.")]
]