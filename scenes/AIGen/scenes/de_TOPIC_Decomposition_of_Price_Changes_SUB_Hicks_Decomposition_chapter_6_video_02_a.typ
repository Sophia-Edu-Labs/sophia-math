#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Großartige Arbeit! 🎉]
#v(40pt)
Die richtige Antwort ist:
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[a) Konsumentenverhalten]#only("2-")[#text(fill:green)[a) Konsumentenverhalten]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) Unternehmensproduktion]#only("3-")[#text(fill:red)[b) Unternehmensproduktion]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) Marktausgleich]#only("4-")[#text(fill:red)[c) Marktausgleich]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) Regierungspolitik]#only("5-")[#text(fill:red)[d) Regierungspolitik]]

#only("1")[#voiceover("Großartige Arbeit! Du hast die richtige Antwort. Lass uns sehen, warum das so ist.")]
#only("2")[#voiceover("Die Hicks-Dekomposition ist tatsächlich am nützlichsten zur Analyse des Konsumentenverhaltens. Sie ermöglicht es uns zu verstehen, wie Konsumenten auf Preisänderungen reagieren, indem sie die Substitutions- und Einkommenseffekte trennt.")]
#only("3")[#voiceover("Die Unternehmensproduktion, obwohl ein wichtiges Thema in der Wirtschaft, ist nicht der primäre Fokus der Hicks-Dekomposition.")]
#only("4")[#voiceover("Ähnlich wird der Marktausgleich, der die Interaktion von Angebot und Nachfrage betrifft, nicht direkt mit der Hicks-Dekomposition analysiert.")]
#only("5")[#voiceover("Und die Regierungspolitik, obwohl sie das Konsumentenverhalten beeinflussen kann, ist nicht das Hauptthema der Hicks-Dekompositionsanalyse.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[1. Die Hicks-Dekomposition trennt die Wirkung einer Preisänderung in:]
#v(20pt)
#only("2-")[   - Substitutionseffekt 🔄]
#only("3-")[   - Einkommenseffekt 💰]
#v(40pt)
#only("4-")[2. Dies hilft zu verstehen, wie Konsumenten auf Preisänderungen reagieren.]
#v(40pt)
#only("5-")[3. Daher ist sie am nützlichsten zur Analyse des Konsumentenverhaltens. 🛒]

#only("1")[#voiceover("Nun, lass uns die Lösung Schritt für Schritt durchgehen.")]
#only("2")[#voiceover("Erstens, erinnere dich daran, dass die Hicks-Dekomposition die Wirkung einer Preisänderung in den Substitutionseffekt...")]
#only("3")[#voiceover("...und den Einkommenseffekt trennt. Der Substitutionseffekt zeigt, wie sich der Konsum ändert, wenn sich die Preise ändern, wobei der Nutzen konstant bleibt. Der Einkommenseffekt zeigt, wie sich der Konsum aufgrund der Änderung der Kaufkraft ändert.")]
#only("4")[#voiceover("Durch die Trennung dieser Effekte hilft uns die Hicks-Dekomposition zu verstehen, wie Konsumenten auf Preisänderungen reagieren.")]
#only("5")[#voiceover("Daher ist die Hicks-Dekomposition am nützlichsten zur Analyse des Konsumentenverhaltens. Sie liefert Einblicke, wie Konsumenten Entscheidungen treffen und wie sich ihre Konsummuster als Reaktion auf Preisänderungen ändern.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wichtige Erkenntnisse 🔑]
#v(40pt)
#only("1-")[- Die Hicks-Dekomposition ist ein Werkzeug zur Analyse des Konsumentenverhaltens.]
#v(20pt)
#only("2-")[- Sie trennt Preiseffekte in Substitutions- und Einkommenseffekte.]
#v(20pt)
#only("3-")[- Dies hilft zu verstehen, wie Konsumenten auf Preisänderungen reagieren.]
#v(20pt)
#only("4-")[- Sie liefert Einblicke in Konsumentscheidungen und Nachfrage.]

#only("1")[#voiceover("Um die wichtigsten Punkte zusammenzufassen...")]
#only("2")[#voiceover("Die Hicks-Dekomposition ist ein mächtiges Werkzeug zur Analyse des Konsumentenverhaltens. Sie trennt die Effekte von Preisänderungen in Substitutions- und Einkommenseffekte.")]
#only("3")[#voiceover("Diese Trennung ermöglicht es uns zu verstehen, wie Konsumenten auf Preisänderungen reagieren, indem wir sehen, wie sie zwischen Gütern substituieren und wie sich ihre Kaufkraft ändert.")]
#only("4")[#voiceover("Letztendlich liefert die Hicks-Dekomposition wertvolle Einblicke in Konsumentscheidungen und Nachfrage, was sie zu einem grundlegenden Konzept in der Konsumententheorie und Mikroökonomie macht.")]
]