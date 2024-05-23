#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#only("1")[
#voiceover("Lassen Sie uns das Konzept der Inversen einer Matrix rekapitulieren. 🔄")
]
#text(size: 30pt, weight: "bold")[Inverse einer Matrix]
#v(40pt)
#only("2")[
#voiceover("Die Inverse einer Matrix A, bezeichnet als A hoch minus 1, ist eine Matrix, die, wenn sie mit A multipliziert wird, zur Einheitsmatrix I führt.")
]
#only("2-")[- $A A^(-1) = A^(-1) A = I$]
#v(40pt)
#only("3")[
#voiceover("Betrachten Sie zum Beispiel die Matrix A, die gleich der 2 mal 2 Matrix mit den Elementen 1, 0, 0, 1 ist.")
]
#only("3-")[
- Beispiel: $A = mat(1, 0; 0, 1)$
#v(20pt)
- $A^(-1) = mat(1, 0; 0, 1)$
]
#v(40pt)
#only("4")[
#voiceover("Das Multiplizieren von A mit seiner Inversen A hoch minus 1 ergibt die Einheitsmatrix I, die ebenfalls eine 2 mal 2 Matrix mit 1en auf der Hauptdiagonale und 0en an den anderen Stellen ist.")
]
#only("4-")[
$ A A^(-1) = mat(1, 0; 0, 1) mat(1, 0; 0, 1)$
#v(20pt)
$= mat(1, 0; 0, 1) = I$
]
#v(40pt)
#only("5")[
#voiceover("Nicht alle Matrizen haben eine Inverse. Eine Matrix hat eine Inverse, wenn und nur wenn sie eine quadratische Matrix ist und ihre Determinante ungleich null ist. 📐")
]
#only("5-")[
- Matrix $A$ hat eine Inverse, wenn:
  - $A$ ist eine quadratische Matrix
  - $det(A) ≠ 0$
]
]