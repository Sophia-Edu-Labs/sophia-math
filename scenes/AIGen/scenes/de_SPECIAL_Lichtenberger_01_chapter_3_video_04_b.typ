#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Das war leider nicht korrekt. Lass uns die Lösung Schritt für Schritt durchgehen, um zu verstehen, warum Stahlschiffe schwimmen, obwohl Stahl dichter als Wasser ist.")
]

#text(size: 30pt, weight: "bold")[Warum Stahlschiffe schwimmen 🚢]

#v(40pt)

#only("2-")[- Dichte von Stahl: $p_"steel" = 7.8 g/"cm"^3$ > Dichte von Wasser: $p_"water" = 1 g/"cm"^3$]
// Die Dichten von Stahl und Wasser werden ab Folie 2 angezeigt

#only("2")[
#voiceover("Zuerst sollten wir feststellen, dass Stahl eine Dichte von 7,8 Gramm pro Kubikzentimeter hat, was größer ist als die Dichte von Wasser mit 1 Gramm pro Kubikzentimeter.")
]

]


#slide()[

#only("1")[
#voiceover("Der Schlüssel zum Verständnis, warum Stahlschiffe schwimmen, liegt im Konzept des Auftriebs. Auftrieb ist eine Aufwärtskraft, die von einer Flüssigkeit auf ein darin eingetauchtes Objekt ausgeübt wird.")
]

#text(size: 30pt, weight: "bold")[Auftrieb 🌊]

#v(40pt)

#only("1-")[- Aufwärtskraft, die von einer Flüssigkeit auf ein eingetauchtes Objekt ausgeübt wird]
// Die Definition von Auftrieb wird ab Folie 1 angezeigt

#only("2-")[- Hängt vom Volumen der verdrängten Flüssigkeit ab]
// Die Abhängigkeit des Auftriebs vom verdrängten Flüssigkeitsvolumen wird ab Folie 2 angezeigt

#only("3-")[- Archimedes' Prinzip: $F_"buoyant" = p_"fluid" * g * V_"displaced"$]
// Das Archimedische Prinzip wird ab Folie 3 angezeigt

#only("2")[
#voiceover("Die Größe der Auftriebskraft hängt vom Volumen der Flüssigkeit ab, die vom Objekt verdrängt wird.")
]

#only("3")[
#voiceover("Dies wird durch das Archimedische Prinzip beschrieben, das besagt, dass die Auftriebskraft gleich der Dichte der Flüssigkeit mal der Erdbeschleunigung mal dem Volumen der verdrängten Flüssigkeit ist.")
]

]

#slide()[

#only("1")[
#voiceover("Betrachten wir nun den Fall eines Stahlschiffs. Obwohl Stahl dichter als Wasser ist, sind Schiffe so konstruiert, dass sie ein großes Volumen Wasser verdrängen.")
]

#text(size: 30pt, weight: "bold")[Stahlschiffe 🚢]

#v(40pt)

#only("1-")[- Konstruiert, um ein großes Volumen Wasser zu verdrängen]
// Die Konstruktion von Stahlschiffen zur Verdrängung großer Wassermengen wird ab Folie 1 angezeigt

#only("2-")[- Hohle Struktur mit Luft im Inneren]
// Die hohle Struktur von Stahlschiffen wird ab Folie 2 angezeigt

#only("3-")[- Durchschnittliche Dichte < Dichte von Wasser]
// Die durchschnittliche Dichte von Stahlschiffen, die geringer ist als die Dichte von Wasser, wird ab Folie 3 angezeigt

#only("2")[
#voiceover("Dies wird durch eine hohle Struktur mit Luft im Inneren erreicht, die das Volumen erheblich vergrößert, ohne viel Masse hinzuzufügen.")
]

#only("3")[
#voiceover("Infolgedessen ist die durchschnittliche Dichte des Schiffs, einschließlich der Luft im Inneren, geringer als die Dichte von Wasser.")
]

]

#slide()[

#only("1")[
#voiceover("Wenn die Auftriebskraft gleich dem Gewicht des Schiffs ist, schwimmt das Schiff. Dies tritt ein, wenn die Masse des verdrängten Wassers der Masse des Schiffs entspricht.")
]

#text(size: 30pt, weight: "bold")[Schwimmkondition ⚖️]

#v(40pt)

#only("1-")[- $F_"buoyant" = W_"ship"$]
// Die Bedingung für das Schwimmen wird ab Folie 1 angezeigt

#only("2-")[- $m_"displaced water" = m_"ship"$]
// Die Bedingung in Bezug auf die verdrängte Wassermasse, die der Schiffsmasse entspricht, wird ab Folie 2 angezeigt

#only("3-")[- $p_"water" * V_"displaced" = m_"ship"$]
// Die Bedingung, ausgedrückt durch die Dichte des Wassers und das verdrängte Volumen, wird ab Folie 3 angezeigt

#only("2")[
#voiceover("Mit anderen Worten, die Masse des vom Schiff verdrängten Wassers entspricht der Masse des Schiffs selbst.")
]

#only("3")[
#voiceover("Dies kann ausgedrückt werden als die Dichte des Wassers mal das Volumen des verdrängten Wassers gleich der Masse des Schiffs.")
]

]

#slide()[

#only("1")[
#voiceover("Zusammenfassend schwimmen Stahlschiffe, weil ihre Konstruktion es ihnen ermöglicht, ein Volumen Wasser mit einer Masse zu verdrängen, die der Masse des Schiffs entspricht, obwohl Stahl dichter als Wasser ist.")
]

#text(size: 30pt, weight: "bold")[Zusammenfassung 📝]

#v(40pt)

#only("1-")[- Stahlschiffe schwimmen aufgrund des Auftriebs 🌊]
// Die Rolle des Auftriebs beim Schwimmen von Stahlschiffen wird ab Folie 1 angezeigt

#only("2-")[- Konstruiert, um eine Wassermasse zu verdrängen, die der Schiffsmasse entspricht 🚢]
// Die Konstruktion von Stahlschiffen zur Verdrängung einer Wassermasse, die der Schiffsmasse entspricht, wird ab Folie 2 angezeigt

#only("3-")[- Erreicht durch hohle Struktur und Luft im Inneren 💨]
// Die Rolle der hohlen Struktur und der Luft bei der Erreichung der notwendigen Verdrängung wird ab Folie 3 angezeigt

#only("2")[
#voiceover("Dies wird erreicht, indem das Schiff so konstruiert wird, dass es ein Volumen Wasser mit einer Masse verdrängt, die der eigenen Masse des Schiffs entspricht.")
]

#only("3")[
#voiceover("Die hohle Struktur und die Luft im Inneren des Schiffs machen dies möglich, trotz der hohen Dichte von Stahl.")
]

]