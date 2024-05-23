#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Lineare Abbildungen]
#v(40pt)
Was bewahrt eine lineare Abbildung?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) Vektoraddition]#only("2-")[#text(fill:red)[a) Vektoraddition]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) Skalare Multiplikation]#only("3-")[#text(fill:red)[b) Skalare Multiplikation]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-3")[c) Sowohl Vektoraddition als auch skalare Multiplikation]#only("4-")[#text(fill:green)[c) Sowohl Vektoraddition als auch skalare Multiplikation]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) Weder noch]#only("5-")[#text(fill:red)[d) Weder noch]]

#only("1")[#voiceover("Nicht ganz. Schauen wir uns die richtige Lösung an.")]
// Sehr kurz über a sprechen und warum es falsch ist
#only("2")[#voiceover("Option a) Vektoraddition ist teilweise richtig, aber nicht die vollständige Antwort. Eine lineare Abbildung bewahrt mehr als nur die Vektoraddition.")]
// Sehr kurz über b sprechen und warum es falsch ist
#only("3")[#voiceover("Option b) Skalare Multiplikation ist auch teilweise richtig, aber wiederum nicht die vollständige Antwort.")]
// Sehr kurz über c sprechen und warum es richtig ist
#only("4")[#voiceover("Option c) Sowohl Vektoraddition als auch skalare Multiplikation ist tatsächlich die richtige Wahl. Eine lineare Abbildung bewahrt beide Eigenschaften.")]
// Sehr kurz über d sprechen und warum es falsch ist
#only("5")[#voiceover("Option d) Weder noch ist eindeutig falsch, da wir gesehen haben, dass eine lineare Abbildung einige Eigenschaften bewahrt.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Erklärung]
#v(40pt)
#only("1-")[Lassen Sie uns verstehen, warum c) die richtige Antwort ist. 🤔]
#v(20pt)
#only("2-")[Eine lineare Abbildung $T: V \\to W$ bewahrt:]
#v(20pt)
#only("3-")[- Vektoraddition: $T(u + v) = T(u) + T(v)$ ➕]
#v(10pt)
#only("4-")[- Skalare Multiplikation: $T(c v) = c T(v)$ ✖]
#v(20pt)
#only("5-")[Dies sind die definierenden Eigenschaften einer linearen Abbildung. 📏]
#v(20pt)
#only("6-")[Wenn eine Abbildung beides bewahrt, ist sie linear. Wenn sie eines davon nicht bewahrt, ist sie nicht linear. 🧮]

#only("1")[#voiceover("Lassen Sie uns eine Schritt-für-Schritt-Erklärung durchgehen, warum Option c) Sowohl Vektoraddition als auch skalare Multiplikation die richtige Antwort ist.")]
#only("2")[#voiceover("Per Definition bewahrt eine lineare Abbildung T von V nach W zwei Schlüsseleigenschaften:")]
#only("3")[#voiceover("Erstens bewahrt sie die Vektoraddition. Das bedeutet, dass T von u plus v gleich T von u plus T von v ist, für beliebige Vektoren u und v in V.")]
#only("4")[#voiceover("Zweitens bewahrt sie die skalare Multiplikation. Das bedeutet, dass T von c mal v gleich c mal T von v ist, für beliebige Vektoren v in V und Skalare c.")]
#only("5")[#voiceover("Diese beiden Eigenschaften - die Bewahrung der Vektoraddition und der skalaren Multiplikation - sind die definierenden Merkmale einer linearen Abbildung.")]
#only("6")[#voiceover("Wenn eine Abbildung beide dieser Eigenschaften bewahrt, ist sie eine lineare Abbildung. Wenn sie eine dieser Eigenschaften nicht bewahrt, ist sie keine lineare Abbildung.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Eine lineare Abbildung bewahrt sowohl Vektoraddition als auch skalare Multiplikation. ✅]
#v(20pt)
#only("2-")[- $T(u + v) = T(u) + T(v)$ und $T(c v) = c T(v)$ 🔑]
#v(20pt)
#only("3-")[- Diese Eigenschaften definieren eine lineare Abbildung. 📐]
#v(20pt)
#only("4-")[Großartige Arbeit bei der Identifizierung der richtigen Antwort! 🌟]

#only("1")[#voiceover("Zusammenfassend bewahrt eine lineare Abbildung sowohl Vektoraddition als auch skalare Multiplikation.")]
#only("2")[#voiceover("In mathematischer Notation bedeutet dies, dass T von u plus v gleich T von u plus T von v ist, und T von c mal v gleich c mal T von v ist.")]
#only("3")[#voiceover("Diese beiden Eigenschaften sind die entscheidenden definierenden Merkmale einer linearen Abbildung.")]
#only("4")[#voiceover("Großartige Arbeit bei der Identifizierung der richtigen Antwort und dem Verständnis der Eigenschaften linearer Abbildungen!")]
]