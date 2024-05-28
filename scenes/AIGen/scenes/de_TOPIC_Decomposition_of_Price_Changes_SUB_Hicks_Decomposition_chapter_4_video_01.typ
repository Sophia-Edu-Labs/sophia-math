#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Hicks-Dekomposition]
#v(40pt)
#only("1-")[- Trennt den Effekt einer Preisänderung in:]
#v(20pt)
#only("2-")[  - Substitutionseffekt 🔄]
#v(20pt)
#only("3-")[  - Einkommenseffekt 💰]
#v(40pt)
#only("4-")[- Verwendet kompensierte Nachfragefunktionen]
#only("1")[
#voiceover("Die Hicks-Dekomposition ist eine Methode, um den Effekt einer Preisänderung in zwei Teile zu trennen: den Substitutionseffekt und den Einkommenseffekt.")
]
#only("2")[
#voiceover("Der Substitutionseffekt erfasst, wie sich der Konsum ändert, wenn sich der Preis ändert, wobei der Nutzen konstant bleibt.")
]
#only("3")[
#voiceover("Der Einkommenseffekt zeigt, wie sich der Konsum aufgrund einer Änderung des realen Einkommens nach Anpassung an den Substitutionseffekt ändert.")
]
#only("4")[
#voiceover("Um dies mathematisch darzustellen, verwendet die Hicks-Dekomposition kompensierte Nachfragefunktionen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Kompensierte Nachfragefunktion]
#v(40pt)
#only("1-")[- Bezeichnet als $h_i(p, u)$]
#v(20pt)
#only("2-")[  - $p$: Preisvektor 📈]
#v(20pt)
#only("3-")[  - $u$: Nutzenniveau 😊]
#v(40pt)
#only("4-")[- Gibt die Nachfrage zu Preisen $p$ an, die den Nutzen $u$ ergeben]
#only("1")[
#voiceover("Die kompensierte Nachfragefunktion für Gut i wird als h Index i von p Komma u bezeichnet.")
]
#only("2")[
#voiceover("Hierbei steht p für den Preisvektor, der die Preise aller Güter umfasst.")
]
#only("3")[
#voiceover("Und u steht für das Nutzenniveau, das konstant gehalten wird.")
]
#only("4")[
#voiceover("Die kompensierte Nachfragefunktion gibt die Nachfrage nach Gut i zu Preisen p an, die das gleiche Nutzenniveau u ergeben.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Hicks-Dekompositionsformel]
#v(40pt)
#only("1-")[$ dif x_i = (dif h_i)/(dif p_j) dif p_j + (dif x_i)/(dif I) (x_j dif p_j) $]
#v(20pt)
#only("2-")[  - $x_i$: Nachfrage nach Gut $i$ 🛒]
#v(20pt)
#only("3-")[  - $p_j$: Preis von Gut $j$ 💲]
#v(20pt)
#only("4-")[  - $I$: Einkommen 💰]
#only("1")[
#voiceover("Die Hicks-Dekompositionsformel besagt, dass die Änderung der Nachfrage nach Gut i gleich der partiellen Ableitung der kompensierten Nachfragefunktion bezüglich des Preises von Gut j, multipliziert mit der Änderung des Preises von Gut j, plus der partiellen Ableitung der Nachfrage nach Gut i bezüglich des Einkommens, multipliziert mit der Einkommensänderung aufgrund der Preisänderung ist.")
]
#only("2")[
#voiceover("Hierbei steht x Index i für die Nachfrage nach Gut i.")
]
#only("3")[
#voiceover("p Index j steht für den Preis von Gut j.")
]
#only("4")[
#voiceover("Und I steht für das Einkommen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Die Hicks-Dekomposition trennt den Preiseffekt in Substitutions- und Einkommenseffekte 🔍]
#v(20pt)
#only("2-")[- Verwendet kompensierte Nachfragefunktionen $h_i(p, u)$ 📈]
#v(20pt)
#only("3-")[- Formel: $ dif x_i = (dif h_i)/(dif p_j) dif p_j + (dif x_i)/(dif I) (x_j dif p_j) $]
#only("1")[
#voiceover("Zusammenfassend trennt die Hicks-Dekomposition den Effekt einer Preisänderung in Substitutions- und Einkommenseffekte.")
]
#only("2")[
#voiceover("Sie verwendet kompensierte Nachfragefunktionen, bezeichnet als h Index i von p Komma u, die die Nachfrage zu Preisen angeben, die ein konstantes Nutzenniveau ergeben.")
]
#only("3")[
#voiceover("Die Hicks-Dekompositionsformel zeigt, dass die Änderung der Nachfrage nach einem Gut die Summe aus dem Substitutionseffekt, erfasst durch die Änderung der kompensierten Nachfrage, und dem Einkommenseffekt, erfasst durch die Änderung der Nachfrage aufgrund der Änderung des realen Einkommens, ist.")
]
]