#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Lösen von $root(4, x) = 3$]
#v(40pt)
#only("1-")[- Erhebe beide Seiten auf die Potenz 4]
#v(20pt)
#only("2-")[$(root(4, x))^4 = 3^4$]
#v(20pt)
#only("3-")[- Vereinfache]
#v(20pt)
#only("4-")[$ x = 81$]
#only("1")[
#voiceover("Großartig! Das ist die richtige Antwort. Um die Gleichung vierte Wurzel von x gleich 3 zu lösen, können wir beide Seiten auf die Potenz 4 erheben.")
]
#only("2")[
#voiceover("Das ergibt die vierte Wurzel von x hoch 4 gleich 3 hoch 4.")
]
#only("3")[
#voiceover("Auf der linken Seite heben sich die vierte Wurzel und die vierte Potenz auf, sodass nur x übrig bleibt. Auf der rechten Seite ist 3 hoch 4 gleich 81.")
]
#only("4")[
#voiceover("Also haben wir x gleich 81. 🎉")
]
]