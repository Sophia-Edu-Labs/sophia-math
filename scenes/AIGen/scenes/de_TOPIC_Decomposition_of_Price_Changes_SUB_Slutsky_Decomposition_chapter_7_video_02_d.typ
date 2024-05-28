#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Anwendung der Slutsky-Zerlegung]
#v(40pt)
Die Slutsky-Zerlegung kann verwendet werden, um _______ zu analysieren.
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[a) Konsumentenverhalten]#only("2-")[#text(fill:green)[a) Konsumentenverhalten]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) Produzentenverhalten]#only("3-")[#text(fill:red)[b) Produzentenverhalten]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) Marktequilibrium]#only("4-")[#text(fill:red)[c) Marktequilibrium]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) Regierungspolitiken]#only("5-")[#text(fill:red)[d) Regierungspolitiken]]
#v(40pt)

#only("1")[#voiceover("Das war leider nicht korrekt. Schau dir das Video an, um die richtige Antwort zu erfahren. 📽️")]
// Sehr kurz über a sprechen und warum es korrekt ist
#only("2")[#voiceover("a) Konsumentenverhalten ist die richtige Antwort. Die Slutsky-Zerlegung wird tatsächlich verwendet, um zu analysieren, wie Konsumenten auf Preisänderungen reagieren, indem die Effekte in Substitutions- und Einkommenseffekte unterteilt werden.")]
// Sehr kurz über b sprechen und warum es falsch ist
#only("3")[#voiceover("b) Produzentenverhalten ist falsch. Obwohl das Verhalten der Produzenten ein wichtiges wirtschaftliches Konzept ist, konzentriert sich die Slutsky-Zerlegung speziell auf das Verhalten der Konsumenten.")]
// Sehr kurz über c sprechen und warum es falsch ist
#only("4")[#voiceover("c) Marktequilibrium ist ebenfalls falsch. Das Marktequilibrium wird durch das Zusammenspiel von Angebot und Nachfrage bestimmt, aber die Slutsky-Zerlegung betrachtet die Nachfrageseite, insbesondere das Verhalten der Konsumenten.")]
// Sehr kurz über d sprechen und warum es falsch ist
#only("5")[#voiceover("Und d) Regierungspolitiken ist ebenfalls falsch. Regierungspolitiken können das Verhalten der Konsumenten beeinflussen, aber die Slutsky-Zerlegung ist ein Werkzeug, um dieses Verhalten zu analysieren, nicht die Politik selbst.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[1. Die Slutsky-Zerlegung trennt den Effekt einer Preisänderung in:]
#v(20pt)
#only("2-")[   - Substitutionseffekt 🔄]
#only("3-")[   - Einkommenseffekt 💰]
#v(40pt)
#only("4-")[2. Sie wird verwendet, um zu analysieren, wie Konsumenten auf Preisänderungen reagieren. 🛒]
#v(40pt)
#only("5-")[3. Daher ist die Slutsky-Zerlegung ein Werkzeug zur Analyse des Konsumentenverhaltens. 🧑‍🤝‍🧑]

#only("1")[#voiceover("Lass uns das Schritt für Schritt durchgehen.")]
#only("2")[#voiceover("Erstens, erinnere Dich daran, dass die Slutsky-Zerlegung den Effekt einer Preisänderung in den Substitutionseffekt...")]
#only("3")[#voiceover("...und den Einkommenseffekt trennt.")]
#only("4")[#voiceover("Ihr Zweck ist es zu analysieren, wie Konsumenten auf Preisänderungen reagieren. Wenn sich Preise ändern, können Konsumenten Güter substituieren oder ihren Konsum basierend auf ihrem Einkommen ändern.")]
#only("5")[#voiceover("Daher ist die Slutsky-Zerlegung ein Werkzeug, das speziell zur Analyse des Konsumentenverhaltens entwickelt wurde. Es hilft uns zu verstehen, wie und warum Konsumenten die Entscheidungen treffen, die sie bei Preisänderungen treffen.")]
]