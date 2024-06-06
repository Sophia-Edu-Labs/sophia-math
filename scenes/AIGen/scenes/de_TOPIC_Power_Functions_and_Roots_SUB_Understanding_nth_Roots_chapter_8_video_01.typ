#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[n-te Wurzeln im echten Leben 🌍]
#v(40pt)
#only("1-")[- In verschiedenen Anwendungen verwendet]
#v(20pt)
#only("2-")[- Beispiel: Berechnung von Zinssätzen 💰]
#v(20pt)
#only("3-")[- Beispiel: Physikalische Probleme ⚛]
#only("1")[
#voiceover("n-te Wurzeln sind nicht nur ein mathematisches Konzept. Sie werden in verschiedenen realen Anwendungen verwendet.")
]
#only("2")[
#voiceover("Ein Beispiel ist die Berechnung von Zinssätzen. Wenn Du den Gesamtbetrag nach einer bestimmten Zeit kennst und die Zinsen n-mal pro Jahr aufgezinst werden, kannst Du die n-te Wurzel verwenden, um den Zinssatz zu finden.")
]
#only("3")[
#voiceover("n-te Wurzeln tauchen auch häufig in physikalischen Problemen auf. Zum Beispiel im inversen Quadratgesetz, das beschreibt, wie sich die Intensität einer Kraft mit der Entfernung ändert.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zinssätze 💰]
#v(40pt)
#only("1-")[- Formel: $A = P(1 + r/n)^(nt)$]
#v(20pt)
#only("2-")[- $A$: Endbetrag, $P$: Anfangskapital, $r$: jährlicher Zinssatz, $n$: Anzahl der Zinsperioden pro Jahr, $t$: Anzahl der Jahre]
#v(20pt)
#only("3-")[- Beispiel: $1000 = 500(1 + r/4)^(4 \cdot 2)$]
#v(20pt)
#only("4-")[- Lösung für $r$: $r = 4(\sqrt[4 \cdot 2]{1000/500} - 1) = 0.1892$ oder etwa 18.92%]
#only("1")[
#voiceover("Schauen wir uns das Beispiel mit dem Zinssatz genauer an. Die Formel für Zinseszinsen lautet A gleich P mal die Menge 1 plus r durch n, alles hoch n mal t.")
]
#only("2")[
#voiceover("Hier ist A der Endbetrag, P das Anfangskapital, r der jährliche Zinssatz, n die Anzahl der Zinsperioden pro Jahr und t die Anzahl der Jahre.")
]
#only("3")[
#voiceover("Zum Beispiel, wenn 500 Dollar in 2 Jahren mit vierteljährlicher Verzinsung auf 1000 Dollar anwachsen, können wir die Gleichung so aufstellen.")
]
#only("4")[
#voiceover("Um r zu lösen, müssen wir die 4 mal 2, also die 8. Wurzel verwenden. Dies ergibt einen Zinssatz von ungefähr 18.92%.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Physik ⚛]
#v(40pt)
#only("1-")[- Inverse Quadratgesetze: $F = k/r^2$]
#v(20pt)
#only("2-")[- $F$: Kraft, $k$: Konstante, $r$: Entfernung]
#v(20pt)
#only("3-")[- Beispiel: Gravitationskraft $F = G(m_1 m_2)/r^2$]
#v(20pt)
#only("4-")[- Lösung für $r$: $r = \sqrt{G(m_1 m_2)/F}$]
#only("1")[
#voiceover("In der Physik sind inverse Quadratgesetze häufig. Sie besagen, dass eine Kraft F proportional zu einer Konstante k geteilt durch das Quadrat der Entfernung r ist.")
]
#only("2")[
#voiceover("Hier ist F die Kraft, k eine Konstante, die von der Art der Kraft abhängt, und r die Entfernung zwischen den Objekten.")
]
#only("3")[
#voiceover("Ein bekanntes Beispiel ist Newtons Gesetz der universellen Gravitation. Es besagt, dass die Gravitationskraft zwischen zwei Objekten proportional zum Produkt ihrer Massen geteilt durch das Quadrat der Entfernung zwischen ihnen ist.")
]
#only("4")[
#voiceover("Wenn wir die Kraft und die Massen kennen, können wir die Entfernung mit der Quadratwurzel berechnen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- n-te Wurzeln werden im echten Leben verwendet 🌍]
#v(20pt)
#only("2-")[- Berechnung von Zinssätzen 💰]
#v(20pt)
#only("3-")[- Physikalische Probleme ⚛]
#v(20pt)
#only("4-")[- Das Verständnis von n-ten Wurzeln ist wichtig! 🎓]
#only("1")[
#voiceover("Zusammenfassend lässt sich sagen, dass n-te Wurzeln nicht nur ein abstraktes Konzept sind. Sie haben reale Anwendungen.")
]
#only("2")[
#voiceover("Wir haben gesehen, wie sie bei der Berechnung von Zinssätzen in der Finanzwelt verwendet werden.")
]
#only("3")[
#voiceover("Und wie sie in physikalischen Problemen auftauchen, insbesondere bei Gesetzen des inversen Quadrats.")
]
#only("4")[
#voiceover("Das Verständnis von n-ten Wurzeln ist also nicht nur für Deine Matheprüfungen wichtig, sondern auch für das Verständnis der Welt um uns herum!")
]
]