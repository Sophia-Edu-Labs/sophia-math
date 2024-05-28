#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Stetigkeit]
#v(40pt)
Wann ist eine Funktion an einem Punkt stetig?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[a) Wenn der Grenzwert der Funktion, wenn $x$ sich dem Punkt nähert, gleich dem Funktionswert an diesem Punkt ist]#only("2-")[#text(fill:green)[a) Wenn der Grenzwert der Funktion, wenn $x$ sich dem Punkt nähert, gleich dem Funktionswert an diesem Punkt ist]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) Wenn die Funktion an diesem Punkt differenzierbar ist]#only("3-")[#text(fill:red)[b) Wenn die Funktion an diesem Punkt differenzierbar ist]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) Wenn die Funktion an diesem Punkt integrierbar ist]#only("4-")[#text(fill:red)[c) Wenn die Funktion an diesem Punkt integrierbar ist]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) Wenn die Funktion an diesem Punkt null ist]#only("5-")[#text(fill:red)[d) Wenn die Funktion an diesem Punkt null ist]]
#v(40pt)

#only("1")[#voiceover("Leider war das nicht die richtige Antwort.")]
// Sehr kurz über a sprechen und warum es korrekt ist
#only("2")[#voiceover("Option a ist in der Tat die korrekte Definition der Stetigkeit an einem Punkt. Eine Funktion $f$ ist an einem Punkt $c$ stetig, wenn der Grenzwert von $f(x)$, wenn $x$ sich $c$ nähert, gleich $f(c)$ ist.")]
// Sehr kurz über b sprechen und warum es falsch ist
#only("3")[#voiceover("Option b ist falsch. Differenzierbarkeit an einem Punkt impliziert Stetigkeit an diesem Punkt, aber das Gegenteil ist nicht der Fall. Eine Funktion kann an einem Punkt stetig sein, ohne dort differenzierbar zu sein.")]
// Sehr kurz über c sprechen und warum es falsch ist
#only("4")[#voiceover("Option c ist ebenfalls falsch. Integrierbarkeit ist eine globale Eigenschaft einer Funktion über ein Intervall, nicht eine lokale Eigenschaft an einem Punkt. Eine Funktion kann an einem Punkt stetig sein, ohne über ein Intervall, das diesen Punkt enthält, integrierbar zu sein.")]
// Sehr kurz über d sprechen und warum es falsch ist
#only("5")[#voiceover("Und Option d ist ebenfalls falsch. Eine Funktion muss an einem Punkt nicht null sein, um dort stetig zu sein. Sie muss nur einen Grenzwert an diesem Punkt haben, der ihrem Wert an diesem Punkt entspricht.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Stetigkeitsbedingungen]
#v(40pt)
Damit eine Funktion $f$ an einem Punkt $c$ stetig ist:
#v(20pt)
#only("1-")[1. $f(c)$ muss definiert sein]
#only("2-")[2. $lim_(x -> c) f(x)$ muss existieren]
#only("3-")[3. $lim_(x -> c) f(x) = f(c)$]

#only("1")[#voiceover("Lass uns das Schritt für Schritt aufschlüsseln. Damit eine Funktion $f$ an einem Punkt $c$ stetig ist, müssen drei Bedingungen erfüllt sein.")]
#only("2")[#voiceover("Erstens muss $f(c)$ definiert sein. Das heißt, die Funktion muss an dem Punkt $c$ einen Wert haben.")]
#only("3")[#voiceover("Zweitens muss der Grenzwert von $f(x)$, wenn $x$ sich $c$ nähert, existieren. Das bedeutet, dass die Funktion einen einzelnen Wert annehmen muss, wenn wir uns von beiden Seiten $c$ nähern.")]
#only("4")[#voiceover("Und drittens muss der Grenzwert von $f(x)$, wenn $x$ sich $c$ nähert, gleich $f(c)$ sein. Mit anderen Worten, der Wert, dem die Funktion näher kommt, wenn wir uns $c$ nähern, muss derselbe sein wie der Funktionswert an $c$.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
Betrachten wir die Funktion $f(x) = x^2$.
#v(20pt)
#only("1-")[Ist $f$ stetig bei $x = 1$? 🤔]
#v(20pt)
#only("2-")[1. $f(1) = 1^2 = 1$, also ist $f(1)$ definiert ✅]
#only("3-")[2. $lim_(x -> 1) x^2 = 1$, also existiert der Grenzwert ✅]
#only("4-")[3. $lim_(x -> 1) x^2 = f(1) = 1$, also sind sie gleich ✅]
#v(20pt)
#only("5-")[Daher ist $f(x) = x^2$ stetig bei $x = 1$. 🎉]

#only("1")[#voiceover("Nun lass uns diese Bedingungen auf ein Beispiel anwenden. Betrachten wir die Funktion $f(x) = x^2$. Ist $f$ stetig bei $x = 1$?")]
#only("2")[#voiceover("Zuerst prüfen wir, ob $f(1)$ definiert ist. $f(1) = 1^2 = 1$, also ist $f(1)$ tatsächlich definiert.")]
#only("3")[#voiceover("Als nächstes prüfen wir, ob der Grenzwert von $f(x)$, wenn $x$ sich 1 nähert, existiert. Mithilfe der Eigenschaften von Grenzwerten können wir berechnen, dass dieser Grenzwert gleich 1 ist. Der Grenzwert existiert also.")]
#only("4")[#voiceover("Schließlich prüfen wir, ob der Grenzwert von $f(x)$, wenn $x$ sich 1 nähert, gleich $f(1)$ ist. Wir haben gerade festgestellt, dass beide Werte 1 sind, also sind sie gleich.")]
#only("5")[#voiceover("Da alle drei Bedingungen erfüllt sind, können wir schließen, dass $f(x) = x^2$ bei $x = 1$ stetig ist. Tatsächlich ist $f(x) = x^2$ bei jeder reellen Zahl stetig, aber das ist ein Thema für ein anderes Mal.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
- Stetigkeit an einem Punkt erfordert:
  1. Funktionswert am Punkt definiert
  2. Grenzwert existiert am Punkt
  3. Grenzwert gleich Funktionswert am Punkt
- Beispiel: $f(x) = x^2$ ist stetig bei $x = 1$

#only("1")[#voiceover("Zusammenfassend muss für eine Funktion, um an einem Punkt stetig zu sein, Folgendes zutreffen:")]
#only("2")[#voiceover("Der Funktionswert muss an dem Punkt definiert sein, der Grenzwert muss an dem Punkt existieren, und der Grenzwert muss dem Funktionswert an dem Punkt entsprechen.")]
#only("3")[#voiceover("Wir haben ein Beispiel dafür mit der Funktion $f(x) = x^2$ gesehen, die wir gezeigt haben, dass sie bei $x = 1$ stetig ist.")]
#only("4")[#voiceover("Das Verständnis der Stetigkeit ist in der Analysis und im Kalkül von entscheidender Bedeutung. Es ist eine grundlegende Eigenschaft, die es uns ermöglicht, das Verhalten von Funktionen zu untersuchen und mächtige Werkzeuge wie den Zwischenwertsatz und den Mittelwertsatz anzuwenden. Mach weiter so!")]
]