#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Fläche der Eisscholle]
#v(40pt)
#only("1-")[Großartig! 🎉 Du hast die Fläche der Eisscholle korrekt berechnet. Lass uns die Lösung Schritt für Schritt durchgehen.]
#only("1")[
#voiceover("Großartig! Du hast die Fläche der Eisscholle korrekt berechnet. Lass uns die Lösung Schritt für Schritt durchgehen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Gegebene Informationen]
#v(40pt)
#only("1-")[
- Masse des Eisbären: $m = 400 "kg"$
- Eisscholle sinkt: $Delta h = 2.5 "cm" = 0.025 "m"$
- Dichte des Wassers: $rho_("wasser") = 1000 "kg/m"^3$
]
#only("1")[
#voiceover("Zuerst fassen wir die gegebenen Informationen zusammen. Der Eisbär hat eine Masse von 400 Kilogramm. Wenn er auf die Eisscholle tritt, sinkt die Scholle um 2,5 Zentimeter oder 0,025 Meter tiefer ins Wasser. Wir wissen auch, dass die Dichte des Wassers 1000 Kilogramm pro Kubikmeter beträgt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Auftriebsgesetz]
#v(40pt)
#only("1-")[Das Gewicht des verdrängten Wassers entspricht dem Gewicht des Objekts, das die Verdrängung verursacht.]
#v(20pt)
#only("2-")[In diesem Fall: $m_("eisbär") dot g = rho_("wasser") dot g dot Delta V$]
#only("1")[
#voiceover("Das Schlüsselprinzip, das wir zur Lösung dieses Problems verwenden werden, ist das Auftriebsgesetz. Es besagt, dass das Gewicht des verdrängten Wassers dem Gewicht des Objekts entspricht, das die Verdrängung verursacht.")
]
#only("2")[
#voiceover("In diesem Fall bedeutet das, dass das Gewicht des Eisbären, gegeben durch seine Masse mal der Erdbeschleunigung, der Dichte des Wassers mal der Erdbeschleunigung mal der Volumenänderung des verdrängten Wassers entspricht.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Berechnung der Fläche]
#v(40pt)
#only("1-")[Die Volumenänderung $Delta V$ kann als Fläche der Eisscholle $A$ mal der Höhenänderung $Delta h$ ausgedrückt werden.]
#v(20pt)
#only("2-")[$Delta V = A dot Delta h$]
#v(20pt)
#only("3-")[Einsetzen in die Auftriebsgleichung:]
#v(10pt)
#only("3-")[$m_("eisbär") dot g = rho_("wasser") dot g dot A dot Delta h$]
#v(20pt)
#only("4-")[Lösen für $A$:]
#v(10pt)
#only("4-")[$A = (m_("eisbär") dot g)/(rho_("wasser") dot g dot Delta h)$]
#only("1")[
#voiceover("Um die Fläche der Eisscholle zu finden, müssen wir die Volumenänderung in Bezug auf die Fläche ausdrücken. Die Volumenänderung entspricht der Fläche der Eisscholle mal der Höhenänderung.")
]
#only("2")[
#voiceover("Mathematisch schreiben wir das als Delta V gleich A mal Delta h.")
]
#only("3")[
#voiceover("Nun können wir diesen Ausdruck für Delta V in die Auftriebsgleichung einsetzen. Wir erhalten, dass die Masse des Eisbären mal g der Dichte des Wassers mal g mal der Fläche der Eisscholle mal der Höhenänderung entspricht.")
]
#only("4")[
#voiceover("Um die Fläche A zu berechnen, teilen wir beide Seiten durch die Dichte des Wassers, g und Delta h. Dies gibt uns die Formel für die Fläche.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Einsetzen der Werte]
#v(40pt)
#only("1-")[
$A = (400 "kg" dot 9.81 "m/s"^2)/(1000 "kg/m"^3 dot 9.81 "m/s"^2 dot 0.025 "m")$
]
#v(20pt)
#only("2-")[
$A = 16 "m"^2$
]
#only("1")[
#voiceover("Nun können wir die Werte einsetzen. Die Masse des Eisbären beträgt 400 Kilogramm, die Erdbeschleunigung beträgt 9,81 Meter pro Sekunde zum Quadrat, die Dichte des Wassers beträgt 1000 Kilogramm pro Kubikmeter und die Höhenänderung beträgt 0,025 Meter.")
]
#only("2")[
#voiceover("Wenn wir dies berechnen, erhalten wir, dass die Fläche der Eisscholle 16 Quadratmeter beträgt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[Die Fläche der Eisscholle beträgt $16 "m"^2$. 🧊]
#only("1")[
#voiceover("Abschließend beträgt die Fläche der Eisscholle, auf die der Eisbär tritt, 16 Quadratmeter. Großartige Arbeit bei der Lösung dieses Problems!")
]
]