#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Slutsky-Zerlegung]
#v(40pt)
#only("1-")[In welche Effekte zerlegt die Slutsky-Zerlegung die Wirkung einer Preisänderung?]
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

#only("1")[#voiceover("Ausgezeichnet, das ist die richtige Antwort!")]
// Sehr kurz über a sprechen und warum es korrekt ist
#only("2")[#voiceover("a) Substitutions- und Einkommenseffekte ist tatsächlich das, was die Slutsky-Zerlegung in Bezug auf die Wirkung einer Preisänderung betrachtet.")]
// Sehr kurz über b sprechen und warum es falsch ist
#only("3")[#voiceover("b) Angebots- und Nachfrageeffekte ist falsch. Obwohl Preisänderungen Angebot und Nachfrage beeinflussen, ist dies nicht das, was die Slutsky-Zerlegung speziell untersucht.")]
// Sehr kurz über c sprechen und warum es falsch ist
#only("4")[#voiceover("c) Elastizitäts- und Inelastizitätseffekte ist ebenfalls falsch. Elastizität misst, wie stark die nachgefragte Menge auf eine Preisänderung reagiert, aber das ist nicht der Fokus der Slutsky-Zerlegung.")]
// Sehr kurz über d sprechen und warum es falsch ist
#only("5")[#voiceover("Und d) Grenz- und Durchschnittseffekte ist auch falsch. Diese Begriffe beziehen sich darauf, wie zusätzliche Einheiten den Gesamtnutzen oder die Gesamtkosten beeinflussen, aber nicht auf Preisänderungen.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Slutsky-Zerlegung]
#v(40pt)
#only("1-")[Zerlegt die Wirkung einer Preisänderung in:]
#v(20pt)
#only("2-")[1️⃣ #text(weight: "bold")[Substitutionseffekt]]
#v(10pt)
#only("3-")[- Änderung des Konsums aufgrund von Änderungen der relativen Preise]
#only("4-")[- Bei konstantem Nutzen]
#v(20pt)
#only("5-")[2️⃣ #text(weight: "bold")[Einkommenseffekt]]
#v(10pt)
#only("6-")[- Änderung des Konsums aufgrund von Änderungen der Kaufkraft]
#only("7-")[- Resultierend aus der Preisänderung]

#only("1")[#voiceover("Lass uns aufschlüsseln, wie die Slutsky-Zerlegung funktioniert.")]
#only("2")[#voiceover("Zuerst identifiziert sie den Substitutionseffekt.")]
#only("3")[#voiceover("Dies ist die Änderung des Konsums, die aufgrund der Änderung der relativen Preise von Gütern auftritt.")]
#only("4")[#voiceover("Wichtig ist, dass dies bei konstantem Nutzen des Konsumenten betrachtet wird.")]
#only("5")[#voiceover("Zweitens identifiziert sie den Einkommenseffekt.")]
#only("6")[#voiceover("Dies ist die Änderung des Konsums, die aufgrund der Änderung der Kaufkraft des Konsumenten auftritt.")]
#only("7")[#voiceover("Diese Änderung der Kaufkraft ist eine Folge der Preisänderung.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Mathematische Darstellung]
#v(40pt)
#only("1-")[Slutsky-Gleichung:]
#v(20pt)
#only("2-")[$ dif x_1/dif p_1 = (dif x_1/dif p_1)_u + x_1 (dif x_1/dif I) $]
#v(20pt)
#only("3-")[Wo:]
#v(10pt)
#only("4-")[- $ dif x_1/dif p_1 $ ist der Gesamteffekt]
#only("5-")[- $ (dif x_1/dif p_1)_u $ ist der Substitutionseffekt]
#only("6-")[- $ x_1 (dif x_1/dif I) $ ist der Einkommenseffekt]

#only("1")[#voiceover("Die Slutsky-Zerlegung kann mathematisch durch die Slutsky-Gleichung dargestellt werden.")]
#only("2")[#voiceover("Die Gleichung besagt, dass der Gesamteffekt einer Preisänderung auf die nachgefragte Menge eines Gutes gleich dem Substitutionseffekt plus dem Einkommenseffekt ist.")]
#only("3")[#voiceover("In der Gleichung,")]
#only("4")[#voiceover("dif x 1 über dif p 1 stellt den Gesamteffekt dar,")]
#only("5")[#voiceover("der Term in Klammern stellt den Substitutionseffekt dar,")]
#only("6")[#voiceover("und x 1 multipliziert mit dif x 1 über dif I stellt den Einkommenseffekt dar.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[Slutsky-Zerlegung: 🔍]
#v(20pt)
#only("2-")[- Zerlegt die Wirkung einer Preisänderung in Substitutions- und Einkommenseffekte]
#v(10pt)
#only("3-")[- Substitutionseffekt: Änderung der relativen Preise, bei konstantem Nutzen]
#v(10pt)
#only("4-")[- Einkommenseffekt: Änderung der Kaufkraft aufgrund der Preisänderung]
#v(20pt)
#only("5-")[Mathematisch: $ dif x_1/dif p_1 = (dif x_1/dif p_1)_u + x_1 (dif x_1/dif I) $]

#only("1")[#voiceover("Zusammenfassend ist die Slutsky-Zerlegung ein Werkzeug, das")]
#only("2")[#voiceover("die Wirkung einer Preisänderung in den Substitutionseffekt und den Einkommenseffekt zerlegt.")]
#only("3")[#voiceover("Der Substitutionseffekt erfasst die Änderung des Konsums aufgrund einer Änderung der relativen Preise, bei konstantem Nutzen,")]
#only("4")[#voiceover("während der Einkommenseffekt die Änderung des Konsums aufgrund einer Änderung der Kaufkraft infolge der Preisänderung erfasst.")]
#only("5")[#voiceover("Diese Zerlegung wird mathematisch durch die Slutsky-Gleichung dargestellt.")]
]