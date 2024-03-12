#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#set text(lang: "de")
#slide()[
#text(size: 26pt, weight: "bold")[⚅ Dreimaliger Würfelwurf ⚀]
#v(40pt)
Welche der folgenden Optionen ist ein #text(weight: "bold")[Ergebnis]?
#v(40pt)
#only("-1")[- Alle Würfe ⚀]#only("2-")[#text(fill:green)[- Alle Würfe ⚀]]
#v(10pt)
#only("-2")[- Nur ⚀ und ⚁]#only("3-")[#text(fill:red)[- Nur ⚀ und ⚁]]
#v(10pt)
#only("-3")[- 1. Wurf gerade, 2. Wurf ungerade, 3. Wurf gerade]#only("4-")[#text(fill:red)[- 1. Wurf gerade, 2. Wurf ungerade, 3. Wurf gerade]]
#v(10pt)
#only("-4")[- 1. Wurf ⚀, 2. Wurf $>1$. Wurf, 3. Wurf $<2$. Wurf]#only("5-")[#text(fill:red)[- 1. Wurf ⚀, 2. Wurf $>1$. Wurf, 3. Wurf $<2$. Wurf]]
#only("1")[#voiceover("Genau, das hast du richtig erkannt.")]
#only("2")[#voiceover("Die Option 'Alle Würfe Eins' ist ein Ergebnis, nämlich (1 1 1).")]
#only("3")[#voiceover("'Nur Einser und Zweier' ist kein Ergebnis. Es beschreibt mehrere Ergebnisse, ist also ein Ereignis und kein Ergebnis.")]
#only("4")[#voiceover("Die Option 'Erster Wurf gerade, zweiter Wurf ungerade, dritter Wurf gerade' ist ebenfalls kein Ergebnis. Es beschreibt mehrere Ergebnisse, ist also auch ein Ereignis.")]
#only("5")[#voiceover("Schließlich ist auch die Option 'Erster Wurf eins, zweiter Wurf größer als der 1. Wurf, dritter Wurf kleiner als der 2. Wurf kein Ergebnis. Es beschreibt mehrere Ergebnisse, ist also auch ein Ereignis. Also nochmal zum Merken: Ein Ergebnis das, was wir beim einmaligen Durchführen des Zufallsexperiments erhalten. Ein Ereignis ist eine Menge von Ergebnissen.")]
]