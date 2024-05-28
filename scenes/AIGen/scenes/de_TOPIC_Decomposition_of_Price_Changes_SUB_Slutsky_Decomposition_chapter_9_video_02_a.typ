#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Slutsky-Zerlegung]
#v(40pt)
#only("1-")[Die Slutsky-Zerlegung trennt die Wirkung einer Preisänderung in \_\_\_\_\_.]
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[a) Substitutions- und Einkommenseffekte]#only("2-")[#text(fill:green)[a) Substitutions- und Einkommenseffekte]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) Angebots- und Nachfrageeffekte]#only("3-")[#text(fill:red)[b) Angebots- und Nachfrageeffekte]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) Elastizitäts- und Inelastizitätseffekte]#only("4-")[#text(fill:red)[c) Elastizitäts- und Inelastizitätseffekte]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) Grenz- und Durchschnittseffekte]#only("5-")[#text(fill:red)[d) Grenz- und Durchschnittseffekte]]
#v(40pt)

#only("1")[#voiceover("Das ist richtig, gute Arbeit! Schauen wir uns an, warum dies die richtige Antwort ist.")]
// Sehr kurz über a sprechen und warum es korrekt ist
#only("2")[#voiceover("a) Substitutions- und Einkommenseffekte ist tatsächlich korrekt. Die Slutsky-Zerlegung trennt die Wirkung einer Preisänderung in diese beiden Komponenten.")]
// Sehr kurz über b sprechen und warum es falsch ist
#only("3")[#voiceover("b) Angebots- und Nachfrageeffekte ist falsch. Obwohl Preisänderungen Angebot und Nachfrage beeinflussen, befasst sich die Slutsky-Zerlegung nicht speziell damit.")]
// Sehr kurz über c sprechen und warum es falsch ist
#only("4")[#voiceover("c) Elastizitäts- und Inelastizitätseffekte ist ebenfalls falsch. Elastizität ist ein separates Konzept, das die Reaktionsfähigkeit der nachgefragten Menge auf Preisänderungen misst.")]
// Sehr kurz über d sprechen und warum es falsch ist
#only("5")[#voiceover("Und d) Grenz- und Durchschnittseffekte ist ebenfalls falsch. Diese Begriffe beziehen sich auf Kosten und Einnahmen, nicht auf die Auswirkungen von Preisänderungen auf das Verbraucherverhalten.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[- Die Slutsky-Zerlegung trennt die Wirkung einer Preisänderung in zwei Teile:]
#v(20pt)
#only("2-")[1. Der Substitutionseffekt 🔄]
#only("3-")[  - Änderung des Konsums aufgrund einer Änderung der relativen Preise, bei konstantem Nutzen]
#v(20pt)
#only("4-")[2. Der Einkommenseffekt 💰]
#only("5-")[  - Änderung des Konsums aufgrund einer Änderung der Kaufkraft, bei konstanten Preisen]
#v(40pt)
#only("6-")[Daher ist die richtige Antwort: #text(fill:green)[Substitutions- und Einkommenseffekte].]

#only("1")[#voiceover("Lass uns das jetzt Schritt für Schritt aufschlüsseln.")]
#only("2")[#voiceover("Die Slutsky-Zerlegung trennt die Wirkung einer Preisänderung in zwei Teile. Der erste ist der Substitutionseffekt.")]
#only("3")[#voiceover("Der Substitutionseffekt ist die Änderung des Konsums, die sich aus einer Änderung der relativen Preise der Güter ergibt, bei konstantem Nutzen oder Zufriedenheit des Verbrauchers.")]
#only("4")[#voiceover("Der zweite Teil ist der Einkommenseffekt.")]
#only("5")[#voiceover("Der Einkommenseffekt ist die Änderung des Konsums aufgrund der Änderung der Kaufkraft des Verbrauchers infolge der Preisänderung, bei konstanten relativen Preisen.")]
#only("6")[#voiceover("Zusammengefasst trennt die Slutsky-Zerlegung die Wirkung einer Preisänderung tatsächlich in Substitutions- und Einkommenseffekte, was a) zur richtigen Antwort macht.")]
]