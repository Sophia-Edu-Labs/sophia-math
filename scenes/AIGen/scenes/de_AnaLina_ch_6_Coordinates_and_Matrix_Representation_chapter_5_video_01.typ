#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Matrixdarstellung]
#v(40pt)
#only("1-")[- Lineare Abbildung $T: V \\to W$ 📐]
#v(20pt)
#only("2-")[- Basis $B$ für $V$, Basis $C$ für $W$ 🎛️]
#v(20pt)
#only("3-")[- $[T]_B^C$: Matrixdarstellung von $T$ bzgl. $B$ und $C$ 🧩]
#only("1")[
#voiceover("Betrachten wir eine lineare Abbildung T von einem Vektorraum V zu einem Vektorraum W.")
]
#only("2")[
#voiceover("Wir haben eine Basis B für den Definitionsbereich V und eine Basis C für den Zielbereich W.")
]
#only("3")[
#voiceover("Die Matrixdarstellung von T bezüglich der Basen B und C wird als T Index B hoch C bezeichnet.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Basiswechsel]
#v(40pt)
#only("1-")[- Neue Basis $B'$ für $V$, neue Basis $C'$ für $W$ 🔄]
#v(20pt)
#only("2-")[- Basiswechselmatrizen: $P_B^{B'}$, $P_C^{C'}$ 🔀]
#v(20pt)
#only("3-")[- $P_B^{B'} = mat(b_1'; ...; b_n')$, $P_C^{C'} = mat(c_1'; ...; c_m')$ 🧮]
#only("1")[
#voiceover("Nun führen wir eine neue Basis B Strich für V und eine neue Basis C Strich für W ein.")
]
#only("2")[
#voiceover("Um zwischen den alten und neuen Basen zu wechseln, benötigen wir Basiswechselmatrizen. P Index B hoch B Strich für V und P Index C hoch C Strich für W.")
]
#only("3")[
#voiceover("Die Basiswechselmatrix P Index B hoch B Strich wird durch die neuen Basisvektoren b Strich 1 bis b Strich n als Spalten gebildet. Ebenso wird P Index C hoch C Strich durch die neuen Basisvektoren c Strich 1 bis c Strich m gebildet.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Matrixdarstellung bzgl. neuer Basen]
#v(40pt)
#only("1-")[- $[T]_{B'}^{C'} = P_C^{C'} [T]_B^C (P_B^{B'})^(-1)$ 🎭]
#v(20pt)
#only("2-")[1️⃣ Multipliziere $[T]_B^C$ mit $(P_B^{B'})^(-1)$ von rechts]
#v(20pt)
#only("3-")[2️⃣ Multipliziere das Ergebnis mit $P_C^{C'}$ von links]
#only("1")[
#voiceover("Die Matrixdarstellung von T bezüglich der neuen Basen B Strich und C Strich wird durch diese Formel gegeben: T Index B Strich hoch C Strich ist gleich P Index C hoch C Strich mal T Index B hoch C mal die Inverse von P Index B hoch B Strich.")
]
#only("2")[
#voiceover("Um dies zu berechnen, multipliziere zuerst die ursprüngliche Matrixdarstellung T Index B hoch C mit der Inversen der Basiswechselmatrix P Index B hoch B Strich von rechts.")
]
#only("3")[
#voiceover("Dann multipliziere das Ergebnis mit der Basiswechselmatrix P Index C hoch C Strich von links. Dies ergibt die Matrixdarstellung von T bezüglich der neuen Basen B Strich und C Strich.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Basiswechselmatrizen: $P_B^{B'}$, $P_C^{C'}$ 🔀]
#v(20pt)
#only("2-")[- Matrixdarstellung bzgl. neuer Basen: $[T]_{B'}^{C'} = P_C^{C'} [T]_B^C (P_B^{B'})^{-1}$ 🎭]
#only("1")[
#voiceover("Zusammenfassend, um die Matrixdarstellung einer linearen Abbildung bezüglich neuer Basen zu finden, benötigst Du die Basiswechselmatrizen P Index B hoch B Strich und P Index C hoch C Strich.")
]
#only("2")[
#voiceover("Die neue Matrixdarstellung wird durch die Formel T Index B Strich hoch C Strich gleich P Index C hoch C Strich mal T Index B hoch C mal die Inverse von P Index B hoch B Strich gegeben. Dies ermöglicht es Dir, die lineare Abbildung in Bezug auf die neuen Basen auszudrücken.")
]
]