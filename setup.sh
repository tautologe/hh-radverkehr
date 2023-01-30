#!/bin/bash

wget -O HH_WFS_DB_Rad_Plus.gml "https://geodienste.hamburg.de/HH_WFS_DB_Rad_Plus?SERVICE=WFS&VERSION=1.1.0&REQUEST=GetFeature&typename=de.hh.up:aktuelles_jahr,de.hh.up:letzte_woche,de.hh.up:jahr2022"

ogr2ogr -f "GeoJSON" dbrad2023.json  -s_srs EPSG:25832 -t_srs WGS84 -skipfailures HH_WFS_DB_Rad_Plus.gml aktuelles_jahr
