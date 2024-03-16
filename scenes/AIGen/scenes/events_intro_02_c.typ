#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#set text(lang: "de")
#slide()[
#text(size: 26pt, weight: "bold")[⚅ Zweimaliger Würfelwurf ⚀]
#v(40pt)
Welche der folgenden Optionen ist #text(weight: "bold")[KEIN] Ergebnis?
#v(40pt)
#only("-1")[- Beide Würfe ⚅]#only("2-")[#text(fill:green)[- Beide Würfe ⚅]]
#v(10pt)
#only("-2")[- 1. Wurf ⚀, 2. Wurf ⚁]#only("3-")[#text(fill:green)[- 1. Wurf ⚀, 2. Wurf ⚁]]
#v(10pt)
#only("-3")[- Beide Würfe gerade Augenzahlen]#only("4-")[#text(fill:red)[- Beide Würfe gerade Augenzahlen]]
#v(10pt)
#only("-4")[- 2. Wurf ⚃, 1. Wurf ⚁]#only("5-")[#text(fill:green)[- 2. Wurf ⚃, 1. Wurf ⚁]]
#only("1")[#voiceover("Genau, das hast du richtig erkannt.")]
#only("2")[#voiceover("Beide Würfe Sechs ist ein mögliches Ergebnis bei einem zweimaligen Würfelwurf.")]
#only("3")[#voiceover("Auch der erste Wurf Eins und der zweite Wurf Zwei ist ein konkretes Ergebnis, das eintreten kann.")]
#only("4")[#voiceover("Die Option 'Beide Würfe gerade Augenzahlen' ist kein einzelnes Ergebnis, sondern ein Ereignis, das mehrere Ergebnisse umfasst, nämlich (2 2), (2 4), (2 6), (4 2), und so weiter ...")]
#only("5")[#voiceover("Auch der zweite Wurf Vier und der erste Wurf Zwei ist ein mögliches konkretes Ergebnis. Die Reihenfolge, in der die Würfe genannt werden, spielt keine Rolle. Also zum Merken nochmal: Ein Ergebnis ist etwas, was beim einmaligen Durchführen des Zufallsexperiments eintreten kann. Ein Ereignis ist eine Menge von Ergebnissen, zum Beispiel alle Ergebnisse, bei denen beide Würfe gerade Augenzahlen sind.")]
]