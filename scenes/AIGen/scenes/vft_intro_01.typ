#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide(max-repetitions: 20)[

#text(size: 28pt, weight: "bold")[#align(center)[Vierfeldertafel]]
#v(40pt)
#only("2-")[
Wer kommt zu spät?
]
#only("3-7")[
#align(center)[
#table(
  columns: (auto, auto, auto),
  inset: 10pt,
  align: horizon,
  [], [*Zu spät*], [*Pünktlich*],
  [*M*],
  [#only("4-")[$ 4 $]],
  [#only("5-")[$ 7 $]],
  [*S*],
  [#only("6-")[$ 6 $]],
  [#only("7-")[$ 10 $]],
)
]
]
#only("8")[
#align(center)[
#table(
  fill: (col, _) => if col==1 {red } else { white },
  columns: (auto, auto, auto),
  inset: 10pt,
  align: horizon,
  [], [*Zu spät*], [*Pünktlich*],
  [*M*],
  [#only("4-")[$ 4 $]],
  [#only("5-")[$ 7 $]],
  [*S*],
  [#only("6-")[$ 6 $]],
  [#only("7-")[$ 10 $]],
)
]
]
#only("9")[
#align(center)[
#table(
  fill: (col, _) => if col==2 {red } else { white },
  columns: (auto, auto, auto),
  inset: 10pt,
  align: horizon,
  [], [*Zu spät*], [*Pünktlich*],
  [*M*],
  [#only("4-")[$ 4 $]],
  [#only("5-")[$ 7 $]],
  [*S*],
  [#only("6-")[$ 6 $]],
  [#only("7-")[$ 10 $]],
)
]
]
#only("10")[
#align(center)[
#table(
  fill: (_, row) => if row==1 {red } else { white },
  columns: (auto, auto, auto),
  inset: 10pt,
  align: horizon,
  [], [*Zu spät*], [*Pünktlich*],
  [*M*],
  [#only("4-")[$ 4 $]],
  [#only("5-")[$ 7 $]],
  [*S*],
  [#only("6-")[$ 6 $]],
  [#only("7-")[$ 10 $]],
)
]
]
#only("11-")[
#align(center)[
#table(
  fill: (_, row) => if row==2 {red } else { white },
  columns: (auto, auto, auto),
  inset: 10pt,
  align: horizon,
  [], [*Zu spät*], [*Pünktlich*],
  [*M*],
  [#only("4-")[$ 4 $]],
  [#only("5-")[$ 7 $]],
  [*S*],
  [#only("6-")[$ 6 $]],
  [#only("7-")[$ 10 $]],
)
]
]
#v(40pt)
#only("8-")[- #text(weight:"bold")[Zu spät:] 10 Schülerinnen]
#only("9-")[- #text(weight:"bold")[Pünktlich:] 17 Schülerinnen]
#only("10-")[- #text(weight:"bold")[Mögen Mathe:] 11 Schülerinnen]
#only("11-")[- #text(weight:"bold")[Mögen Sport:] 16 Schülerinnen]

#only("1")[
#voiceover("Schauen wir uns an, was eine Vierfeldertafel ist.")
]
#only("2")[
#voiceover("Angenommen wir haben eine Gruppe von 17 Schülerinnen, und wir schreiben uns auf, wer zu spät zur ersten Stunde kommt, und wer pünktlich ist. Außerdem notieren wir uns, ob die Schülerinnen Matheunterricht oder Sportunterricht lieber mögen. ...")
]
#only("3")[
#voiceover("... Dann können wir die Schülerinnen in vier Gruppen einteilen: Die Schülerinnen, die zu spät kommen und Mathe mögen, die Schülerinnen, die zu spät kommen und Sport mögen, die Schülerinnen, die pünktlich sind und Mathe mögen, und die Schülerinnen, die pünktlich sind und Sport mögen. ...")
]
#only("4")[
#voiceover("... In unserem Beispiel sind 4 Schülerinnen die Mathe mögen zu spät gekommen,")
]
#only("5")[
#voiceover("... und 7 Schülerinnen die Mathe mögen pünktlich.")
]
#only("6")[
#voiceover("Außerdem sind 6 Schülerinnen die Sport mögen zu spät gekommen,")
]
#only("7")[
#voiceover("... und 10 Schülerinnen die Sport mögen pünktlich.")
]
#only("8")[
#voiceover("Insgesamt sind 10 Schülerinnen zu spät gekommen. Das erhalten wir in dem wir die beiden Werte der LINKEN Spalte addieren.")
]
#only("9")[
#voiceover("Und es sind 17 Schülerinnen pünktlich. Das erhalten wir in dem wir die beiden Werte der RECHTEN Spalte addieren.")
]
#only("10")[
#voiceover("11 Schülerinnen mögen Mathe lieber. Das erhalten wir in dem wir die beiden Werte der OBEREN Spalte addieren.")
]
#only("11")[
#voiceover("Und 16 Schüler: mögen Sport lieber. Das erhalten wir in dem wir die beiden Werte der UNTEREN Spalte addieren.")
]
]
 