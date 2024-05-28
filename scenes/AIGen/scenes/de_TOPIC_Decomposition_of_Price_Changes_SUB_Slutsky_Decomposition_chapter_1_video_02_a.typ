#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Substitutionseffekt]
#v(40pt)
#only("1-")[Der Substitutionseffekt tritt auf, wenn eine Preisänderung ein Gut \_\_\_\_\_ macht.]
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) absolut billiger]#only("2-")[#text(fill:red)[a) absolut billiger]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-2")[b) relativ billiger oder teurer]#only("3-")[#text(fill:green)[b) relativ billiger oder teurer]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) absolut teurer]#only("4-")[#text(fill:red)[c) absolut teurer]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) keine der oben genannten]#only("5-")[#text(fill:red)[d) keine der oben genannten]]
#only("1")[#voiceover("Das war leider nicht korrekt. Die richtige Antwort ist...")]
#only("2")[#voiceover("a) absolut billiger ist falsch. Der Substitutionseffekt bezieht sich nicht auf absolute Preisänderungen.")]
#only("3")[#voiceover("b) relativ billiger oder teurer. Das ist die richtige Antwort. Der Substitutionseffekt tritt auf, wenn eine Preisänderung die relativen Preise von Gütern verändert.")]
#only("4")[#voiceover("c) absolut teurer ist ebenfalls falsch aus dem gleichen Grund wie a). Der Substitutionseffekt bezieht sich auf relative, nicht absolute Preisänderungen.")]
#only("5")[#voiceover("Und d) keine der oben genannten ist falsch, weil b) die richtige Antwort ist.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Den Substitutionseffekt verstehen]
#v(40pt)
#only("1-")[- Tritt auf, wenn sich relative Preise ändern 💰]
#v(20pt)
#only("2-")[- Führt zu einer Änderung des Konsums 🛒]
#v(20pt)
#only("3-")[- Hält den Nutzen konstant 📈]
#v(20pt)
#only("4-")[- Teil der Slutsky-Zerlegung 🧩]

#only("1")[#voiceover("Der Substitutionseffekt tritt auf, wenn eine Preisänderung ein Gut relativ billiger oder teurer im Vergleich zu anderen Gütern macht.")]
#only("2")[#voiceover("Diese Änderung der relativen Preise führt dazu, dass die Konsumenten ihre Konsummuster ändern und das relativ billigere Gut dem relativ teureren vorziehen.")]
#only("3")[#voiceover("Wichtig ist, dass der Substitutionseffekt analysiert wird, während der Nutzen des Konsumenten konstant gehalten wird.")]
#only("4")[#voiceover("Der Substitutionseffekt ist ein Teil der Slutsky-Zerlegung, die den Effekt einer Preisänderung in Substitutions- und Einkommenseffekte aufteilt.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[Betrachte zwei Güter, 🍎 Äpfel und 🍊 Orangen.]
#v(20pt)
#only("2-")[Wenn der Preis von 🍎 relativ zu 🍊 sinkt:]
- Konsumenten werden mehr 🍎 kaufen
- Konsumenten werden weniger 🍊 kaufen
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse]
#v(40pt)
#only("1-")[- Der Substitutionseffekt bezieht sich auf #text(weight: "bold")[relative] Preisänderungen 📊]
#v(20pt)
#only("2-")[- Führt zu Änderungen im Konsum 🛍️]
#v(20pt)
#only("3-")[- Wird analysiert, während der Nutzen konstant gehalten wird 😊]
#v(20pt)
#only("4-")[- Teil der Slutsky-Zerlegung, zusammen mit dem Einkommenseffekt 💰]

#only("1")[#voiceover("Denke daran, dass der Schlüssel zum Verständnis des Substitutionseffekts darin liegt, dass es um relative Preisänderungen geht, nicht um absolute.")]
#only("2")[#voiceover("Diese relativen Preisänderungen führen zu Änderungen im Konsummuster, wobei Konsumenten das relativ billigere Gut dem relativ teureren vorziehen.")]
#only("3")[#voiceover("Bei der Analyse des Substitutionseffekts halten wir den Nutzen des Konsumenten konstant.")]
#only("4")[#voiceover("Und schließlich ist der Substitutionseffekt ein Teil der Slutsky-Zerlegung, zusammen mit dem Einkommenseffekt. Zusammen trennen sie den Gesamteffekt einer Preisänderung auf den Konsum.")]
]