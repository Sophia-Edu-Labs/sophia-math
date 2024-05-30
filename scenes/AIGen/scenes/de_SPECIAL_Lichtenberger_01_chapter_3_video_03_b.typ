#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Auftrieb und Volumen]
#v(40pt)
#only("1-")[Von drei unterschiedlich großen Objekten mit derselben Masse schwimmt das mit dem mittleren Volumen. Welches andere Objekt schwimmt auch?]
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, da sie falsch ist.
#only("-1")[a) das kleine]#only("2-")[#text(fill:red)[a) das kleine]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann grün, da sie richtig ist.
#only("-2")[b) das große]#only("3-")[#text(fill:green)[b) das große]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, da sie falsch ist.
#only("-3")[c) beide]#only("4-")[#text(fill:red)[c) beide]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, da sie falsch ist.
#only("-4")[d) keines]#only("5-")[#text(fill:red)[d) keines]]
#only("1")[#voiceover("Großartig! Du hast die richtige Antwort ausgewählt.")]
#only("2")[#voiceover("Option a), das kleine, ist falsch. Das kleine Objekt hat weniger Volumen und daher weniger Auftrieb, sodass es im Vergleich zu den mittleren und großen Objekten weniger wahrscheinlich schwimmt.")]
#only("3")[#voiceover("Option b), das große, ist die richtige Antwort. Ein Objekt mit größerem Volumen verdrängt mehr Wasser und erhöht damit seinen Auftrieb. Wenn das mittlere Objekt schwimmt, wird das große es auch tun.")]
#only("4")[#voiceover("Option c), beide, ist falsch. Während das große Objekt auch schwimmt, wird das kleine wahrscheinlich nicht schwimmen, da es weniger Volumen und daher weniger Auftrieb hat.")]
#only("5")[#voiceover("Und Option d), keines, ist ebenfalls falsch, da wir wissen, dass mindestens das mittlere Objekt schwimmt und daher auch das große aufgrund seines größeren Volumens schwimmen wird.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[1. Verstehe die gegebenen Informationen:]
#v(20pt)
#only("2-")[- Drei Objekte haben die gleiche Masse, aber unterschiedliche Volumen]
#only("3-")[- Das Objekt mit mittlerem Volumen schwimmt]
#v(40pt)
#only("4-")[2. Betrachte die Beziehung zwischen Volumen und Auftrieb:]
#v(20pt)
#only("5-")[- Der Auftrieb hängt vom verdrängten Wasservolumen ab]
#only("6-")[- Größeres Volumen $arrow$ mehr verdrängtes Wasser $arrow$ mehr Auftrieb 🌊]

#only("1")[#voiceover("Lass uns die Lösung Schritt für Schritt durchgehen.")]
#only("2")[#voiceover("Zuerst verstehen wir die gegebenen Informationen. Wir haben drei Objekte mit derselben Masse, aber unterschiedlichen Volumen.")]
#only("3")[#voiceover("Wir wissen auch, dass das Objekt mit mittlerem Volumen schwimmt.")]
#only("4")[#voiceover("Als nächstes betrachten wir die Beziehung zwischen Volumen und Auftrieb.")]
#only("5")[#voiceover("Der Auftrieb hängt vom verdrängten Wasservolumen eines Objekts ab.")]
#only("6")[#voiceover("Ein größeres Volumen bedeutet, dass mehr Wasser verdrängt wird, was zu mehr Auftrieb führt.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung (Fortsetzung)]
#v(40pt)
#only("1-")[3. Schließe, welches andere Objekt auch schwimmt:]
#v(20pt)
#only("2-")[- Das große Objekt hat mehr Volumen als das mittlere]
#only("3-")[- Daher wird es mehr Auftrieb haben und auch schwimmen 🎈]
#v(40pt)
#only("4-")[Daher wird das große Objekt auch schwimmen.]

#only("1")[#voiceover("Nun können wir schließen, welches andere Objekt auch schwimmen wird.")]
#only("2")[#voiceover("Das große Objekt hat mehr Volumen als das mittlere.")]
#only("3")[#voiceover("Daher wird es mehr Auftrieb haben und auch schwimmen.")]
#only("4")[#voiceover("Daher können wir schließen, dass das große Objekt auch schwimmen wird, da es mehr Volumen und damit mehr Auftrieb hat als das mittlere Objekt, von dem wir wissen, dass es schwimmt.")]
]