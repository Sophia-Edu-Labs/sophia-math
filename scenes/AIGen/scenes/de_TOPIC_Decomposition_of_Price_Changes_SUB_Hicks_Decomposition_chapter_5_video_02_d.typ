#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Übung 1]
#v(40pt)
Welche Zerlegung hält den Nutzen konstant?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[a) Hicks]#only("2-")[#text(fill:green)[a) Hicks]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) Slutsky]#only("3-")[#text(fill:red)[b) Slutsky]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) Beide]#only("4-")[#text(fill:red)[c) Beide]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) Keine]#only("5-")[#text(fill:red)[d) Keine]]

#only("1")[#voiceover("Leider war das nicht die richtige Antwort.")]
#only("2")[#voiceover("a) Hicks-Zerlegung hält tatsächlich den Nutzen konstant. Lass uns sehen, warum das so ist und warum die anderen Optionen falsch sind.")]
#only("3")[#voiceover("b) Slutsky-Zerlegung ist falsch, weil sie das reale Einkommen, nicht den Nutzen, konstant hält.")]
#only("4")[#voiceover("c) Beide ist falsch, weil nur Hicks, nicht Slutsky, den Nutzen konstant hält.")]
#only("5")[#voiceover("d) Keine ist ebenfalls falsch, weil Hicks den Nutzen konstant hält.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösung]
#v(40pt)
#only("1-")[- Die Hicks-Zerlegung trennt die Wirkung einer Preisänderung in:]
#v(20pt)
#only("2-")[  1. Substitutionseffekt 🔄]
#v(10pt)
#only("3-")[  2. Einkommenseffekt 💰]
#v(20pt)
#only("4-")[- Dies geschieht, indem der #text(weight: "bold")[Nutzen] konstant gehalten wird.]
#v(20pt)
#only("5-")[- Im Gegensatz dazu hält die Slutsky-Zerlegung das #text(weight: "bold")[reale Einkommen] konstant.]

#only("1")[#voiceover("Lass uns das Schritt für Schritt aufschlüsseln.")]
#only("2")[#voiceover("Zuerst trennt die Hicks-Zerlegung die Wirkung einer Preisänderung in den Substitutionseffekt, der die Änderung des Konsums aufgrund der Änderung der relativen Preise erfasst,")]
#only("3")[#voiceover("und den Einkommenseffekt, der die Änderung des Konsums aufgrund der Änderung der Kaufkraft erfasst.")]
#only("4")[#voiceover("Der entscheidende Punkt ist, dass die Hicks-Zerlegung dies tut, indem der Nutzen konstant gehalten wird. Das bedeutet, dass sie untersucht, wie sich der Konsum ändert, während der Verbraucher auf dem gleichen Zufriedenheitsniveau bleibt.")]
#only("5")[#voiceover("Andererseits hält die Slutsky-Zerlegung das reale Einkommen, nicht den Nutzen, konstant. Daher ist es die Hicks-Zerlegung, die speziell den Nutzen konstant hält.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Die Hicks-Zerlegung hält den #text(weight: "bold")[Nutzen] konstant. ✅]
#v(20pt)
#only("2-")[- Die Slutsky-Zerlegung hält das #text(weight: "bold")[reale Einkommen] konstant. ❌]
#v(20pt)
#only("3-")[Daher ist die richtige Antwort: #text(weight: "bold")[a) Hicks].]

#only("1")[#voiceover("Zusammenfassend hält die Hicks-Zerlegung den Nutzen konstant, wenn sie die Auswirkungen einer Preisänderung trennt.")]
#only("2")[#voiceover("Die Slutsky-Zerlegung hingegen hält das reale Einkommen konstant.")]
#only("3")[#voiceover("Daher ist die richtige Antwort auf die Frage 'Welche Zerlegung hält den Nutzen konstant?' a) Hicks.")]
]