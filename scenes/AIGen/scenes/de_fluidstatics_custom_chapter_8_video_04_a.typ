#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Städtisches Wasserversorgungssystem]
#v(40pt)
#only("1-")[
- Der Wasserspiegel im Reservoir sinkt um 2 m 📉
- Berechne den neuen Druck am Wasserhahn 🚰
- Verwende $p = rho dot g dot h$ 🧮
]
#only("1")[
#voiceover("Großartig! Das ist die richtige Antwort. Lass uns die Lösung Schritt für Schritt durchgehen. Es wird angegeben, dass der Wasserspiegel im Reservoir um 2 Meter sinkt und wir den neuen Druck am Wasserhahn mit der Formel p gleich rho mal g mal h berechnen müssen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Gegeben]
#v(40pt)
#only("1-")[
- Absenkung des Wasserspiegels: 2 m
- Position des Wasserhahns: 50 m unterhalb des ursprünglichen Wasserspiegels
- $rho$ (Wasserdichte): 1000 kg/m³
- $g$ (Erdbeschleunigung): 9.81 m/s²
]
#only("1")[
#voiceover("Das Problem gibt uns folgende Informationen: Der Wasserspiegel im Reservoir sinkt um 2 Meter. Der Wasserhahn befindet sich 50 Meter unterhalb des ursprünglichen Wasserspiegels. Die Dichte des Wassers, rho, beträgt 1000 Kilogramm pro Kubikmeter. Und die Erdbeschleunigung, g, beträgt 9,81 Meter pro Sekunde zum Quadrat.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Neue Höhe berechnen]
#v(40pt)
#only("1-")[
- Neue Höhe = Ursprüngliche Höhe - Absenkung
- $h_("neu") = h_("ursprünglich") - h_("absenkung")$
]
#v(20pt)
#only("2-")[
- $h_("neu") = 50 "m" - 2 "m" = 48 "m"$
]
#only("1")[
#voiceover("Der erste Schritt ist die Berechnung der neuen Höhe. Die neue Höhe ergibt sich aus der ursprünglichen Höhe minus der Absenkung. In mathematischer Notation: h Index neu gleich h Index ursprünglich minus h Index absenkung.")
]
#only("2")[
#voiceover("Setzen wir die Werte ein, erhalten wir h Index neu gleich 50 Meter minus 2 Meter, was 48 Meter ergibt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Druckformel anwenden]
#v(40pt)
#only("1-")[
- $p = rho dot g dot h$
]
#v(20pt)
#only("2-")[
- $p = 1000 "kg/m"^3 dot 9.81 "m/s"^2 dot 48 "m"$
]
#v(20pt)
#only("3-")[
- $p = 470880 "Pa" = 470.88 "kPa"$
]
#only("1")[
#voiceover("Schritt 2 ist die Anwendung der Druckformel. Druck ist gleich Dichte mal Erdbeschleunigung mal Höhe.")
]
#only("2")[
#voiceover("Setzen wir die Werte ein, erhalten wir Druck gleich 1000 Kilogramm pro Kubikmeter mal 9,81 Meter pro Sekunde zum Quadrat mal 48 Meter.")
]
#only("3")[
#voiceover("Multiplizieren wir diese Werte, erhalten wir einen Druck von 470880 Pascal, was 470,88 Kilopascal entspricht.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Antwort]
#v(40pt)
#only("1-")[
Der neue Druck am Wasserhahn beträgt $470880 "Pa"$ oder $470.88 "kPa"$. 🎉
]
#only("1")[
#voiceover("Daher beträgt der neue Druck am Wasserhahn nach dem Absinken des Wasserspiegels um 2 Meter 470880 Pascal oder 470,88 Kilopascal. Großartige Arbeit bei der Lösung dieses Problems!")
]
]