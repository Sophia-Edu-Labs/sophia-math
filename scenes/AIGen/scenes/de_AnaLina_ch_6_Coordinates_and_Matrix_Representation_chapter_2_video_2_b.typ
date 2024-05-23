#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Darstellung linearer Abbildungen]
#v(40pt)
#only("1-")[Eine lineare Abbildung kann durch eine \_\_\_\_\_ dargestellt werden.]
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) Vektor]#only("2-")[#text(fill:red)[a) Vektor]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-2")[b) Matrix]#only("3-")[#text(fill:green)[b) Matrix]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) Skalar]#only("4-")[#text(fill:red)[c) Skalar]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) Polynom]#only("5-")[#text(fill:red)[d) Polynom]]
#only("1")[#voiceover("Großartig, das ist die richtige Antwort!")]
#only("2")[#voiceover("Ein Vektor ist falsch. Ein Vektor ist ein Element, auf das eine lineare Abbildung wirken kann, aber er stellt die Abbildung selbst nicht dar.")]
#only("3")[#voiceover("Eine Matrix ist die richtige Antwort. Eine Matrix kann eine lineare Transformation von einem Vektorraum in einen anderen vollständig definieren.")]
#only("4")[#voiceover("Ein Skalar ist falsch. Ein Skalar ist eine einzelne Zahl, die nicht ausreicht, um eine lineare Abbildung zwischen Vektorräumen zu definieren.")]
#only("5")[#voiceover("Ein Polynom ist ebenfalls falsch. Polynome sind eine Art von Funktion, stellen aber keine linearen Abbildungen direkt dar.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Warum eine Matrix? 🤔]
#v(40pt)
#only("1-")[Eine Matrix kann eine lineare Abbildung darstellen, weil:]
#v(20pt)
#only("2-")[1️⃣ Sie transformiert #text(fill:aqua)[Koordinaten] von einer Basis in eine andere.]
#v(10pt)
#only("3-")[2️⃣ Die Matrix #text(fill:aqua)[Multiplikation] mit einem Vektor führt die lineare Transformation durch.]
#v(10pt)
#only("4-")[3️⃣ Die #text(fill:aqua)[Spalten] der Matrix sind die Bilder der Basisvektoren.]

#only("1")[#voiceover("Warum kann eine Matrix genau eine lineare Abbildung darstellen?")]
#only("2")[#voiceover("Erstens, denken Sie daran, dass eine lineare Abbildung Koordinaten von einer Basis in eine andere transformiert. Eine Matrix kann diese Transformation kodieren.")]
#only("3")[#voiceover("Wenn wir eine Matrix mit einem Vektor multiplizieren, führt sie eine lineare Transformation an diesem Vektor durch und transformiert dessen Koordinaten.")]
#only("4")[#voiceover("Genauer gesagt, die Spalten der Matrix sind die Bilder der Basisvektoren unter der linearen Transformation. So definiert die Matrix die Abbildung vollständig.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Beispiel 📚]
#v(40pt)
#only("1-")[Betrachten Sie die lineare Abbildung $T: RR^2 -> RR^2$ definiert durch $T(x, y) = (2x, 3y)$.]
#v(20pt)
#only("2-")[Die Standardbasisvektoren in $RR^2$ sind $mat(1;0)$ und $mat(0;1)$.]
#v(20pt)
#only("3-")[Unter $T$ werden diese abgebildet auf:]
#only("3-")[$T(mat(1;0)) = mat(2;0)$]
#only("3-")[$T(mat(0;1)) = mat(0;3)$]
#v(20pt)
#only("4-")[Also ist die Matrixdarstellung von $T$:]
#only("4-")[$mat(2, 0; 0, 3)$]

#only("1")[#voiceover("Schauen wir uns ein Beispiel an. Betrachten Sie die lineare Abbildung T von R-2 nach R-2, definiert durch T von x, y gleich 2x, 3y.")]
#only("2")[#voiceover("Die Standardbasisvektoren in R-2 sind 1, 0 und 0, 1.")]
#only("3")[#voiceover("Unter der Transformation T werden diese Basisvektoren auf 2, 0 und 0, 3 abgebildet.")]
#only("4")[#voiceover("Daher hat die Matrixdarstellung von T diese transformierten Basisvektoren als Spalten. Es ist die Matrix 2, 0; 0, 3.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung 🎯]
#v(40pt)
#only("1-")[- Eine lineare Abbildung kann durch eine #text(fill:green)[Matrix] dargestellt werden.]
#v(20pt)
#only("2-")[- Die Matrix #text(fill:aqua)[transformiert Koordinaten] von einer Basis in eine andere.]
#v(20pt)
#only("3-")[- Ihre #text(fill:aqua)[Spalten] sind die Bilder der Basisvektoren unter der Abbildung.]
#v(20pt)
#only("4-")[Großartige Arbeit bei dieser Frage! 🌟 Sie beherrschen das Konzept der linearen Abbildungen und deren Matrixdarstellungen. Weiter so! 😄]

#only("1")[#voiceover("Zusammenfassend kann eine lineare Abbildung durch eine Matrix dargestellt werden.")]
#only("2")[#voiceover("Diese Matrix transformiert Koordinaten von einer Basis in eine andere.")]
#only("3")[#voiceover("Und ihre Spalten sind die Bilder der Basisvektoren unter der Abbildung.")]
#only("4")[#voiceover("Großartige Arbeit bei dieser Frage! Sie beherrschen das Konzept der linearen Abbildungen und deren Matrixdarstellungen. Weiter so!")]
]