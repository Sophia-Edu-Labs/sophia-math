#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Substitutionseffekt]
#v(40pt)
Wenn der Preis des Gutes X sinkt und die insgesamt nachgefragte Menge steigt, wird der Substitutionseffekt \_\_\_\_\_.
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie grün, weil sie korrekt ist.
#only("-1")[a) immer positiv sein]#only("2-")[#text(fill:green)[a) immer positiv sein]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie rot, weil sie falsch ist.
#only("-2")[b) immer negativ sein]#only("3-")[#text(fill:red)[b) immer negativ sein]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie rot, weil sie falsch ist.
#only("-3")[c) null sein]#only("4-")[#text(fill:red)[c) null sein]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie rot, weil sie falsch ist.
#only("-4")[d) undefiniert sein]#only("5-")[#text(fill:red)[d) undefiniert sein]]
#v(40pt)

#only("1")[#voiceover("Leider nicht ganz richtig. Hier ist die Erklärung.")]
// Sehr kurz über a sprechen und warum es korrekt ist
#only("2")[#voiceover("Der Substitutionseffekt wird immer positiv sein, wenn der Preis sinkt und die nachgefragte Menge steigt. Lass uns sehen, warum...")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Substitutionseffekt]
#v(40pt)
#only("1-")[- Tritt auf, wenn sich relative Preise ändern 💸]
#v(20pt)
#only("2-")[- Bei konstantem Nutzen 📊]
#v(20pt) 
#only("3-")[- Niedrigerer Preis $arrow$ relativ günstiger $arrow$ ↑ nachgefragte Menge]
#v(20pt)
#only("4-")[- ∴ Substitutionseffekt ist positiv, wenn Preis ↓ und Menge ↑]

#only("1")[#voiceover("Der Substitutionseffekt tritt auf, wenn sich die relativen Preise von Gütern ändern, was dazu führt, dass die Verbraucher auf das relativ günstigere Gut umsteigen.")]
#only("2")[#voiceover("Wichtig ist, dass der Substitutionseffekt gemessen wird, während der Nutzen des Verbrauchers konstant gehalten wird.")]
#only("3")[#voiceover("Wenn der Preis eines Gutes sinkt, wird es im Vergleich zu anderen Gütern relativ günstiger. Dies führt zu einer Erhöhung der nachgefragten Menge dieses Gutes, da die Verbraucher darauf umsteigen.")]
#only("4")[#voiceover("Daher ist der Substitutionseffekt immer positiv, wenn der Preis sinkt und die nachgefragte Menge steigt.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Warum andere Optionen falsch sind]
#v(40pt)
#only("1-")[b) immer negativ sein ❌]
#v(20pt)
#only("2-")[- Der Substitutionseffekt ist positiv, wenn der Preis ↓ und die Menge ↑]
#v(40pt)
#only("3-")[c) null sein ❌]
#v(20pt)
#only("4-")[- Null Substitutionseffekt bedeutet keine Änderung der relativen Preise]
#v(40pt) 
#only("5-")[d) undefiniert sein ❌]
#v(20pt)
#only("6-")[- Der Substitutionseffekt ist immer definiert, wenn sich Preise und Mengen ändern]

#only("1")[#voiceover("Option b, 'immer negativ sein', ist falsch, weil der Substitutionseffekt positiv, nicht negativ ist, wenn der Preis sinkt und die Menge steigt.")]
#only("2")[#voiceover("Wie wir gesehen haben, ist der Substitutionseffekt in diesem Szenario positiv.")]
#only("3")[#voiceover("Option c, 'null sein', ist ebenfalls falsch.")]
#only("4")[#voiceover("Ein null Substitutionseffekt würde bedeuten, dass es keine Änderung der relativen Preise gibt und somit keine Substitution zwischen Gütern. Aber uns wurde gesagt, dass der Preis des Gutes X sinkt, also gibt es eine Änderung der relativen Preise.")]
#only("5")[#voiceover("Schließlich ist auch Option d, 'undefiniert sein', falsch.")]
#only("6")[#voiceover("Der Substitutionseffekt ist immer definiert, wenn es Änderungen bei Preisen und Mengen gibt. Es ist ein grundlegendes Konzept in der Konsumtheorie.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Substitutionseffekt: Änderung des Konsums aufgrund einer Änderung der relativen Preise 🔄]
#v(20pt)
#only("2-")[- Bei konstantem Nutzen 📊]
#v(20pt)
#only("3-")[- Preis ↓ $arrow$ relativ günstiger $arrow$ Menge ↑ $arrow$ positiver Substitutionseffekt ✅]
#v(20pt)
#only("4-")[Großartige Arbeit bei dieser Frage! 🌟 Mach weiter so. 💪]

#only("1")[#voiceover("Zusammenfassend ist der Substitutionseffekt die Änderung des Konsums, die sich aus einer Änderung der relativen Preise von Gütern ergibt, bei konstantem Nutzen.")]
#only("2")[#voiceover("Denke daran, dass wir den Substitutionseffekt messen, indem wir das Zufriedenheitsniveau des Verbrauchers unverändert lassen.")]
#only("3")[#voiceover("Wenn der Preis eines Gutes sinkt, wird es relativ günstiger, was zu einer Erhöhung der nachgefragten Menge führt. Das bedeutet, der Substitutionseffekt ist positiv.")]
#only("4")[#voiceover("Fantastische Arbeit bei dieser Frage! Du hast ein solides Verständnis des Substitutionseffekts gezeigt. Mach weiter so in deinen Wirtschaftsstudien!")]
]