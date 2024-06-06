#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Rationale Exponenten im echten Leben 🌍]
#v(40pt)
#only("1-")[- Verwendet bei Zinseszinsen 💰 und Wachstumsraten 📈]
#v(20pt)
#only("2-")[- Formel: $ A = P (1 + r/n)^(n t) $]
#v(20pt)
#only("3-")[- Beispiel: 1000 € bei 5% Zinsen, monatlich verzinst über 10 Jahre]
#only("1")[
#voiceover("Rationale Exponenten sind nicht nur abstrakte mathematische Konzepte. Sie haben Anwendungen in der realen Welt, insbesondere in der Finanzwelt und beim Bevölkerungswachstum.")
]
#only("2")[
#voiceover("Die Zinseszinsformel verwendet rationale Exponenten. In dieser Formel ist A der Endbetrag, P ist das Anfangskapital, r ist der jährliche Zinssatz, n ist die Anzahl der Zinsperioden pro Jahr und t ist die Anzahl der Jahre.")
]
#only("3")[
#voiceover("Zum Beispiel, wenn Du 1000 Euro bei einem jährlichen Zinssatz von 5 Prozent anlegst, der monatlich verzinst wird, kannst Du diese Formel mit einem rationalen Exponenten verwenden, um Deinen Endbetrag zu berechnen.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Berechnung der Zinseszinsen 🧮]
#v(40pt)
#only("1-")[$ A = 1000 (1 + 0.05/12)^(12 \cdot 10) $]
#v(20pt)
#only("2-")[$ A = 1000 (1.00417)^(120) $]
#v(20pt)
#only("3-")[$ A = 1647.01 $]
#only("1")[
#voiceover("Setzen wir die Werte ein. P ist 1000, r ist 0,05 für 5 Prozent, n ist 12, weil monatlich verzinst wird, und t ist 10 für 10 Jahre.")
]
#only("2")[
#voiceover("Vereinfachen wir den Ausdruck in den Klammern, erhalten wir 1,00417 hoch 120.")
]
#only("3")[
#voiceover("Mit einem Taschenrechner finden wir heraus, dass Dein 1000 Euro nach 10 Jahren auf etwa 1647 Euro und 1 Cent angewachsen sein werden.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Wachstumsraten 📈]
#v(40pt)
#only("1-")[- Ähnliche Formel: $ P_t = P_0 (1 + r)^t $]
#v(20pt)
#only("2-")[- $ P_t $ = Bevölkerung zum Zeitpunkt $ t $, $ P_0 $ = Anfangsbevölkerung, $ r $ = Wachstumsrate]
#v(20pt)
#only("3-")[- Beispiel: Bevölkerung von 1000, wächst jährlich um 2% über 5 Jahre]
#only("1")[
#voiceover("Rationale Exponenten werden auch zur Berechnung des Bevölkerungswachstums verwendet. Die Formel ist ähnlich: Die Bevölkerung zum Zeitpunkt t ist gleich der Anfangsbevölkerung multipliziert mit der Größe eins plus Wachstumsrate, hoch t.")
]
#only("2")[
#voiceover("In dieser Formel ist P_t die Bevölkerung zum Zeitpunkt t, P_0 ist die Anfangsbevölkerung, r ist die Wachstumsrate und t ist die Anzahl der Zeitperioden.")
]
#only("3")[
#voiceover("Zum Beispiel, wenn eine Bevölkerung von 1000 jährlich um 2 Prozent wächst, wird die Bevölkerung nach 5 Jahren 1000 mal 1,02 hoch 5 sein, was etwa 1104 entspricht.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Rationale Exponenten werden bei Zinseszinsen und Wachstumsraten verwendet 📈💰]
#v(20pt)
#only("2-")[- Formeln: $ A = P (1 + r/n)^(n t) $ und $ P_t = P_0 (1 + r)^t $]
#v(20pt)
#only("3-")[- Anwendungen abstrakter mathematischer Konzepte in der realen Welt 🌍🧮]
#only("1")[
#voiceover("Zusammenfassend werden rationale Exponenten bei realen Problemen wie der Berechnung von Zinseszinsen und Wachstumsraten verwendet.")
]
#only("2")[
#voiceover("Die Formeln für Zinseszinsen und Bevölkerungswachstum beinhalten beide das Erheben einer Größe zu einer rationalen Potenz.")
]
#only("3")[
#voiceover("Dies sind nur einige Beispiele dafür, wie abstrakte mathematische Konzepte wie rationale Exponenten konkrete Anwendungen in der realen Welt haben können.")
]
]