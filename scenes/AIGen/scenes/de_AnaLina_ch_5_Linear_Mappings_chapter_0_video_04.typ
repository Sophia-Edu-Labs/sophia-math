#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung der linearen Abbildung]
#v(40pt)
#only("1")[
#voiceover("Lassen Sie uns rekapitulieren, was wir über lineare Abbildungen gelernt haben.")
]
#only("2-")[
- Funktion zwischen Vektorräumen
]
#only("2")[
#voiceover("Eine lineare Abbildung ist eine Funktion zwischen zwei Vektorräumen.")
]
#only("3-")[
- Erhält Vektoraddition und Skalierung
]
#only("3")[
#voiceover("Sie erhält die Vektoraddition und die Skalierung.")
]
#only("4-")[
$ T(u + v) = T(u) + T(v) $
$ T(c u) = c T(u) $
]
#only("4")[
#voiceover("Das bedeutet, dass T von u plus v gleich T von u plus T von v ist, und T von c mal u gleich c mal T von u ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Eigenschaften 🔍]
#v(40pt)
#only("1-")[
- $ T(0) = 0 $
]
#only("1")[
#voiceover("Einige wichtige Eigenschaften von linearen Abbildungen sind: T des Nullvektors ist gleich dem Nullvektor.")
]
#only("2-")[
- $ T(c u + d v) = c T(u) + d T(v) $
]
#only("2")[
#voiceover("Und T von c mal u plus d mal v ist gleich c mal T von u plus d mal T von v, für beliebige Vektoren u und v und Skalare c und d.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Kern und Bild 🌽🖼]
#v(40pt)
#only("1-")[
- Kern: $ "ker"(T) = {v ∈ V | T(v) = 0} $
]
#only("1")[
#voiceover("Der Kern einer linearen Abbildung T ist die Menge aller Vektoren v im Definitionsbereich V, so dass T von v gleich dem Nullvektor ist.")
]
#only("2-")[
- Bild: $ "im"(T) = {w ∈ W | w = T(v) "für einige" v ∈ V} $
]
#only("2")[
#voiceover("Das Bild von T ist die Menge aller Vektoren w im Zielraum W, so dass w gleich T von v für einige Vektoren v im Definitionsbereich V ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dimensionsformel 📏]
#v(40pt)
#only("1-")[
$ "dim"(V) = "dim"("ker"(T)) + "dim"("im"(T)) $
]
#only("1")[
#voiceover("Die Dimensionsformel besagt, dass die Dimension des Definitionsbereichs V gleich der Dimension des Kerns von T plus der Dimension des Bildes von T ist.")
]
#only("2-")[
- Hilft, die Beziehung zwischen Kern und Bild zu verstehen
]
#only("2")[
#voiceover("Diese Formel hilft uns, die Beziehung zwischen dem Kern und dem Bild einer linearen Abbildung und deren Dimensionen zu verstehen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 📝]
#v(40pt)
#only("1-")[
- Lineare Abbildung: Funktion zwischen Vektorräumen, die Addition und Skalierung erhält 🗺
]
#only("1")[
#voiceover("Zusammenfassend ist eine lineare Abbildung eine Funktion zwischen Vektorräumen, die Vektoraddition und Skalierung erhält.")
]
#only("2-")[
- Wichtige Eigenschaften: $ T(0) = 0 $, $ T(c u + d v) = c T(u) + d T(v) $ 🔑
]
#only("2")[
#voiceover("Zu den wichtigsten Eigenschaften gehören T von Null ist gleich Null, und T von c u plus d v ist gleich c T von u plus d T von v.")
]
#only("3-")[
- Kern und Bild liefern Einblicke 🔍
]
#only("3")[
#voiceover("Der Kern und das Bild einer linearen Abbildung liefern wichtige Einblicke in ihr Verhalten.")
]
#only("4-")[
- Dimensionsformel verbindet Definitionsbereich, Kern und Bild 🔗
]
#only("4")[
#voiceover("Und die Dimensionsformel verbindet die Dimensionen des Definitionsbereichs, des Kerns und des Bildes.")
]
]