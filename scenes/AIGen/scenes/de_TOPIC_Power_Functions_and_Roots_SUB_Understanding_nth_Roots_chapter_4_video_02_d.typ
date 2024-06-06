#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Rationalisierung von $1/root(3, 2)$]
#v(40pt)
#only("-1")[a) $root(3, 2)/2$]#only("2-")[#text(fill:red)[a) $root(3, 2)/2$]]
#v(10pt)
#only("-2")[b) $root(3, 4)/2$]#only("3-")[#text(fill:green)[b) $root(3, 4)/2$]]
#v(10pt)
#only("-3")[c) $root(3, 8)/4$]#only("4-")[#text(fill:red)[c) $root(3, 8)/4$]]
#v(10pt)
#only("-4")[d) $root(3, 4)/4$]#only("5-")[#text(fill:red)[d) $root(3, 4)/4$]]

#only("1")[#voiceover("Leider falsch. Hier ist die richtige Lösung für $1/\sqrt[3]{2}$.")]
#only("2")[#voiceover("Option a) $root(3, 2)/2$ ist nicht die rationalisierte Form. Wir müssen mit einem Faktor multiplizieren, der die Kubikwurzel im Nenner eliminiert.")]
#only("3")[#voiceover("Option b) $root(3, 4)/2$ ist tatsächlich die richtige rationalisierte Form. Lass uns sehen, wie wir zu dieser Antwort kommen.")]
#only("4")[#voiceover("Option c) $root(3, 8)/4$ ist falsch. Obwohl der Nenner rationalisiert ist, sind der Zähler und der Nenner nicht äquivalent zum ursprünglichen Ausdruck.")]
#only("5")[#voiceover("Option d) $root(3, 4)/4$ ist ebenfalls falsch aus dem gleichen Grund wie Option c).")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[- Beginne mit $1/root(3, 2)$]
#v(20pt)
#only("2-")[- Multipliziere Zähler und Nenner mit $root(3, 2^2)$]
#v(20pt)
#only("3-")[$ = (1 root(3, 2^2))/(root(3, 2) root(3, 2^2))$]
#v(20pt)
#only("4-")[$ = root(3, 4)/2$]
#v(20pt)
#only("5-")[Daher ist die rationalisierte Form $root(3, 4)/2$ 🎉]

#only("1")[#voiceover("Wir beginnen mit dem Ausdruck $1/root(3, 2)$.")]
#only("2")[#voiceover("Um den Nenner zu rationalisieren, multiplizieren wir sowohl den Zähler als auch den Nenner mit $root(3, 2^2)$, was $root(3, 4)$ ist. Dies ist ein cleverer Trick, weil $root(3, 2) root(3, 4) = 2$ ergibt.")]
#only("3")[#voiceover("Nach der Multiplikation erhalten wir $1 root(3, 4)$ im Zähler und $root(3, 2) root(3, 4)$ im Nenner.")]
#only("4")[#voiceover("Durch Vereinfachung wird der Nenner zu 2, und wir erhalten $root(3, 4)/2$.")]
#only("5")[#voiceover("Und da haben wir es! Die rationalisierte Form von $1/root(3, 2)$ ist $root(3, 4)/2$. Großartige Arbeit bei der Lösung dieses Problems!")]
]