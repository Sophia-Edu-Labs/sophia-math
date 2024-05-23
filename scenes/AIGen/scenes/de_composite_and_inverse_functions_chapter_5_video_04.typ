#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Überprüfung von inversen Funktionen]
#v(40pt)
#only("1-")[
- Die Funktionen zusammensetzen 🔄
- Prüfen, ob das Ergebnis die Identitätsfunktion $x$ ist ✅
]
#only("1")[
#voiceover("Um zu überprüfen, ob zwei Funktionen invers zueinander sind, setzen wir sie zusammen und prüfen, ob das Ergebnis die Identitätsfunktion x ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[
Sei $f(x) = 2x + 3$ und $g(x) = (x - 3) / 2$
]
#only("1")[
#voiceover("Nehmen wir ein Beispiel. Angenommen, wir haben die Funktionen f von x gleich 2x plus 3 und g von x gleich x minus 3 geteilt durch 2.")
]
#v(40pt)
#only("2-")[
Setze $f(g(x))$ zusammen:
$f(g(x)) = 2((x - 3) / 2) + 3 = x - 3 + 3 = x$
]
#only("2")[
#voiceover("Zuerst setzen wir f von g von x zusammen. Wir setzen g von x in f von x ein. Das ergibt 2 mal x minus 3 geteilt durch 2 plus 3. Wenn wir das vereinfachen, erhalten wir x minus 3 plus 3, was x ergibt.")
]
#v(40pt)
#only("3-")[
Setze $g(f(x))$ zusammen:
$g(f(x)) = (2x + 3 - 3) / 2 = 2x / 2 = x$
]
#only("3")[
#voiceover("Nun setzen wir g von f von x zusammen. Wir setzen f von x in g von x ein. Das ergibt 2x plus 3 minus 3 geteilt durch 2. Wenn wir das vereinfachen, erhalten wir 2x geteilt durch 2, was x ergibt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[
- Sowohl $f(g(x))$ als auch $g(f(x))$ ergeben $x$ 🎉
- Daher sind $f(x)$ und $g(x)$ invers 🙌
]
#only("1")[
#voiceover("Da sowohl f von g von x als auch g von f von x gleich x sind, was die Identitätsfunktion ist, können wir schließen, dass f von x und g von x tatsächlich inverse Funktionen sind.")
]
]