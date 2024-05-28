#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Einkommenseffekt]
#v(40pt)
Der Einkommenseffekt zeigt Veränderungen im Konsum aufgrund einer Änderung des \_\_\_\_\_.
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie grün, weil sie korrekt ist.
#only("-1")[a) Realeinkommen]#only("2-")[#text(fill:green)[a) Realeinkommen]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie rot, weil sie falsch ist.
#only("-2")[b) Preis]#only("3-")[#text(fill:red)[b) Preis]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie rot, weil sie falsch ist.
#only("-3")[c) Nutzen]#only("4-")[#text(fill:red)[c) Nutzen]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie rot, weil sie falsch ist.
#only("-4")[d) Menge]#only("5-")[#text(fill:red)[d) Menge]]
#v(40pt)
#only("1")[#voiceover("Großartig! Das ist die richtige Antwort.")]
#only("2")[#voiceover("Der Einkommenseffekt zeigt tatsächlich Veränderungen im Konsum aufgrund einer Änderung des Realeinkommens.")]
#only("3")[#voiceover("Preis ist falsch, weil Preisänderungen der Auslöser für den Einkommenseffekt sind, nicht das, was der Einkommenseffekt selbst zeigt.")]
#only("4")[#voiceover("Nutzen ist ebenfalls falsch. Der Einkommenseffekt zeigt nicht direkt Veränderungen im Nutzen.")]
#only("5")[#voiceover("Und Menge ist auch falsch. Obwohl sich die Konsummengen aufgrund des Einkommenseffekts ändern können, zeigt der Einkommenseffekt selbst die Änderung des Realeinkommens.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Erklärung]
#v(40pt)
#only("1-")[1️⃣ Der Einkommenseffekt ist Teil der Hicks-Dekomposition.]
#v(20pt)
#only("2-")[2️⃣ Er isoliert den Effekt einer Änderung des Realeinkommens auf den Konsum.]
#v(20pt)
#only("3-")[3️⃣ Das Realeinkommen ändert sich, weil eine Preisänderung die Kaufkraft verändert.]
#v(20pt)
#only("4-")[4️⃣ Der Einkommenseffekt zeigt, wie diese Änderung des Realeinkommens den Konsum beeinflusst, wobei der Nutzen konstant gehalten wird.]
#v(20pt)
#only("5-")[5️⃣ Daher ist die richtige Antwort a) Realeinkommen. 🎉]

#only("1")[#voiceover("Lass uns das Schritt für Schritt durchgehen. Erstens, erinnere dich daran, dass der Einkommenseffekt Teil der Hicks-Dekomposition einer Preisänderung ist.")]
#only("2")[#voiceover("Die Rolle des Einkommenseffekts besteht darin, den Effekt einer Änderung des Realeinkommens auf den Konsum zu isolieren.")]
#only("3")[#voiceover("Warum ändert sich das Realeinkommen? Weil eine Preisänderung die Kaufkraft des Konsumenten verändert.")]
#only("4")[#voiceover("Der Einkommenseffekt erfasst, wie diese Änderung des Realeinkommens die Konsumentscheidungen des Konsumenten beeinflusst, während der Nutzen konstant gehalten wird.")]
#only("5")[#voiceover("Daher ist die richtige Antwort a) Realeinkommen. Der Einkommenseffekt zeigt Veränderungen im Konsum aufgrund einer Änderung des Realeinkommens.")]
]