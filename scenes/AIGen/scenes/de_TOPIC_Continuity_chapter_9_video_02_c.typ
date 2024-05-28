#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Reale Anwendungen der Stetigkeit]
#v(40pt)
Welche der folgenden ist eine reale Anwendung der Stetigkeit?
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Von Abschnitt 2 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[d) Alle oben genannten]#only("2-")[#text(fill:green)[d) Alle oben genannten]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Von Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[a) Sanfte Übergänge in der Technik]#only("3-")[#text(fill:red)[a) Sanfte Übergänge in der Technik]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Von Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[b) Vorhersage physikalischer Phänomene]#only("4-")[#text(fill:red)[b) Vorhersage physikalischer Phänomene]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Von Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[c) Sicherstellung der Stabilität in Systemen]#only("5-")[#text(fill:red)[c) Sicherstellung der Stabilität in Systemen]]

#only("1")[#voiceover("Leider war das nicht die richtige Antwort.")]
#only("2")[#voiceover("Tatsächlich sind alle genannten Optionen reale Anwendungen der Stetigkeit.")]
#only("3")[#voiceover("Sanfte Übergänge in der Technik basieren auf Stetigkeit. Zum Beispiel könnten plötzliche Änderungen in der Gestaltung von Flugzeugflügeln oder Karosserien zu strukturellen Schwächen oder aerodynamischen Problemen führen.")]
#only("4")[#voiceover("Auch die Vorhersage physikalischer Phänomene basiert auf Stetigkeit. Viele physikalische Gesetze und Gleichungen setzen kontinuierliches Verhalten voraus. Diskontinuitäten könnten auf ein Versagen des Modells hinweisen.")]
#only("5")[#voiceover("Die Sicherstellung der Stabilität in Systemen ist eine weitere Anwendung. In Regelungssystemen können Diskontinuitäten zu Instabilität und unvorhersehbarem Verhalten führen.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Warum Stetigkeit wichtig ist]
#v(40pt)
#only("1-")[🌉 Technik:]
#v(10pt)
#only("2-")[- Sanfte Übergänge gewährleisten strukturelle Integrität und ordnungsgemäße Funktion.]
#v(40pt)
#only("3-")[🌍 Physik:]
#v(10pt)
#only("4-")[- Kontinuierliche Modelle sagen das Verhalten genau voraus.]
#v(40pt)
#only("5-")[🎚 Regelungssysteme:]
#v(10pt) 
#only("6-")[- Stetigkeit gewährleistet Stabilität und Vorhersehbarkeit.]

#only("1")[#voiceover("Lass uns etwas tiefer eintauchen, warum Stetigkeit in diesen Bereichen so wichtig ist.")]
#only("2")[#voiceover("In der Technik stellt Stetigkeit sicher, dass es keine plötzlichen Änderungen oder Brüche in einem Design gibt. Dies ist entscheidend für die strukturelle Integrität und das ordnungsgemäße Funktionieren vieler Systeme, von Brücken bis hin zu Maschinen.")]
#only("3")[#voiceover("In der Physik setzen viele grundlegende Gesetze und Gleichungen voraus, dass Größen sich kontinuierlich verhalten.")]
#only("4")[#voiceover("Stetigkeit ermöglicht es diesen Modellen, physikalische Phänomene genau vorherzusagen und zu beschreiben. Diskontinuitäten könnten auf ein Versagen des Modells oder auf interessante physikalische Vorgänge hinweisen.")]
#only("5")[#voiceover("In Regelungssystemen, die in allem von Thermostaten bis hin zu Autopiloten verwendet werden, ist Stetigkeit der Schlüssel zur Stabilität.")]
#only("6")[#voiceover("Wenn ein Regelungssystem Diskontinuitäten aufweist, kann dies zu unvorhersehbarem Verhalten führen. Stetigkeit stellt sicher, dass das System stabil und vorhersehbar funktioniert.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Stetigkeit visualisieren]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 1000)
y_continuous = np.sin(np.pi*x)
y_discontinuous = np.sin(np.pi*x) * (x < 0)

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10, 4))

ax1.plot(x, y_continuous)
ax1.set_title('Continuous Function')
ax1.grid(True)

ax2.plot(x, y_discontinuous)
ax2.set_title('Discontinuous Function')
ax2.grid(True)

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Hier ist ein visueller Vergleich:]
#v(20pt)
#only("2-")[- Das linke Diagramm zeigt eine #text(weight: "bold")[stetige Funktion]. Sie ist glatt und ununterbrochen.]
#only("3-")[- Das rechte Diagramm zeigt eine #text(weight: "bold")[diskontinuierliche Funktion]. Sie hat einen plötzlichen Sprung.]

#only("1")[#voiceover("Um das Konzept weiter zu veranschaulichen, schauen wir uns einen visuellen Vergleich einer stetigen und einer diskontinuierlichen Funktion an.")]
#only("2")[#voiceover("Links haben wir ein Diagramm einer stetigen Funktion. Beachte, wie die Kurve glatt und ununterbrochen ist. Es gibt keine plötzlichen Sprünge oder Lücken.")]
#only("3")[#voiceover("Im Gegensatz dazu zeigt das Diagramm rechts eine diskontinuierliche Funktion. Es gibt einen plötzlichen Sprung, bei dem die Funktion abrupt ihren Wert ändert. Diese Art von Diskontinuität könnte in vielen realen Anwendungen Probleme verursachen.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Stetigkeit hat viele reale Anwendungen 🌍]
#v(20pt)
#only("2-")[- Sie ist entscheidend in der Technik, Physik und Regelungssystemen 🏗️🔬🎛️]
#v(20pt)
#only("3-")[- Stetige Funktionen sind glatt und vorhersehbar 📈]
#v(20pt)
#only("4-")[- Diskontinuitäten können zu Problemen und Instabilitäten führen ⚠️]

#only("1")[#voiceover("Zusammenfassend lässt sich sagen, dass Stetigkeit zahlreiche reale Anwendungen hat.")]
#only("2")[#voiceover("Sie spielt eine entscheidende Rolle in Bereichen wie Technik, Physik und Regelungssystemen.")]
#only("3")[#voiceover("Stetige Funktionen verhalten sich glatt und vorhersehbar, was oft notwendig ist, damit Systeme ordnungsgemäß funktionieren.")]
#only("4")[#voiceover("Andererseits können Diskontinuitäten zu verschiedenen Problemen und Instabilitäten führen. Daher ist das Verständnis und die Sicherstellung der Stetigkeit in vielen Bereichen der Wissenschaft und Technik von großer Bedeutung.")]
]