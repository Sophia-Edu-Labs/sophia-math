#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Dimensionsformel]
#v(40pt)
#only("1-")[$ "dim"(V) = "dim"("ker"(T)) + "dim"("im"(T)) $]
#only("1")[
#voiceover("Die Dimensionsformel für eine lineare Abbildung T von einem Vektorraum V zu einem Vektorraum W besagt, dass die Dimension von V gleich der Dimension des Kerns von T plus der Dimension des Bildes von T ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Kern und Bild]
#v(40pt)
#only("1-")[- 🌽 Kern: $"ker"(T) = \{v ∈ V | T(v) = 0\}$]
#v(20pt)
#only("2-")[- 🖼 Bild: $"im"(T) = \{w ∈ W | w = T(v) "für einige" v ∈ V\}$]
#only("1")[
#voiceover("Erinnern wir uns daran, dass der Kern von T die Menge aller Vektoren v in V ist, sodass T von v gleich dem Nullvektor ist.")
]
#only("2")[
#voiceover("Und das Bild von T ist die Menge aller Vektoren w in W, sodass w gleich T von v für einige Vektoren v in V ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beziehung]
#v(40pt)
#only("1-")[$ "dim"(V) = "dim"("ker"(T)) + "dim"("im"(T)) $]
#v(20pt)
#only("2-")[- 🔍 Untersuche Dimensionen]
#v(20pt)
#only("3-")[- 🧩 Teile des Puzzles]
#only("1")[
#voiceover("Nun sagt uns die Dimensionsformel etwas über die Beziehung zwischen diesen Teilen.")
]
#only("2")[
#voiceover("Sie besagt, dass wenn wir uns die Dimensionen dieser Räume ansehen,")
]
#only("3")[
#voiceover("sie wie Puzzleteile zusammenpassen. Die Dimension des Definitionsbereichs V teilt sich in die Dimension des Kerns und die Dimension des Bildes.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel]
#v(40pt)
#only("1-")[$ T: ℝ^4 → ℝ^3 "mit" "dim"("ker"(T)) = 2 $]
#v(20pt)
#only("2-")[$ "dim"(ℝ^4) = 4 $]
#v(20pt)
#only("3-")[$ 2 + "dim"("im"(T)) = 4 $]
#v(20pt)
#only("4-")[$ "dim"("im"(T)) = 2 $]
#only("1")[
#voiceover("Zum Beispiel betrachten wir eine lineare Abbildung T von R 4 nach R 3 mit einem Kern der Dimension 2.")
]
#only("2")[
#voiceover("Wir wissen, dass die Dimension von R 4 gleich 4 ist.")
]
#only("3")[
#voiceover("Also sagt uns die Dimensionsformel, dass 2 plus die Dimension des Bildes von T gleich 4 ist.")
]
#only("4")[
#voiceover("Wenn wir das lösen, finden wir, dass die Dimension des Bildes von T gleich 2 sein muss.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- 📏 Die Dimensionsformel bezieht sich auf $"dim"(V)$, $"dim"("ker"(T))$, $"dim"("im"(T))$]
#v(20pt)
#only("2-")[- 🧩 Dimensionen passen wie Puzzleteile zusammen]
#v(20pt)
#only("3-")[- 💡 Hilft, die Struktur linearer Abbildungen zu verstehen]
#only("1")[
#voiceover("Zusammenfassend bezieht sich die Dimensionsformel auf die Dimensionen des Definitionsbereichs V, des Kerns von T und des Bildes von T.")
]
#only("2")[
#voiceover("Diese Dimensionen passen wie Puzzleteile zusammen.")
]
#only("3")[
#voiceover("Das Verständnis dieser Beziehung hilft uns, die Struktur linearer Abbildungen besser zu verstehen.")
]
]