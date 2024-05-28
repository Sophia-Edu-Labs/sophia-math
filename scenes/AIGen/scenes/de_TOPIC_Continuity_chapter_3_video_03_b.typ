#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Stetigkeitsprüfung]
#v(40pt)
#only("1-")[Ist $f(x) = x^2$ stetig bei $x = 2$?]
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[a) ja]#only("2-")[#text(fill:green)[a) ja]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) nein]#only("3-")[#text(fill:red)[b) nein]]
#v(40pt)
#only("1")[#voiceover("Das war leider nicht korrekt. Lass uns sehen, warum die richtige Antwort anders lautet.")]
#only("2")[#voiceover("Die Funktion f von x gleich x Quadrat ist tatsächlich stetig bei x gleich 2. Hier ist der Grund:")]
#only("3")[#voiceover("Die Antwort 'nein' ist falsch. Die Funktion f von x gleich x Quadrat ist überall stetig, einschließlich bei x gleich 2.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[Damit $f(x) = x^2$ stetig bei $x = 2$ ist:]
#v(20pt)
#only("2-")[1. $lim_(x->2) f(x)$ muss existieren]
#v(10pt)
#only("3-")[2. $lim_(x->2) f(x) = f(2)$]
#v(40pt)
#only("4-")[Lass uns jede Bedingung überprüfen:]
#v(20pt)
#only("5-")[1. $lim_(x->2) x^2 = 2^2 = 4$ ✅]
#v(10pt)
#only("6-")[2. $f(2) = 2^2 = 4$ ✅]
#v(40pt)
#only("7-")[Da beide Bedingungen erfüllt sind, ist $f(x) = x^2$ stetig bei $x = 2$. 🎉]

#only("1")[#voiceover("Damit eine Funktion an einem Punkt stetig ist, müssen zwei Bedingungen erfüllt sein:")]
#only("2")[#voiceover("Erstens muss der Grenzwert der Funktion, wenn x sich dem Punkt nähert, existieren.")]
#only("3")[#voiceover("Zweitens muss dieser Grenzwert gleich dem Funktionswert an diesem Punkt sein.")]
#only("4")[#voiceover("Lass uns jede Bedingung für unsere Funktion f von x gleich x Quadrat bei x gleich 2 überprüfen.")]
#only("5")[#voiceover("Erstens ist der Grenzwert von x Quadrat, wenn x sich 2 nähert, gleich 2 Quadrat, also 4. Der Grenzwert existiert also.")]
#only("6")[#voiceover("Zweitens ist der Funktionswert bei x gleich 2, f von 2, ebenfalls gleich 2 Quadrat, also 4.")]
#only("7")[#voiceover("Da beide Bedingungen erfüllt sind, können wir schließen, dass die Funktion f von x gleich x Quadrat tatsächlich stetig bei x gleich 2 ist.")]
]