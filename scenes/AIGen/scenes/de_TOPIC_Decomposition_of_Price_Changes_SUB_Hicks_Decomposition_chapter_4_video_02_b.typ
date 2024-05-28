#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Hicks-Zerlegung]
#v(40pt)
#only("1-")[Welche Art von Nachfragefunktion wird in der Hicks-Zerlegung verwendet?]
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[a) Kompensierte Nachfrage]#only("2-")[#text(fill:green)[a) Kompensierte Nachfrage]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) Unkompensierte Nachfrage]#only("3-")[#text(fill:red)[b) Unkompensierte Nachfrage]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) Marktnachfrage]#only("4-")[#text(fill:red)[c) Marktnachfrage]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) Gesamtnachfrage]#only("5-")[#text(fill:red)[d) Gesamtnachfrage]]
#v(40pt)

#only("1")[#voiceover("Leider falsch. Hier ist die richtige Antwort.")]
// Sehr kurz über a sprechen und warum es korrekt ist
#only("2")[#voiceover("a) Kompensierte Nachfrage ist tatsächlich die Art von Nachfragefunktion, die in der Hicks-Zerlegung verwendet wird. Kompensierte Nachfragefunktionen halten den Nutzen konstant, was ein wesentlicher Aspekt der Hicks-Zerlegung ist.")]
// Sehr kurz über b sprechen und warum es falsch ist
#only("3")[#voiceover("b) Unkompensierte Nachfrage ist falsch. Unkompensierte Nachfragefunktionen halten den Nutzen nicht konstant, was für die Hicks-Zerlegung notwendig ist.")]
// Sehr kurz über c sprechen und warum es falsch ist
#only("4")[#voiceover("c) Marktnachfrage ist ebenfalls falsch. Marktnachfrage bezieht sich auf die Gesamtnachfrage nach einem Gut oder einer Dienstleistung auf einem Markt, nicht auf eine spezifische Art von Nachfragefunktion.")]
// Sehr kurz über d sprechen und warum es falsch ist
#only("5")[#voiceover("Und d) Gesamtnachfrage ist ebenfalls falsch. Gesamtnachfrage ist die Gesamtnachfrage nach allen Gütern und Dienstleistungen in einer Volkswirtschaft, nicht eine spezifische Art von Nachfragefunktion.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Kompensierte Nachfragefunktionen]
#v(40pt)
#only("1-")[Wesentliche Merkmale: 🔑]
#v(20pt)
#only("2-")[- Halten den Nutzen konstant 📊]
#only("3-")[- Isolieren den Substitutionseffekt 🔄]
#only("4-")[- Mathematische Notation: $h(p, u)$ 🧮]
#v(40pt)
#only("5-")[Verwendet in der Hicks-Zerlegung zur Trennung der Preiseffekte in: 💰➕🔄]
#v(20pt)
#only("6-")[1. Substitutionseffekt]
#only("7-")[2. Einkommenseffekt]

#only("1")[#voiceover("Lass uns etwas tiefer in die kompensierten Nachfragefunktionen und ihre Rolle in der Hicks-Zerlegung eintauchen.")]
#only("2")[#voiceover("Das wesentliche Merkmal von kompensierten Nachfragefunktionen ist, dass sie den Nutzen konstant halten.")]
#only("3")[#voiceover("Indem sie den Nutzen konstant halten, isolieren kompensierte Nachfragefunktionen den Substitutionseffekt, der zeigt, wie sich der Konsum ändert, wenn sich die Preise ändern und der Nutzen konstant bleibt.")]
#only("4")[#voiceover("Mathematisch wird eine kompensierte Nachfragefunktion typischerweise als h von p und u geschrieben, wobei p die Preise und u das Nutzenniveau darstellt.")]
#only("5")[#voiceover("In der Hicks-Zerlegung werden kompensierte Nachfragefunktionen verwendet, um die Effekte einer Preisänderung in zwei Teile zu trennen:")]
#only("6")[#voiceover("Erstens der Substitutionseffekt, den wir gerade besprochen haben,")]
#only("7")[#voiceover("Und zweitens der Einkommenseffekt, der zeigt, wie sich der Konsum aufgrund einer Änderung des realen Einkommens nach Anpassung des Substitutionseffekts ändert.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Hicks-Zerlegung verwendet kompensierte Nachfragefunktionen 📈]
#v(20pt)
#only("2-")[- Kompensierte Nachfrage hält den Nutzen konstant 📊]
#v(20pt)
#only("3-")[- Trennt Preiseffekte in Substitutions- und Einkommenseffekte 🔄💰]
#v(20pt)
#only("4-")[- Wichtiges Werkzeug zur Analyse des Verbraucherverhaltens 🧐]

#only("1")[#voiceover("Zusammenfassend verwendet die Hicks-Zerlegung kompensierte Nachfragefunktionen,")]
#only("2")[#voiceover("die den Nutzen konstant halten,")]
#only("3")[#voiceover("um die Effekte einer Preisänderung in Substitutions- und Einkommenseffekte zu trennen.")]
#only("4")[#voiceover("Dies macht die Hicks-Zerlegung zu einem wichtigen Werkzeug zur Analyse des Verbraucherverhaltens und zum Verständnis, wie Verbraucher auf Preisänderungen reagieren.")]
]