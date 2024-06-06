#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Gleichungen mit rationalen Exponenten lösen]
#v(40pt)
Löse $x^(1/2) = 4$
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) 2]#only("2-")[#text(fill:red)[a) 2]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) 4]#only("3-")[#text(fill:red)[b) 4]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) 8]#only("4-")[#text(fill:red)[c) 8]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-4")[d) 16]#only("5-")[#text(fill:green)[d) 16]]

#only("1")[#voiceover("Leider nicht ganz richtig.")]
#only("2-5")[#voiceover("Lass uns Schritt für Schritt durch die Lösung gehen, um zu verstehen, warum d) 16 korrekt ist.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Den Term isolieren]
#v(40pt)
#only("1-")[- Wir haben: $x^(1/2) = 4$]
#v(20pt)
#only("2-")[- Der Term mit dem Exponenten ist bereits auf der linken Seite isoliert.]
#v(20pt)
#only("3-")[➡️ Keine weitere Manipulation erforderlich.]

#only("1")[#voiceover("Wir beginnen mit der Gleichung x hoch ein Halb gleich vier.")]
#only("2")[#voiceover("Wir sehen, dass der Term mit dem Exponenten, x hoch ein Halb, bereits auf der linken Seite der Gleichung isoliert ist.")]
#only("3")[#voiceover("Daher müssen wir in diesem Schritt keine weiteren Manipulationen vornehmen.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Beide Seiten mit dem Kehrwert potenzieren]
#v(40pt)
#only("1-")[- Der Exponent ist $1/2$, also ist der Kehrwert $2/1 = 2$.]
#v(20pt)
#only("2-")[- Potenziere beide Seiten mit 2:]
#v(20pt)
#only("3-")[$(x^(1/2))^2 = 4^2$]

#only("1")[#voiceover("Als nächstes betrachten wir den Exponenten. Es ist ein Halb, also ist der Kehrwert zwei über eins, was sich zu einfach zwei vereinfacht.")]
#only("2")[#voiceover("Wir potenzieren nun beide Seiten der Gleichung mit zwei.")]
#only("3")[#voiceover("Auf der linken Seite haben wir x hoch ein Halb, alles hoch zwei. Auf der rechten Seite haben wir vier zum Quadrat.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Vereinfachen]
#v(40pt)
#only("1-")[- Mit der Potenzregel, $(x^(1/2))^2 = x^((1/2) dot 2) = x^1 = x$]
#v(20pt)
#only("2-")[- Auf der rechten Seite, $4^2 = 16$]
#v(20pt)
#only("3-")[➡️ $x = 16$]

#only("1")[#voiceover("Jetzt vereinfachen wir. Auf der linken Seite verwenden wir die Potenzregel. x hoch ein Halb, alles hoch zwei, wird zu x hoch ein Halb mal zwei, was einfach x hoch eins oder einfach x ist.")]
#only("2")[#voiceover("Auf der rechten Seite ist vier zum Quadrat sechzehn.")]
#only("3")[#voiceover("Also erhalten wir x gleich sechzehn.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fazit]
#v(40pt)
#only("1-")[🎉 Die Lösung für $x^(1/2) = 4$ ist $x = 16$.]
#v(20pt)
#only("2-")[Die richtige Antwort ist d) 16.]

#only("1")[#voiceover("Abschließend ist die Lösung der Gleichung x hoch ein Halb gleich vier x gleich sechzehn.")]
#only("2")[#voiceover("Daher ist die richtige Antwort d) 16. Gut gemacht!")]
]