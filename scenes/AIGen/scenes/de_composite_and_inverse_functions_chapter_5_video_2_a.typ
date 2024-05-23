#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Überprüfung von Umkehrfunktionen]
#v(40pt)
Wenn $f(x)$ und $g(x)$ Umkehrfunktionen sind, was sollten $f(g(x))$ und $g(f(x))$ ergeben?
#v(40pt)
#only("-1")[a) $f(x)$]#only("2-")[#text(fill:red)[a) $f(x)$]]
#v(10pt)
#only("-2")[b) $g(x)$]#only("3-")[#text(fill:red)[b) $g(x)$]]
#v(10pt)
#only("-3")[c) $x$]#only("4-")[#text(fill:green)[c) $x$]]
#v(10pt)
#only("-4")[d) $0$]#only("5-")[#text(fill:red)[d) $0$]]
#only("1")[#voiceover("Nicht ganz. Schauen wir uns die richtige Lösung an.")]
#only("2")[#voiceover("Option a) $f(x)$ ist falsch. Wenn $f(x)$ und $g(x)$ Umkehrfunktionen sind, sollte ihre Zusammensetzung nicht eine der ursprünglichen Funktionen ergeben.")]
#only("3")[#voiceover("Option b) $g(x)$ ist aus dem gleichen Grund ebenfalls falsch. Die Zusammensetzung von Umkehrfunktionen ergibt nicht eine der ursprünglichen Funktionen.")]
#only("4")[#voiceover("Option c) $x$ ist richtig! Wenn man eine Funktion mit ihrer Umkehrfunktion zusammensetzt, erhält man die Identitätsfunktion, die einfach $x$ ist.")]
#only("5")[#voiceover("Option d) $0$ ist falsch. Die Zusammensetzung einer Funktion mit ihrer Umkehrfunktion ergibt keinen konstanten Wert wie 0.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
Verstehen wir, warum $f(g(x)) = g(f(x)) = x$ gilt, wenn $f$ und $g$ Umkehrfunktionen sind.
#v(40pt)
#only("1-")[Schritt 1: Betrachten Sie beliebige Elemente 🔍]
#v(10pt)
#only("2-")[- Sei $a$ ein Element im Definitionsbereich von $f$.]
#only("3-")[- Sei $b$ ein Element im Definitionsbereich von $g$.]
#only("4-")[- Angenommen, $f(a) = b$ und $g(b) = a$.]
#v(40pt)
#only("5-")[Schritt 2: Funktionen zusammensetzen 🧩]
#v(10pt)
#only("6-")[- $f(g(b)) = f(a)$ (da $g(b) = a$)]
#only("7-")[- $f(a) = b$ (gegeben)]
#only("8-")[- Also, $f(g(b)) = b$]
#only("1")[#voiceover("Lassen Sie uns eine Schritt-für-Schritt-Lösung durchgehen, um zu verstehen, warum die Zusammensetzung einer Funktion mit ihrer Umkehrfunktion die Identitätsfunktion ergibt.")]
#only("2")[#voiceover("Zuerst betrachten wir beliebige Elemente. Sei $a$ ein Element im Definitionsbereich von $f$.")]
#only("3")[#voiceover("Und sei $b$ ein Element im Definitionsbereich von $g$.")]
#only("4")[#voiceover("Wir nehmen an, dass $f(a)$ gleich $b$ ist und $g(b)$ gleich $a$ ist. Das bedeutet, dass $f$ und $g$ Umkehrfunktionen sind.")]
#only("5")[#voiceover("Als nächstes setzen wir die Funktionen zusammen.")]
#only("6")[#voiceover("$f(g(b))$ ist gleich $f(a)$, da $g(b)$ gleich $a$ ist, gemäß unserer Annahme.")]
#only("7")[#voiceover("Und uns ist gegeben, dass $f(a)$ gleich $b$ ist.")]
#only("8")[#voiceover("Also ist $f(g(b))$ gleich $b$.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[Schritt 2: Funktionen zusammensetzen 🧩 (fortgesetzt)]
#v(10pt)
#only("1-")[- Ebenso ist $g(f(a)) = g(b) = a$]
#v(40pt)
#only("2-")[Schritt 3: Verallgemeinern 🌐]
#v(10pt)
#only("3-")[- Da $a$ und $b$ beliebig waren, gilt dies für alle Elemente im Definitionsbereich von $f$ und $g$.]
#only("4-")[- Daher gilt $f(g(x)) = x$ für alle $x$ im Definitionsbereich von $g$, und $g(f(x)) = x$ für alle $x$ im Definitionsbereich von $f$.]
#only("1")[#voiceover("Ebenso ist $g(f(a))$ gleich $g(b)$, was gemäß unserer Annahme $a$ ist.")]
#only("2")[#voiceover("Schließlich verallgemeinern wir.")]
#only("3")[#voiceover("Da $a$ und $b$ beliebige Elemente waren, gilt diese Beziehung für alle Elemente im Definitionsbereich von $f$ und $g$.")]
#only("4")[#voiceover("Daher ist $f(g(x))$ gleich $x$ für alle $x$ im Definitionsbereich von $g$, und $g(f(x))$ ist gleich $x$ für alle $x$ im Definitionsbereich von $f$. Dies ist die Definition der Identitätsfunktion.")]
]