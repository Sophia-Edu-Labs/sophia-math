#import "../sophiatheme.typ": *
#show: sophia-theme
#slide()[
#only("1")[
#voiceover("Hey meine Lieben, hier ist Fülle... wie ihr alle wisst, hab ich große Lücken..... also Lücken in Mathe! Und deswegen üben wir jetzt Ableitungen...")
]
Gesucht: Ableitung der Funktion
#v(40pt)
#only("2-")[#text()[$ f(x) = x^3 - 2x^2 $]]
#only("2")[
#voiceover("Wir wollen die Ableitung der Funktion f von x gleich x hoch drei minus zwei x Quadrat bestimmen. Das ist sogar noch einfacher als einen Elfmeter zu verwandeln!")
]
]
#slide()[
#only("1")[
#voiceover("Wir wenden dafür die Summenregel an, das heißt, wir leiten jeden Summanden einzeln ab. Denkt dran, die Subtraktion ist wie eine Addition mit negativem Vorzeichen.")
]
#text(size: 30pt, weight: "bold")[Ansatz]
#v(40pt)
#only("1-")[- Summenregel]
#only("2-")[- Potenzregel für jeden Summanden]
]
#slide()[
#text(size: 30pt, weight: "bold")[Lösungsschritte]
#v(40pt)
#only("1-")[$f(x) = x^3 - 2x^2$]
#only("1")[#voiceover("Wir starten mit unserer Funktion f von x gleich x hoch drei minus zwei x Quadrat.")]
#v(10pt)
#only("2-")[#align(center)[#text(fill:aqua)[⇓ Anwendung der Summenregel]]]
#only("2")[#voiceover("Jetzt kommt die Summenregel ins Spiel, wir leiten also jeden Teil einzeln ab.")]
#v(10pt)
#only("3-")[$f'(x) = 3x^2$]#only("4-")[$ - 4x$]
#only("3")[#voiceover("Die Ableitung von x hoch drei ist drei mal x Quadrat.")]
#only("4")[#voiceover("Und die Ableitung von minus zwei x Quadrat ist minus vier x. Wenn wir diese beiden Teile zusammenfügen, haben wir unsere Ableitung. So einfach ist das! Jetzt muss ich aber los, werd gleich eingewechselt!")]
]