#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Basiswechsel]
#v(40pt)
Der Wechsel der Basis beinhaltet das Finden eines neuen Satzes von ____ Vektoren.
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) abhängig]#only("2-")[#text(fill:red)[a) abhängig]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) unabhängig]#only("3-")[#text(fill:red)[b) unabhängig]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-3")[c) Basis]#only("4-")[#text(fill:green)[c) Basis]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) orthogonal]#only("5-")[#text(fill:red)[d) orthogonal]]

#only("1")[
#voiceover("Leider falsch. Hier ist die Erklärung im Video.")
]
#only("2")[
#voiceover("a) abhängig ist falsch. Beim Wechsel der Basis suchen wir nach einem neuen Satz von Basisvektoren, die per Definition linear unabhängig sind.")
]
#only("3")[
#voiceover("b) unabhängig ist nah dran, aber nicht ganz richtig. Während Basisvektoren tatsächlich linear unabhängig sind, ist 'unabhängig' allein nicht der beste Begriff, um den neuen Satz von Vektoren zu beschreiben, den wir beim Wechsel der Basis suchen.")
]
#only("4")[
#voiceover("c) Basis ist korrekt! Beim Wechsel der Basis suchen wir speziell nach einem neuen Satz von Basisvektoren, die denselben Raum wie die ursprüngliche Basis aufspannen.")
]
#only("5")[
#voiceover("d) orthogonal ist falsch. Obwohl es oft praktisch ist, mit orthogonalen Basisvektoren zu arbeiten, ist dies keine Voraussetzung beim Wechsel der Basis. Die neuen Basisvektoren müssen nicht orthogonal sein.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[1. Erinnere dich an die Definition einer Basis 📚]
#v(20pt)
#only("2-")[   - Ein Satz von linear unabhängigen Vektoren, die einen Raum aufspannen]
#v(40pt)
#only("3-")[2. Verstehe, was Basiswechsel bedeutet 🔄]
#v(20pt)
#only("4-")[   - Einen neuen Satz von Basisvektoren für denselben Raum finden]
#v(40pt)
#only("1")[
#voiceover("Lass uns das Schritt für Schritt durchgehen.")
]
#only("2")[
#voiceover("Erstens, erinnere dich daran, dass eine Basis ein Satz von linear unabhängigen Vektoren ist, die einen Raum aufspannen.")
]
#only("3")[
#voiceover("Als nächstes verstehe, dass Basiswechsel bedeutet, einen neuen Satz von Basisvektoren für denselben Raum zu finden.")
]
#only("4")[
#voiceover("Mit anderen Worten, wir suchen nach einem anderen Satz von Vektoren, die immer noch denselben Raum wie die ursprüngliche Basis aufspannen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[1. Identifiziere das Hauptmerkmal der neuen Vektoren 🔑]
#v(20pt)
#only("2-")[   - Sie müssen eine Basis bilden (linear unabhängig und den Raum aufspannend)]
#v(40pt)
#only("3-")[2. Daher suchen wir beim Wechsel der Basis nach einem neuen Satz von #text(weight: "bold")[Basis]vektoren.]

#only("1")[
#voiceover("Das Hauptmerkmal dieser neuen Vektoren ist, dass sie ebenfalls eine Basis bilden müssen.")
]
#only("2")[
#voiceover("Das bedeutet, dass sie linear unabhängig sein und den Raum aufspannen müssen, genau wie die ursprünglichen Basisvektoren.")
]
#only("3")[
#voiceover("Daher suchen wir beim Wechsel der Basis speziell nach einem neuen Satz von Basisvektoren.")
]
]