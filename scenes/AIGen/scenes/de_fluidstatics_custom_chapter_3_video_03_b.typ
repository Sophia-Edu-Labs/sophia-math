#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Blutdruck]
#v(40pt)
Warum ist der Blutdruck in den Füßen höher als im Kopf?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[a) Schwerkraft]#only("2-")[#text(fill:green)[a) Schwerkraft]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) Herzschlag]#only("3-")[#text(fill:red)[b) Herzschlag]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) Atmung]#only("4-")[#text(fill:red)[c) Atmung]]  
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) Muskelkontraktion]#only("5-")[#text(fill:red)[d) Muskelkontraktion]]
#v(40pt)

#only("1")[#voiceover("Das war leider nicht korrekt. Hier ist die richtige Antwort.")]
// Sehr kurz über a sprechen und warum es korrekt ist
#only("2")[#voiceover("Die richtige Antwort ist a) Schwerkraft. Die Gravitationskraft wirkt auf die Blutsäule und verursacht einen höheren Druck in den unteren Körperteilen wie den Füßen im Vergleich zum Kopf.")]
// Sehr kurz über b sprechen und warum es falsch ist  
#only("3")[#voiceover("b) Herzschlag ist falsch. Obwohl der Herzschlag den Blutkreislauf antreibt, verursacht er nicht direkt den Druckunterschied zwischen den Füßen und dem Kopf.")]
// Sehr kurz über c sprechen und warum es falsch ist
#only("4")[#voiceover("c) Atmung ist ebenfalls falsch. Das Atmen beeinflusst den Blutdruck insgesamt, erklärt aber nicht den spezifischen Unterschied zwischen den Füßen und dem Kopf.")]
// Sehr kurz über d sprechen und warum es falsch ist
#only("5")[#voiceover("Und d) Muskelkontraktion ist auch falsch. Muskelkontraktionen können den lokalen Blutdruck beeinflussen, sind aber nicht der Hauptgrund für den Druckunterschied zwischen Füßen und Kopf.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Erklärung]
#v(40pt)  
#only("1-")[- Blut ist eine Flüssigkeit, daher übt es Druck aus 🩸]
#v(20pt)
#only("2-")[- Der Druck nimmt mit der Tiefe aufgrund der Schwerkraft zu 🪂]
#v(20pt)
#only("3-")[- Die Füße sind tiefer als der Kopf 🦶 > 🧠]
#v(20pt)  
#only("4-")[- Daher ist der Blutdruck in den Füßen höher 📈]
#v(40pt)

#only("1")[#voiceover("Schauen wir uns an, warum die Schwerkraft diesen Blutdruckunterschied verursacht.")]
#only("2")[#voiceover("Erstens, erinnere dich daran, dass Blut, wie jede Flüssigkeit, Druck ausübt. Dieser Druck nimmt mit der Tiefe aufgrund der Schwerkraft zu, die auf die Flüssigkeitssäule wirkt.")]
#only("3")[#voiceover("Im menschlichen Körper befinden sich die Füße tiefer als der Kopf.")]  
#only("4")[#voiceover("Folglich ist der Blutdruck in den Füßen höher als im Kopf, da über den Füßen eine höhere Blutsäule steht.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Berechnung]
#v(40pt)
#only("1-")[Um den Druckunterschied zu berechnen:]
#v(20pt)  
#only("2-")[- Verwende die Formel: $ Delta p = rho dot g dot h $]
#v(20pt)
#only("3-")[- $ rho $ = Blutdichte (1060 kg/m³)]
#only("4-")[- $ g $ = Erdbeschleunigung (9,81 m/s²)]
#only("5-")[- $ h $ = Höhenunterschied (z.B. 1,5 m)]
#v(20pt)
#only("6-")[$ Delta p = 1060 dot 9.81 dot 1.5 = 15604.5 $ Pa]
#v(20pt)
#only("7-")[Das sind etwa 117 mmHg!]

#only("1")[#voiceover("Wir können sogar den genauen Druckunterschied berechnen.")]
#only("2")[#voiceover("Dazu verwenden wir die Formel 'Delta p gleich rho mal g mal h', wobei Delta p der Druckunterschied ist, rho die Dichte des Blutes, g die Erdbeschleunigung und h der Höhenunterschied ist.")]
#only("3")[#voiceover("Blut hat eine Dichte von etwa 1060 Kilogramm pro Kubikmeter,")]
#only("4")[#voiceover("die Erdbeschleunigung beträgt 9,81 Meter pro Sekunde zum Quadrat,")]  
#only("5")[#voiceover("und nehmen wir einen Höhenunterschied von 1,5 Metern zwischen den Füßen und dem Kopf an.")]
#only("6")[#voiceover("Setzen wir diese Werte in die Formel ein, erhalten wir einen Druckunterschied von 15604,5 Pascal.")]
#only("7")[#voiceover("Umgerechnet in die gebräuchlichere Einheit Millimeter Quecksilbersäule sind das etwa 117 mmHg. Ein ziemlich signifikanter Unterschied!")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Der Blutdruck variiert mit der Höhe 📏]
#v(20pt)  
#only("2-")[- Die Schwerkraft verursacht höheren Druck in den Füßen 🌍]
#v(20pt)
#only("3-")[- Der Druckunterschied kann berechnet werden 🧮]
#v(20pt)
#only("4-")[- Dieses Verständnis ist für medizinisches Fachpersonal entscheidend 👩‍⚕️👨‍⚕️]

#only("1")[#voiceover("Zusammenfassend variiert der Blutdruck im Körper mit der Höhe.")]
#only("2")[#voiceover("Die Schwerkraft ist der Hauptfaktor, der den höheren Blutdruck in den Füßen im Vergleich zum Kopf verursacht.")]
#only("3")[#voiceover("Wir können diesen Druckunterschied berechnen, indem wir die Dichte des Blutes, die Erdbeschleunigung und den Höhenunterschied verwenden.")]
#only("4")[#voiceover("Das Verständnis dieser Druckunterschiede ist für medizinisches Fachpersonal entscheidend, um Zustände im Zusammenhang mit dem Blutdruck zu diagnostizieren und zu behandeln.")]
]