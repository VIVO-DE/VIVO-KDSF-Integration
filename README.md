![Build Status](https://github.com/BUA-VIVO/bua-upper-ontology/workflows/CI/badge.svg)
# KDSF-VIVO-Alignment

_KDSF ontology alignment (Kerndatensatz Forschung = Research Core Dataset) for use in VIVO. KDSF is a German national standard, therefore the description is in German only._

Mit den vorliegenden Dateien wird versucht, den [Kerndatensatz Forschung](http://kerndatensatz-forschung.de/) (KDSF) in VIVO zu integrieren. Es wird das Basismodell mit den grundlegenden forschungsbezogenen Objekten wie Person, Publikation, Drittmittelprojekte, Strukturiertes Promotionsprogramm, Patent und Forschungsinfrastruktur verwendet.

**Achtung: Die hier vorliegenden Dateien sind als Entwurf zu verstehen. An einer finalen Umsetzung wird weiterhin gearbeitet.**

# Komponenten
## vivo-kdsf-alignment.owl
Die Datei _vivo-kdsf-alignment.owl_ umfasst das an VIVO angepasste KDSF-Datenmodell (Version 1) inklusive Annotations zur direkten Nutzung in VIVO.

## vivo-kdsf-extension.owl
Die Datei _vivo-kdsf-extension.owl_ enthält jene Bestandteile des KDSF-Datenmodells (Version 1), die verändert werden mussten, um sie für VIVO zu optimieren. 

### Beispiel 1: 
http://kerndatensatz-forschung.de/owl/Basis#hatGemeinsameBerufung wurde als Object Property in vivo-kdsf-extension erfasst, weil die Verknüpfung zur Organisation selbst an dieser Stelle sinnvoller ist als ein bloßer String.
 
### Beispiel 2: 
http://kerndatensatz-forschung.de/owl/Basis#hatBesoldung wurde ebenfalls als Object Property erfasst. Für den Zielbereich (range) dieser Property wurde eine zusätzliche Klasse _kdsf_vivo:Besoldung_ erstellt. Auf diese Weise kann bei der Erfassung der Besoldung aus einer Liste der definierten Stufen eine ausgewählt werden.

### Beispiel 3:
Einige KDSF-Klassen stellen lediglich Endwerte dar, z.B. _Hauptberuflich_, _Nebenberuflich_ oder _Ausland / Inland_. Diese Kategorien wurden als Instanzen der entsprechenden Oberklassen erfasst.

## kdsf-meta.owl
Die Datei _kdsf-meta.owl enthält _AnnotationProperties_ für inhaltliche Definition der KDSF-Klassen und Eigenschaften. Sie muss zusammen mit den oben genannten Dateien ins VIVO importiert werden. Im Ontology Header wurde der Ontology-Name in _KSDF-Meta_ umbenannt und der Prefix für die Benutzung im VIVO - _kdsf-meta_ definiert.

# Installation
Folgende Schritte für die drei Dateien _vivo-kdsf-alignment.owl, vivo-kdsf-extension.owl kdsf-meta.owl_ ausführen:

* _Site Admin_ → _Add/Remove RDF data_
 * _"Or upload a file from your computer"_: Datei auswählen
 * _"add mixed RDF (instances and/or ontology)"_ anwählen
 * _Submit_

Damit die kdsf- und kdsf-vivo-Properties in den VIVO-Profilen angezeigt werden, müssen sie einer bestehenden _Property Group_ zugewiesen werden (_Property Control Panel → _Edit Property Record_ Property Editing Form_ → _Property Group_.) Alternativ kann unter _Site Admin_ → _Property Groups_ → _Add new Property Group_ eine neue Gruppe erstellt werden. Nach der Erstellung muss jede Property wie oben beschrieben der neuen Gruppe zugewiesen werden.

Die Dateien sind in VIVO 1.9.X getestet.

# Vorgehen und Stand der Entwicklung
* Englischsprachige Labels sind noch nicht enthalten
* Ausbau der Dokumentation

# Lizenz
Der Kerndatensatz Forschung steht unter der Lizenz [Creative Commons Attribution-ShareAlike 4.0 International](https://creativecommons.org/licenses/by-sa/4.0/).

# Links:
* [Kerndatensatz Forschung](http://www.kerndatensatz-forschung.de/)
* [OWL-Datei zum KDSF-Datenmodell](http://www.kerndatensatz-forschung.de/version1/technisches_datenmodell/owl.html)
* [Open Science Lab an der Technischen Informationsbibliothek (TIB) ](https://www.tib.eu/de/forschung-entwicklung/open-science/)

# AutorInnen: 
* Tatiana Walther
* Anna Kasprzik
* Christian Hauschke
* Rolf Guescini
