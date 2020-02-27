# January

## Thursday, January 2

To do

  - *Refuge Notebook* catch-up.
  - ~~Add journal 2019 to Arctos~~.
  - Elodea RFP.
  - Visit site SK03?
  - Pesticide applicator CEUs.
  - Publish LTEMP bird data.
  - Finish sorting 2019 black spruce sweep net samples.

I posted my 2019 work journal to Arctos
(<http://arctos.database.museum/publication/10009014>,
<https://doi.org/10.7299/X7RB74XZ>). I also bulkloaded all [83 Arctos
specimen
citations](http://arctos.database.museum/SpecimenResults.cfm?publication_id=10009014).

I initialized a [journal2020](https://github.com/mlbowser/journal2020)
repository.

I sorted sweep net sample
[KNWR:Ento:11356](http://arctos.database.museum/guid/KNWR:Ento:11356).

Contents:

| identification | count |
| :------------- | ----: |
| Diptera        |    85 |
| Araneae        |    16 |
| Empidoidea     |     9 |
| Psyllidae      |     7 |
| Chironomidae   |     4 |
| Insecta        |     4 |
| Ichneumonoidea |     3 |
| Phoridae       |     3 |
| Culicidae      |     2 |
| Sciaroidea     |     2 |
| Tipulidae      |     2 |
| Psocodea       |     1 |
| Stratiomyidae  |     1 |
| Thysanoptera   |     1 |

I also sorted sweep net sample
[KNWR:Ento:11357](http://arctos.database.museum/guid/KNWR:Ento:11357).

Contents:

| identification        | count |
| :-------------------- | ----: |
| Diptera               |    31 |
| Araneae               |     8 |
| Symphypleona          |     7 |
| Hymenoptera           |     6 |
| Psyllidae             |     6 |
| Hemiptera             |     5 |
| Ichneumonoidea        |     5 |
| Aphididae             |     4 |
| Cicadellidae          |     4 |
| Symphyta              |     4 |
| Arachnida             |     3 |
| Lepidoptera           |     3 |
| *Cixius meridionalis* |     2 |
| Culicidae             |     2 |
| Insecta               |     2 |
| Sciaroidea            |     2 |
| Delphacidae           |     1 |
| Empidoidea            |     1 |
| Phoridae              |     1 |
| Simuliidae            |     1 |

## Friday, January 3

To do

  - *Refuge Notebook* catch-up.
  - Elodea RFP.
  - Visit site SK03?
  - Pesticide applicator CEUs.
  - Publish LTEMP bird data.
  - ~~Finish sorting 2019 black spruce sweep net samples.~~

I sorted sweep net sample
[KNWR:Ento:11358](http://arctos.database.museum/guid/KNWR:Ento:11358).

Contents:

| identification | count |
| :------------- | ----: |
| Aphididae      |    26 |
| Ichneumonoidea |    14 |
| Diptera        |     8 |
| Araneae        |     7 |
| Hybotidae      |     5 |
| Culicidae      |     3 |
| Lepidoptera    |     3 |
| Psocodea       |     3 |
| Sciaroidea     |     3 |
| Arachnida      |     2 |
| Hemiptera      |     2 |
| Hymenoptera    |     2 |
| Insecta        |     2 |
| Miridae        |     2 |
| Simuliidae     |     2 |
| Tabanidae      |     2 |
| Cicadellidae   |     1 |
| Coleoptera     |     1 |
| Elateridae     |     1 |
| Empidoidea     |     1 |
| Entomobryidae  |     1 |
| Symphyta       |     1 |
| Torymidae      |     1 |

I sorted sweep net sample
[KNWR:Ento:11359](http://arctos.database.museum/guid/KNWR:Ento:11359).

Contents:

| identification | count |
| :------------- | ----: |
| Aphididae      |    11 |
| Araneae        |     7 |
| Psocodea       |     6 |
| Diptera        |     4 |
| Culicidae      |     3 |
| Symphyta       |     3 |
| Empidoidea     |     2 |
| Sciaroidea     |     2 |
| Arachnida      |     1 |
| Elateridae     |     1 |
| Hemiptera      |     1 |
| Hybotidae      |     1 |
| Hymenoptera    |     1 |
| Ichneumonoidea |     1 |
| Miridae        |     1 |
| Simuliidae     |     1 |
| *Symphoromyia* |     1 |
| Tabanidae      |     1 |

I sorted sweep net sample
[KNWR:Ento:11360](http://arctos.database.museum/guid/KNWR:Ento:11360).

Contents:

| identification | count |
| :------------- | ----: |
| Araneae        |    11 |
| Psocodea       |     6 |
| Aphididae      |     5 |
| Ichneumonoidea |     5 |
| Diptera        |     3 |
| Hemiptera      |     2 |
| Miridae        |     2 |
| Arachnida      |     1 |
| Cicadellidae   |     1 |
| Hymenoptera    |     1 |
| Thysanoptera   |     1 |
| Torymidae      |     1 |

I sorted sweep net sample
[KNWR:Ento:11361](http://arctos.database.museum/guid/KNWR:Ento:11361),
the last of these sweep net samples\!

Contents:

| identification | count |
| :------------- | ----: |
| Culicidae      |     8 |
| Tabanidae      |     2 |
| Araneae        |     1 |
| Diptera        |     1 |
| Ichneumonoidea |     1 |
| Psocodea       |     1 |

Now I need to fill out RTL’s submission form.

``` r
## Downloaded data from Arctos (<http://arctos.database.museum/SpecimenResults.cfm?project_id=10003271&collection_id=46>).
data1 <- read.csv("ArctosData_BB6BD7A74E.csv", stringsAsFactors=FALSE)

## Now get barcodes.
partdetails <- strsplit(data1$PARTDETAIL, "] ")
barcode <- sapply(partdetails, "[", 2)
barcode <- strsplit(barcode, " \\(")
barcode <- sapply(barcode, "[", 1)
barcode
length(unique(barcode))
[1] 26 ## Good.

## Assemble identifiers into data frame.
data1$barcode <- barcode
identifiers <- data1[,c("GUID", "barcode")]
write.csv(identifiers, "2020-01-03-1341_identifiers.csv", row.names=FALSE)
```

I selected the mlCOIlintF/jgHCO2198
(GGWACWGGWTGAACWGTWTAYCCYCC/TAIACYTCIGGRTGICCRAARAAYCA) primer set based
on the analysis of Hajibabaei et al. ([2019](#ref-hajibabaei_coi_2019)).

## Monday, January 6

To do

  - ~~Ship out 2019 black spruce sweep net samples.~~
  - Get updated prescription for Sandpiper Lake.
  - Find *Refuge Notebook* author for this week.
  - Review Sandpiper Lake MRDG.
  - *Refuge Notebook* catch-up.
  - Sandpiper Elodea RFP.
  - Visit site SK03?
  - Pesticide applicator CEUs.
  - Publish LTEMP bird data.
  - Review Programmatic Environmental Assessment of USFWS Management
    Strategy for Elodea and Other Submersed Aquatic Invasive Plants in
    the Alaska Region

I packaged sweep net samples and drove them to Kenai to ship them out to
RTL Genomics (FedEx tracking number: 813677694168).

Contents:

| GUID                                                                  | barcode      |
| :-------------------------------------------------------------------- | :----------- |
| [KNWR:Ento:11332](http://arctos.database.museum/guid/KNWR:Ento:11332) | UAM100185909 |
| [KNWR:Ento:11333](http://arctos.database.museum/guid/KNWR:Ento:11333) | UAM100185910 |
| [KNWR:Ento:11334](http://arctos.database.museum/guid/KNWR:Ento:11334) | UAM100185911 |
| [KNWR:Ento:11335](http://arctos.database.museum/guid/KNWR:Ento:11335) | UAM100185912 |
| [KNWR:Ento:11336](http://arctos.database.museum/guid/KNWR:Ento:11336) | UAM100185913 |
| [KNWR:Ento:11337](http://arctos.database.museum/guid/KNWR:Ento:11337) | UAM100185914 |
| [KNWR:Ento:11342](http://arctos.database.museum/guid/KNWR:Ento:11342) | UAM100185918 |
| [KNWR:Ento:11343](http://arctos.database.museum/guid/KNWR:Ento:11343) | UAM100185919 |
| [KNWR:Ento:11344](http://arctos.database.museum/guid/KNWR:Ento:11344) | UAM100185920 |
| [KNWR:Ento:11345](http://arctos.database.museum/guid/KNWR:Ento:11345) | UAM100185921 |
| [KNWR:Ento:11346](http://arctos.database.museum/guid/KNWR:Ento:11346) | UAM100185922 |
| [KNWR:Ento:11347](http://arctos.database.museum/guid/KNWR:Ento:11347) | UAM100185923 |
| [KNWR:Ento:11348](http://arctos.database.museum/guid/KNWR:Ento:11348) | UAM100185924 |
| [KNWR:Ento:11349](http://arctos.database.museum/guid/KNWR:Ento:11349) | UAM100185925 |
| [KNWR:Ento:11350](http://arctos.database.museum/guid/KNWR:Ento:11350) | UAM100185926 |
| [KNWR:Ento:11351](http://arctos.database.museum/guid/KNWR:Ento:11351) | UAM100185927 |
| [KNWR:Ento:11352](http://arctos.database.museum/guid/KNWR:Ento:11352) | UAM100185928 |
| [KNWR:Ento:11353](http://arctos.database.museum/guid/KNWR:Ento:11353) | UAM100185929 |
| [KNWR:Ento:11354](http://arctos.database.museum/guid/KNWR:Ento:11354) | UAM100185930 |
| [KNWR:Ento:11355](http://arctos.database.museum/guid/KNWR:Ento:11355) | UAM100185931 |
| [KNWR:Ento:11356](http://arctos.database.museum/guid/KNWR:Ento:11356) | UAM100185932 |
| [KNWR:Ento:11357](http://arctos.database.museum/guid/KNWR:Ento:11357) | UAM100185933 |
| [KNWR:Ento:11358](http://arctos.database.museum/guid/KNWR:Ento:11358) | UAM100185934 |
| [KNWR:Ento:11359](http://arctos.database.museum/guid/KNWR:Ento:11359) | UAM100185935 |
| [KNWR:Ento:11360](http://arctos.database.museum/guid/KNWR:Ento:11360) | UAM100185936 |
| [KNWR:Ento:11361](http://arctos.database.museum/guid/KNWR:Ento:11361) | UAM100185937 |

I chose the *mlCOIlintF*/*jgHCO2198*
(GGWACWGGWTGAACWGTWTAYCCYCC/TAIACYTCIGGRTGICCRAARAAYCA) primer set on
the submission form.

These specimens were added to loan number KNWR-2020.01-RTLGenomics-Ento.

I started communicating and planning for the spring herbicide
application to Sandpiper Lake.

I sorted most of Berlese sample
[KNWR:Ento:11362](http://arctos.database.museum/guid/KNWR:Ento:11362),
but this was difficult. I had a hard time transferring tiny mites from
the sample into a vial without also transferring debris. I did not
finish.

## Tuesday, January 7

To do

  - Get updated prescription for Sandpiper Lake.
  - Write *Refuge Notebook* article for this week.
  - Review Sandpiper Lake MRDG.
  - *Refuge Notebook* catch-up.
  - Sandpiper Elodea RFP.
  - Visit site SK03?
  - Pesticide applicator CEUs.
  - Publish LTEMP bird data.
  - Review Programmatic Environmental Assessment of USFWS Management
    Strategy for Elodea and Other Submersed Aquatic Invasive Plants in
    the Alaska Region

I received the technical review evaluation for the Slikok manuscript.
There are a number of requests for changes to the supplementary files.

I started a *Refuge Notebook* article on *Entomobrya nivalis*. I went on
a short walk looking for *E. nivalis* under bark of birches,
cottonwoods, and spruces. I found other arthropods, but no springtails.

I restarted writing a *Refuge Notebook* article, this time Walter Evans’
1897-1898 agricultural exploration of southern Alaska.

## Wedesday, January 8

To do

  - Submit *Refuge Notebook* article for this week.

I worked on my *Refuge Notebook* article, getting it submitted.

I entered data for *Hypnoidus bicolor* specimen
[KNWR:Ento:11363](http://arctos.database.museum/guid/KNWR:Ento:11363).
There was not a previusly entered georeferenced record from the Refuge.

## Thursday, January 9

Derek had entered the AWQMS (Ambient Water Quality Monitoring System)
dataset into UAMObs:Ento. I think the search URL below pulls these
records.

<https://arctos.database.museum/SpecimenResults.cfm?&entered_by=ffdss&beg_entered_date=2020-01-08&end_entered_date=2020-01-08>

I should check these for new Kenai NWR records.

I started addressing the issues with the supplementary files listed in
the technical review of the Slikok manuscript.

## Friday, January 10

I did some communicating regarding elodea eradication work at Sandpiper
Lake this spring.

I continued addressing issues with the supplementary files listed in the
technical review of the Slikok manuscript.

``` r
## Working on the raw occurrence data.
wd <- "D:/projects/Slikok_watershed/data/work_space/2020-01-10_supplementary_files"
setwd(wd)

od1 <- read.csv("oo_358153.csv", stringsAsFactors=FALSE)

summary(od1$COORDINATEUNCERTAINTYINMETERS)

## Looking at records with the smallest values.
od1[od1$COORDINATEUNCERTAINTYINMETERS==3,]
## Those are earthworms in the 0.25 m2 frames, so that is ok.

## Looking at records with the smallest values.
od1[od1$COORDINATEUNCERTAINTYINMETERS==810,]
## The LOCALITY_REMARKS field actually documents this well.

## Still, I will the number of significant figures to conform to the technical review.
od1$COORDINATEUNCERTAINTYINMETERS <- signif(od1$COORDINATEUNCERTAINTYINMETERS, 2)

levels(as.factor(od1$PARTS))
## Why do some have two values, e.g. "whole organism (fluid-preserved); whole organism (fluid-preserved)"?

od1[od1$PARTS=="whole organism (fluid-preserved); whole organism (fluid-preserved)",]
## That actually looked good. These are specimen lots where some individuals were sent in for sequencing and others were retained. I will just clean this up as requested, though.
od1$PARTS[!od1$PARTS=="media"] <- "whole organism"

## Rounding coordinates to 5 decimal places.
od1$DEC_LAT <- round(od1$DEC_LAT, 5)
od1$DEC_LONG <- round(od1$DEC_LONG, 5)

## Saving here.
write.csv(od1, "2020-01-10-1113_occurrences.csv", row.names=FALSE)

## Now for the analysis dataset.
od1 <- read.csv("oo_359083.csv", stringsAsFactors=FALSE)

od1$COORDINATEUNCERTAINTYINMETERS <- signif(od1$COORDINATEUNCERTAINTYINMETERS, 2)

od1$PARTS[!od1$PARTS=="media"] <- "whole organism"

## Rounding coordinates to 5 decimal places.
od1$DEC_LAT <- round(od1$DEC_LAT, 5)
od1$DEC_LONG <- round(od1$DEC_LONG, 5)

## Saving here.
write.csv(od1, "2020-01-10-1122_analysis_dataset.csv", row.names=FALSE)

## Now for the community dataset.
cd1 <- read.csv("oo_365062.csv", stringsAsFactors=FALSE)

cd1$frequency <- round(cd1$frequency, 2)

write.csv(cd1, "2020-01-10-1154_community_dataset.csv", row.names=FALSE)
```

I also worked on revising the text of the Slikok project manuscript
after receiving many comments on it from one reviewer.

## Monday, January 13

To do:

  - Worm information to ADF\&G.
  - ~~Finish revising and resubmit Slikok manuscript.~~

I finished revising and resubmitted the Slikok manuscript for technical
review.

I worked on putting together information for the ADF\&G comments on a
proposed regulation on *Lumbricus* species worms.

I generated maps of *Lumbricus* species distribution data using
SimpleMappr (Shorthouse [2010](#ref-shorthouse_simplemappr_2010)) and
data from GBIF (GBIF.org
[2020](#ref-gbiforg_gbif_2020-1)[a](#ref-gbiforg_gbif_2020-1),
[2020](#ref-gbiforg_gbif_2020)[b](#ref-gbiforg_gbif_2020)).

![Map of *Lumbricus terrestris* distribution in
Alaska.](2020-01-13-1013_Lumbricus_terrestris_in_Alaska.jpg)  
Map of *Lumbricus terrestris* distribution in Alaska. Locations were
obtained from GBIF (GBIF.org
[2020](#ref-gbiforg_gbif_2020-1)[a](#ref-gbiforg_gbif_2020-1)).

![Map of *Lumbricus rubellus* distribution in
Alaska.](2020-01-13-1014_Lumbricus_rubellus_in_Alaska.jpg)  
Map of *Lumbricus rubellus* distribution in Alaska.

I learned that *Lumbricus castaneus* (Savigny, 1826) is now *Enterion
castaneum Savigny*, 1826 according to GBIF (GBIF Secretariat
[2019](#ref-gbif_secretariat_enterion_2019)).

## Tuesday, January 14

To do:

  - ~~Worm information to ADF\&G.~~
  - ~~Submit Slikok manuscript.~~
  - Review this week’s *Refuge Notebook* article.

The Slikok manuscript made it through the technical review. I submitted
it to the journal.

Tyler sent me more coordinates of *Lumbricus* locations in Alaska, from
which I made updated maps.

I worked on putting together information for the ADF\&G comments on a
proposed regulation on *Lumbricus* species worms, getting a draft sent
at the end of the day.

## Wednesday, January 15

To do:

  - ~~Review and submit this week’s *Refuge Notebook* article.~~
  - ~~Review Sandpiper Lake MRDG.~~

I received some more earthworm references through ILL. I also was asked
for more information on native worms. I revised my comments to ADF\&G
and sent these out.

I edited and submitted this week’s *Refuge Notebook* article.

I reviewed the Sandpiper Lake elodea treatment Minimum Requirements
Decision Guide Workbook.

## Thursday, January 16

I picked up some historical documents from the fisheries office, scanned
them, and filed them. There is a record of elodea from Vogel Lake from
1964. I think this might have been a misidentification of *Hippuris*,
but it is hard to know. A thorough survey was done on Sandpiper Lake,
but no elodea was documented there. Later I returned these documents.

## Friday, January 17

We had a biology staff meeting today, our first since John retired.

Tasks for me:

  - Dawn and I need to plan for post-fire burn severity and maybe
    vegetation sampling within the Swan Lake Fire

  - I need to look into elodea genetics to determine the origin of the
    Sandpiper Lake elodea infestation.

  - In the short term I need to get the elodea funding application done
    and write the *Refuge Notebook* article for next week.

Dawn and I determined that some of the most interesting questions with
the Swan Lake fire have to do with burning of alpine tundra and
reburning of some locations by multiple fires.

I mapped LTEMP sites within the fire perimeter, looking for alpine
tundra sites for which we have pre-fire vegetation data.

  - 3161 - tundra north of Mysery Creek. Kenai NWR did veg work.

  - 3175 - tundra north side of Mystery Hills. Kenai NWR did veg work.

  - 3176 - no photo. Was it ever surveyed? It was sampled by FIA for
    veg. This looks like subalpine hemlock forest. Plants documented
    here by FIA: *Pleurozium schreberi*, *Cornus canadensis* *Empetrum
    nigrum*, *Gymnocarpium dryopteris*, *Lycopodium annotinum*,
    *Lycopodium clavatum*, *Menziesia ferruginea*, *Rubus pedatus*,
    *Sorbus sitchensis*, *Trientalis europaea*, *Tsuga mertensiana*,
    *Vaccinium caespitosum*, and *Vaccinium vitis-idaea*. I checked on
    Google Earth. This was a hemlock stand on the north slope north of
    Fuller Lake.

There were really only those two tundra sites within the fire. How about
the Paez sites (Paez [1991](#ref-paez_alpine_1991))?

I entered the coordinates from the Mystery Hills sites:

| plot | utm\_e |  utm\_n |
| ---: | -----: | ------: |
|   62 | 655073 | 6713896 |
|   63 | 655073 | 6714016 |
|   64 | 655039 | 6713748 |
|   79 | 654989 | 6713820 |
|   80 | 655089 | 6713779 |
|   81 | 655003 | 6714155 |
|  102 | 656300 | 6713517 |
|  103 | 656290 | 6713599 |
|  138 | 656294 | 6713683 |
|  139 | 656303 | 6713772 |
|  140 | 656033 | 6713516 |
|  141 | 656108 | 6713513 |
|  142 | 655901 | 6713514 |

I convereted these to lat/lon.

``` r
wd <- "D:/projects/Fire/2019_Swan_Lake_Fire/work_space/2020-01-17_plot_coordinates"
setwd(wd)

library(maptools)

wgs84 <- "+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs"
utmz5n <- "+proj=utm +zone=5 +ellps=WGS84 +datum=WGS84 +units=m +no_defs"

data1 <- read.csv("2020-01-17-1447_Paez_Mystery_Hills_locaclities.csv")
coordinates(data1) <- c("utm_e", "utm_n")
proj4string(data1) <- CRS(utmz5n)
data2 <- spTransform(data1, CRS(wgs84))

write.csv(data2, "2020-01-17-1506_Paez_Mystery_Hills_locaclities_WGS84.csv", row.names=FALSE)
```

| plot | lat         | lon           |
| ---: | :---------- | :------------ |
|   62 | 60.53113795 | \-150.1737958 |
|   63 | 60.53221407 | \-150.1737019 |
|   64 | 60.52982385 | \-150.1745303 |
|   79 | 60.53048878 | \-150.1753839 |
|   80 | 60.53008257 | \-150.1735961 |
|   81 | 60.53348754 | \-150.1748672 |
|  102 | 60.52726451 | \-150.1517647 |
|  103 | 60.52800372 | \-150.1518821 |
|  138 | 60.52875543 | \-150.1517431 |
|  139 | 60.52955004 | \-150.1515091 |
|  140 | 60.52735916 | \-150.156624  |
|  141 | 60.52730317 | \-150.1552616 |
|  142 | 60.52739238 | \-150.1590275 |

![Map of the Swan Lake Fire and Carlos Paez’s 1988-1989 vegetation plots
in the Mystery Hills.](2020-01-17-1515_Swan_Lake_Fire_Paez.jpg)  
Map of the Swan Lake Fire and Carlos Paez’s 1988-1989 vegetation plots
in the Mystery Hills.

## Monday, January 20

I started researching for a *Refuge Notebook* article on wildfire in
tundra and the Swan Lake Fire.

## Tuesday, January 21

To do:

  - *Refuge Notebook* article
  - Sandpiper Elodea RFP
  - earthworm correspondence
  - ~~blackfish permit reporting~~

I summarized the work done on blackfish in 2019 and got the required
project summary and data sent in.

Blackfish collected in 2019:

| lat       | lon          | date       | age      | number |
| :-------- | :----------- | :--------- | :------- | -----: |
| 60.56993  | \-151.19294  | 2019-06-27 | juvenile |      1 |
| 60.559862 | \-151.187067 | 2019-08-22 | juvenile |      4 |
| 60.559265 | \-151.187372 | 2019-08-23 | juvenile |      1 |
| 60.568077 | \-151.19013  | 2019-08-23 | adult    |      5 |

For the *Refuge Notebook* article on fire in tundra I checked Langille’s
report (Langille [1904](#ref-langille_proposed_1904)). Although he
talked about fire in Canyon Creek and other places, no mention was made
of fire making it up into the alpine.

I found the mention of fire in tundra in the 2014 Funny River Fire
(Morton [2014](#ref-morton_ghosts_2014)).

The 1991 Pothole Lake Fire burned into the alpine to 1012 m judging from
the fire polygon and digital elevation model. I found the KNWR documents
from the Pothole Lake Fire. This fired did burn into the alpine to 3000
ft. in multiple places.

LTEMP plot 3220 was in the Pothole Lake fire. So was plot 3204. Plot
3204 was burned forest in 2004. Plot 3220 was lush alder,
*Calamagrostis*, and cow parsnip in 2004. Neither was in tundra.

The Funny River Fire made it to about 2100 ft.

The 1950 Big Indian Creek fire burned to about 3000 ft. in the alpine
based on the fire history GIS layer.

Later at home I continued work on this *Refuge Notebook* article.

## Wednesday, January 22

To do:

  - ~~*Refuge Notebook* article.~~
  - Sandpiper Elodea RFP.
  - earthworm correspondence.
  - Take A-110 class.

I looked up the 1950 Big Indian Creek fire in the 1950 annual narrative.
There the fire was reported to be 3-5 acres, much smaller than the
polygon in the GIS layer.

I finished a draft of my *Refuge Notebook* article this morning and got
it sent in to the *Clarion*.

I resumed work on the elodea RFP.

I attended Todd’s brown bag lunch talk on hummingbird banding.

I spent the rest of the day on the Sandpiper Lake elodea RFP.

## Thursday, January 23

To do:

  - ~~Get draft Sandpiper Elodea RFP to Steve.~~
  - earthworm correspondence.
  - Take A-110 class.

I completed a draft Sandpiper Lake elodea RFP.

I found photos of Elizabeth Bella, Donna Handley, and Nate Olson
surveying Vogel Lake using throw rakes to look for *Elodea* on August
14, 2013. None was found.

There has been some population genetics work done on *Elodea* (Kadono et
al. [1997](#ref-kadono_genetic_1997); Gross et al.
[2003](#ref-gross_unterscheidung_2003); Huotari et al.
[2011](#ref-huotari_population_2011); Huotari and Korpelainen
[2013](#ref-huotari_comparative_2013)).

I submitted to Alaska DNR a Permitting Quarantined Species
Transport/Import Request for collecting Elodea specimens from Sandpiper
Lake.

Lisa Saperstein sent me a copy of Lipkin
([2007](#ref-lipkin_investigation_2007)) relating to fire in alpine
tundra.

## Friday, January 24

To do:

  - ~~Help with Sandpiper Lake *Elodea* RFP, if needed.~~
  - Start Sandpiper Lake *Elodea* EA.
  - ~~earthworm correspondence.~~
  - Take A-110 class.
  - *Refuge Notebook* catch-up.

I did a little bit of checklisting work on
[KenaiNWRspecies](https://github.com/mlbowser/KenaiNWRspecies).

I attended the a meeting at the ADF\&G office on the Miller Creek
drainage pike earadication project. Rob Massengill gave me some live
elodea that he had collected in Sandpiper Lake and kept alive in a
container in his office. I learned that Sandpiper Lake is a popular lake
for touch-and-go practice for aircraft from Anchorage.

We submitted the Sandpiper Lake *Elodea* RFP.

Todd and I met with Kristi about Swan Lake Fire suppression repair work
beginning next week. I will be going on on Monday and Wednesday.

I entered data for the *Elodea* specimen from Sandpiper Lake in Arctos
([KNWR:Herb:12443](http://arctos.database.museum/guid/KNWR:Herb:12443)).
I keyed this using the key of Bowmer
([1995](#ref-bowmer_identification_1995)).

![*Elodea* from Sandpiper Lake, specimen
KNWR:Herb:12443.](2020-01-24-1546_Elodea_from_Sandpiper.jpg)  
*Elodea* from Sandpiper Lake, specimen
[KNWR:Herb:12443](http://arctos.database.museum/guid/KNWR:Herb:12443).

## Monday, January 27

To do:

  - ~~Swan Lake Fire Suppression Repair scouting.~~

Kyle McNally and I met at the Division of Forestry at 10:00. From there
we drove out Skilak Lake Road to the Marsh Lake area dozer line. We
walked this line for some distance, sizing up the repair work to be
done. Woody debris was stacked on the west side of the line and it
looked like it should work well to pull it back over the line with the
current snow conditions. We walked only a portion of the line.

There were almost no birches this area. I saw no birch seeds in the
snow.

![Marsh Lake area dozer
line.](2020-01-27-1154_Marsh_Lake_area_dozer_line.jpg)  
Marsh Lake area dozer line. Woody material is stacked in a windrow on
the left (west) side of the line. I have no coordinates for this image
because the camera’s GPS had not acquired a position.

We also hiked the Kenai River to Skilak Road line. The seepage area that
had been a difficulty before is still flowing, but Kyle and I thought
that equipment should be able to get across this without much damage to
the ground because the ground around the seeps appears to be frozen
solidly.

![Seepage area near Kenai River.](2020-01-27-1310_seepage_area.jpg)  
Seepage area near Kenai River at 60.459053 °N, 150.178570 °W.

Repair work does need to be completed beyond the seepage area.

![Dozer line in need of repair near Kenai
River.](2020-01-27-1323_Kenai_river_dozer_line.jpg)  
Dozer line in need of repair near Kenai River at 60.457028 °N,
150.175910 °W.

I enjoyed this day of stomping through the woods.

## Tuesday, January 28

To do:

  - ~~File pictures, etc. from yesterday.~~
  - Sandpiper Lake *Elodea* EA.
  - BDJ Slikok manuscript revision.
  - ~~*Elodea* genetics correspondence.~~
  - ~~Website updates.~~
  - Edit this week’s *Refuge Notebook* article.

I learned this morning that our Slikok manuscript has been accepted into
*Biodiversity Data Journal*. Revisions will need to be completed within
one week.

I made some website updates requested by Mark.

I received ITS sequences from Alaska and GenBank *Elodea* samples. I
quickly submitted thise to NGPhylogeny.fr just to see what the phylogeny
would look like. I used the “NGPhylogeny Analyse - FastME/OneClick”
analysis (Criscuolo and Gribaldo [2010](#ref-Criscuolo_2010); Desper and
Gascuel [2002](#ref-Desper_2002); Junier and Zdobnov
[2010](#ref-Junier_2010); Katoh and Standley [2013](#ref-Katoh_2013);
Lefort et al. [2015](#ref-Lefort_2015); Lemoine et al.
[2018](#ref-Lemoine_2018)). This analysis is (temporarily?) available at
<https://ngphylogeny.fr/workspace/history/deb556bc487a96e5>.

![Quick phylogram of *Elodea*
sequences.](2020-01-28-1252_Elodea_phylo.png)  
Quick phylogram of *Elodea* sequences made using NGPhylogeny.fr and
visualized using iTOL (Letunic and Bork
[2019](#ref-Letunic_et_al_2019)).

I worked on editing this week’s *Refuge Notebook* article.

To avoid going crazy from too much looking at a computer, I examined
Anisopodidae specimen
[KNWR:Ento:8334](http://arctos.database.museum/guid/KNWR:Ento:8334).
Keying using McAlpine et al. ([1983](#ref-mcalpine_manual_1983)), p. 311
1 → 2 → *Sylvicola*. Keying using Pratt and Pratt
([1980](#ref-pratt_notes_1980)), p. 87 → 1 → 2 *Sylvicola fuscatus*
(Fabricius, 1775). This is a female.

## Wednesday, January 29

To do:

  - ~~Swan Lake suppression repair meeting.~~
  - Sandpiper Lake *Elodea* EA.
  - BDJ Slikok manuscript revision.
  - ~~Finish editing and submit this week’s *Refuge Notebook* article.~~

I worked on revising this week’s *Refuge Notebook* article, getting it
submitted in the afternoon.

Todd, Kristi, and I drove to the Division of Forestry, where we met with
DOF folks to plan the Swan Lake Fire suppression repair work for the
next few weeks.

I worked on revising the BDJ Slikok manuscript.

## Thursday, January 30 {\#2020-01-30}

To do:

  - BDJ Slikok manuscript revision.
  - Sandpiper Lake *Elodea* EA.

I worked on the BDJ Slikok manuscript revision. I created a flow chart
as requested by one of the reviewers.

``` r
## Trying DiagrammeR package for making graphs for the Slikok manuscript.
wd <- "D:/projects/Slikok_watershed/data/work_space/2020-01-30_flow_charts"
setwd(wd)

library(DiagrammeR)

mermaid("
graph LR

subgraph Legend
AA(field sampling):::field-->BB(laboratory steps):::knwr
CC(commercial services):::service-->DD(published data):::pub
end

A(vascular plant, bryophyte,<br/>and lichen observations):::field -->C(Arctos<br/>occurrence records):::pub

D(vascular plant<br/>specimens):::field -->E(morphological<br/>identification):::knwr
E-->C

F(bryophyte and lichen<br/>specimens):::field -->G(morphological identification<br/>by Enlichened Consulting):::service
G-->C

H(bird call observations):::field -->C

C-->J(GBIF<br/>occurrence records):::pub

K(worms collected by<br/>hot mustard extraction):::field -- adult Lumbricidae -->M(morphological<br/>identification):::knwr
M-->C

K-- Enchytraeidae and<br/>immature Lumbricidae -->O(COI sequencing<br/>by LifeScanner):::service
O-->C
O-->P(BOLD<br/>occurrence records):::pub
P-->J

Q(sweep net samples of<br/>terrestrial arthropods):::field -->S(High-Throughput Sequencing<br/>by RTL Genomics):::service
S-- raw sequence data -->T(metagenomic analysis):::knwr
T-->C
%% S-- raw sequence data -->U(GenBank<br/>Sequence Read Archive):::pub
%% S-- raw sequence data -->V(Zenodo):::pub

classDef field fill:#9DE093;
classDef knwr fill:#ffffff;
classDef service fill:#FFDB00;
classDef pub fill:#FFD3F8;

style Legend fill:#ffffff,stroke:#000000

linkStyle 0 stroke:#fff,stroke-width:0px;
linkStyle 1 stroke:#fff,stroke-width:0px;

")
```

![Slikok project flowchart for BDJ
manuscript](2020-01-30-1117_flowchart.png)  
Slikok project flowchart for BDJ manuscript.

I pulled blackfish specimens out of the freezer so that Apphia and I can
dissect out stomach contents.

In the afternoon, Apphia and I dissected stomach contents from the
larger blackfish that I had collected on August 23, 2019 (field id:
2019-08-23\_MLB02) (Bowser [2019](#ref-bowser_work_2019)). Apphia
dissected out the digestive tracts, determined the sex of each fish, and
helped with the photographs. I transfered the contents of the stomachs
and intestines into vials of propylene glycol by squeezing the contents
out using forceps.

| temporary ID      | total length (mm) | sex    |
| :---------------- | ----------------: | :----- |
| 2020-01-30\_MLB01 |                69 | male   |
| 2020-01-30\_MLB02 |                95 | female |
| 2020-01-30\_MLB03 |                96 | female |
| 2020-01-30\_MLB04 |                75 | male   |
| 2020-01-30\_MLB05 |                88 | female |

## Friday, January 31

To do:

  - ~~BDJ Slikok manuscript revision.~~
  - Enter data from blackfish specimens.
  - Sandpiper Lake *Elodea* EA.

I revised the BDJ manuscript and submitted a draft to the journal.

At 10:30 my supervisors and I met to discuss goals and plans for 2020
and beyond.

Priority projects or me:

  - Perform an occupancy analysis of the Slikok project invertebrate
    data and publish this.
  - Sandpiper Lake *Elodea* eradication.
  - Swan Lake Fire burn severity/vegetation plots.

One of my supervisors wants to see an assessment of the 2004–2006 Long
Term Ecological Monitoring Program, wanting to know what we learned from
it and when—if ever—such an effort should be repeated. I expressed that
we are at least planning on publishing datasets from this project.

My supervisors did think it would be appropriate to collaborate with
ADF\&G to sample invertebrates in the Miller Creek drainage ahead of
expected pesticide applications.

Later at home I added records from State of Alaska Department of
Environmental Conservation ([2005](#ref-state_of_alaska_dec_2005)) to
the Kenai National Wildlife Refuge’s checklist. There were only two
species not already on the Refuge’s checklist: *Caenis youngi* and
*Glyphopsyche irrorata*.

# February

## Monday, February 3

To do:

  - ~~Ship out *Elodea* specimens.~~
  - ~~Ship out blackfish stomach contents.~~
  - Sandpiper Lake *Elodea* EA.

I packaged live Sandpiper Lake *Elodea* specimens to go out this morning
(FedEx tracking \#: 813677694043).

I packaged the five samples of blackfish stomach contents from January
30 and packaged these to go out to RTL Genomics this morning (FedEx
tracking \#: 813677694032).

I worked a little on the the [Kenai National Wildlife Refuge
checklist](https://github.com/mlbowser/KenaiNWRspecies), moving three
species (*Corticaria ferruginea*, *Enicmus mimus*, and *Xylita
laevigata*) to FWSpecies and requested the addition of *Corticarina
minuta*, *Cortinarius lucorum*, and *Stephostethus armatulus* to
FWSpecies’ taxonomy.

I found a data sheet from a 2013 vegetation survey of Vogel Lake. I
intend to enter these data into Arctos, but first I wanted to search for
what had been documented previously in the watershed, so I converted the
HUC12 190203021903 “Miller Creek-Frontal Cook Inlet” watershed. I
simplified this using ArcMap’s Simplify Polygon tool, with a
simplification tolerance of 500 m. I converted this to WKT so I could
run a GBIF search (GBIF.org
[2020](#ref-gbiforg_gbif_2020-2)[c](#ref-gbiforg_gbif_2020-2)).

I finished sorting Berlese sample
[KNWR:Ento:11362](http://arctos.database.museum/guid/KNWR:Ento:11362)
that I had started sorting on January 6.

Contents:

| identification | count |
| :------------- | ----: |
| Lepidoptera    |     1 |
| Collembola     |    23 |
| Coleoptera     |     1 |
| Arachnida      |   260 |
| Geophilomorpha |     2 |
| Lithobiomorpha |     1 |
| Myrmicinae     |     1 |
| Nematoda       |     1 |
| *Cixius*       |     1 |

There still were some minute mites in this sample. I had spent about 3–4
hours on this sample. I may need to use some kind of time limit, maybe
2–3 hours per sample.

I uploaded the 2013 data sheet from Vogel Lake onto Arctos (Bella
[2013](#ref-bella_Vogel_2013)), entered observation data from this data
sheet, and made an [Arctos
project](http://arctos.database.museum/project/10003326) for these data.

## Tuesday, February 4

To do:

  - Sandpiper Lake *Elodea* EA.

I worked a little on the the [Kenai National Wildlife Refuge
checklist](https://github.com/mlbowser/KenaiNWRspecies), moving three
species (*Agoliinus congregatus*, *Dendroides ephemeroides*, and
*Rhizophagus dimidiatus*) to FWSpecies.

The Vogel Lake plant records from 2013 are now records
[KNWRObs:Herb:831](http://arctos.database.museum/guid/KNWRObs:Herb:831)–[KNWRObs:Herb:867](http://arctos.database.museum/guid/KNWRObs:Herb:867).
I updated some of the identifications.

I got started on the Sandpiper Lake *Elodea* Environmental Assessment. I
requested Marchand ([1985](#ref-marchand_oxygen_1985)) through
[ARLIS](https://www.arlis.org/).

## Wednesday, February 5

To do:

  - ~~Edit and submit today’s *Refuge Notebook*.~~
  - Sandpiper Lake *Elodea* EA.

I worked some on the *Elodea* Environmental Assessment.

I attended the monthly Alaska Invasive Species Partnership
teleconference at 09:00 to talk about earthworms.

I attended a meeting about preparing for morel hunters in the Swan Lake
Fire this spring.

I edited and submitted this week’s *Refuge Notebook* article.

Inspired by flipping through Hedlin ([1974](#ref-hedlin_cone_1974)), I
took a short walk on the Keen Eye Trail to collect spruce cones. I found
some under a singe tree at 60.46457 °N, 151.07216 °W.

In one cone there was an orange (Diptera?) larva in the stem in a white,
silken cocoon. This I photographed (frames 659–665) and collected
(LifeScanner vial BOLD-268).

![Larva in pith of spruce cone (vial
BOLD-268).](2020-02-05_larva_BOLD-268.jpg)  
Larva in pith of spruce cone (vial BOLD-268).

In another cone I found smaller, silken cocoons containing orange
immatures (Diptera?). The first I photographed (frames 666–670) and
collected into vial BOLD-8W0.

![Larva in scales of spruce cone (vial
BOLD-8W0).](2020-02-05_larva_BOLD-8W0.jpg)  
Larva in scales of spruce cone (vial BOLD-8W0).

In the same cone I photographed another cocoon (frames 671–676) and
collected it into vial BOLD-QH4.

Also from the same cone I photographed another cocoon (frames 677–681)
and collected it into vial BOLD-BS8.

In most of the cones I examined I found no insects.

## Thursday, February 6

To do:

  - Sandpiper Lake *Elodea* SEA.
  - ~~Help Mark with ROV testing.~~

I worked on the Sandpiper Lake *Elodea* SEA.

In the afternoon, Mark and I drove to Arc Lake, where we cut a hole in
the ice and tested the QYSEA ROV. The ROV worked well, but the lake was
quite dark under the ice so that we could not see much unless the ROV
was on the bottom or just under the surface ice.

![Deploying ROV in Arc Lake.](2020-02-06_ROV.jpg)  
Deploying ROV in Arc Lake.

## Friday, February 7

To do:

  - ~~Sandpiper Lake *Elodea* SEA.~~

I worked on the Sandpiper Lake *Elodea* SEA, getting a draft sent out in
the afternoon\!

It snowed heavily this morning, but it was warm. Todd and I saw a number
of live cluster flies (*Pollenia vagabunda*) on the new snow and beside
the visitor center and headquarters buildings.

At the end of the day I examined specimen
[KNWR:Ento:7705](http://arctos.database.museum/guid/KNWR:Ento:7705), a
colletid bee. The forewing has two submarginal cells, so it should be
*Hylaeus*. The only other genus reported from Alaska is *Colletes*,
which has three submarginal cells (Packer et al.
[2007](#ref-packer_bee_genera_2007)).

## Saturday, February 8

I received information about kokanee in Sandpiper Lake, so I
incorporated this into the draft SEA.

I worked on the [Kenai National Wildlife Refuge’s
checklist](https://github.com/mlbowser/KenaiNWRspecies), editing the
script to make a satifactory DwC-A file.

## Monday, February 10

I worked on the [Kenai National Wildlife Refuge’s
checklist](https://github.com/mlbowser/KenaiNWRspecies), adding a
minimal checklist export.

I sorted Berlese sample
[KNWR:Ento:11364](http://arctos.database.museum/guid/KNWR:Ento:11364). I
cut off sorting at a 2 hour limit. Most material had been sorted. A
small number of Collembola and mites remained and were discarded.

| identification | count |
| :------------- | ----: |
| Myrmicinae     |     9 |
| Lithobiomorpha |     1 |
| Coleoptera     |     2 |
| Araneae        |    12 |
| Collembola     |   110 |
| Insecta        |     2 |
| Arachnida      |   204 |
| Chilopoda      |     2 |
| Hemiptera      |     1 |

I learned today that we had purchased herbicide last fall. I inventoried
our aquatic herbicides. We have 41 pails of SonarOne, (20 lbs. each), a
total of 820 lbs. We have 20 boxes of Littora (5 gal. each), a total of
100 gal. of Littora.

I revised the *Elodea* RFP based on these numbers.

## Tuesday, February 11

To do:

  - ~~*Elodea* meeting.~~
  - ~~Review/edit *Refuge Notebook* article.~~

I sorted Berlese sample
[KNWR:Ento:11365](http://arctos.database.museum/guid/KNWR:Ento:11365),
again cutting off sorting at 2 hr.

| identification | count |
| :------------- | ----: |
| Staphylinidae  |     1 |
| Ichneumonoidea |     1 |
| Insecta        |    11 |
| Arachnida      |   288 |
| Araneae        |     5 |
| Hymenoptera    |     2 |
| Collembola     |    45 |
| Hemiptera      |     9 |
| Thysanoptera   |     1 |

In the middle of the day I met with Katherine, Maura, Colin, and Steve
about Sandpiper *Elodea* permitting, logistics, etc.

I edited this week’s *Refuge Notebook* article.

I started going through the lists of plants from Sandpiper Lake
documented by Jakubas and Firman ([1984](#ref-jakubas_sandpiper_1984))
to add to the Sandpiper Lake SEA.

Species documented in and around Sandpiper Lake by Jakubas and Firman
([1984](#ref-jakubas_sandpiper_1984)) with the species codes that they
used on their map:

| identification                             | code |
| :----------------------------------------- | :--- |
| *Alnus* Mill.                              | A    |
| *Betula neoalaskana* Sarg.                 | MB   |
| *Comarum palustre* L.                      | MFF  |
| *Eleocharis* R.Br.                         | SR   |
| *Equisetum* fluviatile L.                  | HTF  |
| *Iris setosa* Pall. ex Link                | WF   |
| *Myrica gale* L.                           | SG   |
| *Myriophyllum* L.                          | MR   |
| *Nuphar polysepalum* Engelm.               | YPL  |
| *Nymphaea tetragona* Georgi                | DWL  |
| *Picea glauca* (Moench) Voss               | MS   |
| *Picea mariana* Britton, Sterns & Poggenb. | BS   |
| *Potamogeton alpinus* Balb.                | PA   |
| *Potamogeton berchtoldii* Fieb.            | PBr  |
| *Potamogeton foliosus* Raf.                | Pfo  |
| *Potamogeton gramineus* L.                 | PGr  |
| *Potamogeton natans* L.                    | PN   |
| *Potamogeton robbinsii* Oakes              | PRb  |
| *Potamogeton zosteriformis* Fernald        | PZ   |
| *Ranunculus aquatilis* L.                  | WWC  |
| *Schoenoplectus* (Rchb.) Palla             | Blr  |
| *Sparganium angustifolium* Michx.          | BR   |
| *Sparganium minimum* (L.) Fr.              | BRm  |

## Wednesday, February 12

To do:

  - ~~Send off *Refuge Notebook* article.~~
  - Board of Fish meeting arrangements.

Identifications

I sorted Berlese sample
[KNWR:Ento:11366](http://arctos.database.museum/guid/KNWR:Ento:11366).
This was a sparser sample that took only about one hour to process.

| identification | count |
| :------------- | ----: |
| Arachnida      |   166 |
| Araneae        |     6 |
| Collembola     |    22 |

I worked a little on the Integrated Pest Management Plan for Eradicating
Elodea from the Kenai Peninsula, Working Draft 2020.

New molecular identifications of some KNWR specimens were made on BOLD.
I checked these using BOLD’s ID engine.

| GUID                                                                | identification            |
| :------------------------------------------------------------------ | :------------------------ |
| [KNWR:Ento:4382](http://arctos.database.museum/guid/KNWR:Ento:4382) | *Dorylomorpha spinosa*    |
| [KNWR:Ento:5264](http://arctos.database.museum/guid/KNWR:Ento:5264) | *Tomosvaryella sylvatica* |
| [KNWR:Ento:5442](http://arctos.database.museum/guid/KNWR:Ento:5442) | *Dorylomorpha albitarsis* |
| [KNWR:Ento:6768](http://arctos.database.museum/guid/KNWR:Ento:6768) | *Pipunculus hertzogi*     |
| [KNWR:Ento:6769](http://arctos.database.museum/guid/KNWR:Ento:6769) | *Eudorylas slovacus*      |

The identification of specimen
[KNWR:Ento:5264](http://arctos.database.museum/guid/KNWR:Ento:5264) was
changed from *Tomosvaryella kuthyi* to *Tomosvaryella sylvatica*. I
searched on Arctos for additional records. Four records from the Slikok
project were identified as *Tomosvaryella kuthyi*. These were all
identifications from ASV SlikokOtu119, which I ran through BOLD’s ID
Engine. This is *Tomosvaryella sylvatica*. Affected records:
[UAMObs:Ento:239975](http://arctos.database.museum/guid/UAMObs:Ento:239975),
[UAMObs:Ento:240012](http://arctos.database.museum/guid/UAMObs:Ento:240012),
[UAMObs:Ento:240458](http://arctos.database.museum/guid/UAMObs:Ento:240458),
and
[UAMObs:Ento:240561](http://arctos.database.museum/guid/UAMObs:Ento:240561).

Now for *Eudorylas* records. BIN
[BOLD:ACZ4721](http://boldsystems.org/index.php/Public_BarcodeCluster?clusteruri=BOLD:ACZ4721)
is now mostly identified as *Eudorylas slovacus*.

SlikokOtu114 is *Eudorylas slovacus*. This applies to record
[UAMObs:Ento:240642](http://arctos.database.museum/guid/UAMObs:Ento:240642).

SlikokOtu130 is also *Eudorylas slovacus*. This applies to records
[UAMObs:Ento:240440](http://arctos.database.museum/guid/UAMObs:Ento:240440),
[UAMObs:Ento:240007](http://arctos.database.museum/guid/UAMObs:Ento:240007),
[UAMObs:Ento:239943](http://arctos.database.museum/guid/UAMObs:Ento:239943).

SlikokOtu775 is also *Eudorylas slovacus*. This applies to record
[UAMObs:Ento:239323](http://arctos.database.museum/guid/UAMObs:Ento:239323).

SlikokOtu1573 is also *Eudorylas slovacus*. This applies to record
[UAMObs:Ento:238974](http://arctos.database.museum/guid/UAMObs:Ento:238974).

SlikokOtu84 is also *Eudorylas slovacus*, affecting record
[UAMObs:Ento:238742](http://arctos.database.museum/guid/UAMObs:Ento:238742).

SlikokOtu62 is *Eudorylas sabroskyi*. This affects records
[UAMObs:Ento:239100](http://arctos.database.museum/guid/UAMObs:Ento:239100),
[UAMObs:Ento:239116](http://arctos.database.museum/guid/UAMObs:Ento:239116),
and
[UAMObs:Ento:239424](http://arctos.database.museum/guid/UAMObs:Ento:239424).

I added *Tomosvaryella sylvatica* and *Pipunculus hertzogi* to the Kenai
National Wildlife Refuge’s checklist in FWSpecies; the other names are
not currently in FWSpecies’ taxonomy.

I did get today’s *Refuge Notebook* article sent to the
[*Clarion*](https://www.peninsulaclarion.com/).

## Thursday, February 13

To do:

  - Board of Fish meeting arrangements.
  - ~~Call with Tracy~~
  - Botany 2020
  - ~~Draft Sandpiper SEA to DNR~~

I received LifeScanner identifications (but not sequences) for a number
of submitted vials today.

I sorted Berlese sample
[KNWR:Ento:11367](http://arctos.database.museum/guid/KNWR:Ento:11367).
This was the sparsest sample yet and took less than one hour to process.

| identification | count |
| :------------- | ----: |
| Araneae        |     3 |
| Arachnida      |    93 |
| Insecta        |     1 |
| Collembola     |     8 |
| Nematoda       |     1 |

I worked some on revising the Draft Sandpiper SEA, getting it sent out\!

## Friday, February 14

Allie and I drove out to the Marsh Lake dozer line to help with finding
the Marsh Lake Trail where the recent dozer line crosses it. We ended up
just discussing this the State Forestry folks and leaving them a GPS
loaded with the Marsh Lake Trail as a track. We decided that it would be
ok to rerout the Marsh Lake Trail for the short distance where the
original trail was hard to find, aligning it with the current dozer line
for that section.

## Monday, February 17

I received sequences from LifeScanner and from the 2019 black spruce
sweep net samples. I started downloading the sequence data from RTL
Genomics.

Two worm specimens collected by Adrian and Tyler from Pilgrim Hot
Springs are either *Aporrectodea longa* or *Aporrectodea trapezoides*.
Both specimens closely matched multiple sequences identified as both of
these species, so this was a little confusing.

I also received a notification on the Slikok project manuscript. It is
currently being edited.

## Tuesday, February 18

To do:

  - ~~Edit and submit this week’s *Refuge Notebook* article.~~
  - ~~Revise and submit Slikok article.~~

I stopped by the office for a short time. I had received a new package
of worms from Tyler and Kyungsoo.

I edited and sent out this week’s *Refuge Notebook* article.

I revised and re-submitted the Slikok manuscript.

## Wednesday, February 19

I sorted Berlese sample
[KNWR:Ento:11368](http://arctos.database.museum/guid/KNWR:Ento:11368).

Contents:

| identification | count |
| :------------- | ----: |
| Formicidae     |     1 |
| Araneae        |     1 |
| Arachnida      |   187 |
| Collembola     |     4 |
| Staphylindae   |     1 |
| Chilopoda      |     1 |

## Thursday, February 20

To do:

  - Sandpiper Lake snowmachine decision/logistics.
  - Pesticide applicator training.
  - Board of Fish meeting travel arrangements.

I sorted Berlese sample
[KNWR:Ento:11369](http://arctos.database.museum/guid/KNWR:Ento:11369).

Contents:

| identification | count |
| :------------- | ----: |
| Arachnida      |   114 |
| Insecta        |     3 |
| Formicinae     |    11 |
| Animalia       |     1 |
| *Cixius*       |     1 |
| Sciaroidea     |     1 |
| Arthropoda     |     2 |
| Thysanoptera   |     1 |
| Collembola     |     1 |

In this sample was something pale and difficult to identify, labeled as
Animalia in the table above. It might have been a contracted tardigrade,
a flatworm, plant material, or something else. There were also a couple
of pale, elongate arthropods that might have been Collembola.

## Friday, February 21

To do:

  - ~~Board of fish comments?~~
  - ~~Sandpiper Lake snowmachine decision/logistics.~~
  - Board of Fish meeting travel arrangements.

I learned today that Juniki Yukawa and others published a paper
including Dominqiue Collet’s work on *Rabdophaga* willow rosette gall
makers (Sato et al. [2020](#ref-Sato_et_al_Rabdophaga_2020)). I am happy
to see this published.

I composed and submitted comments regarding the use of *Lumbricus*
earthworms as live bait for the upcoming Board of Fisheries meeting.

I sorted Berlese sample
[KNWR:Ento:11370](http://arctos.database.museum/guid/KNWR:Ento:11370).

Contents:

| identification | count |
| :------------- | ----: |
| Collembola     |    29 |
| Araneae        |     8 |
| Hemiptera      |    14 |
| Nematoda       |     2 |
| Arachnida      |   359 |
| Staphylinidae  |     1 |
| Insecta        |     8 |
| Oligochaeta    |     1 |

## Monday, February 24

To do:

  - Board of Fish meeting travel arrangements.
  - ~~Elodea SEA call at 11:00.~~

I revised the Slikok manuscript based on the copy editor’s edits and
comments.

I sorted Berlese sample
[KNWR:Ento:11371](http://arctos.database.museum/guid/KNWR:Ento:11371).

Contents:

| identification | count |
| :------------- | ----: |
| Coleoptera     |     1 |
| Collembola     |    14 |
| Arachnida      |   329 |
| Thysanoptera   |     7 |
| Insecta        |     2 |
| Sciaroidea     |     1 |

I participated in an *Elodea* teleconference regariding permitting, etc.

I sorted Berlese sample
[KNWR:Ento:11372](http://arctos.database.museum/guid/KNWR:Ento:11372).

Contents:

| identification | count |
| :------------- | ----: |
| Arachnida      |   375 |
| Collembola     |    10 |
| Nematoda       |     1 |
| Araneae        |     1 |
| Myrmicinae     |     1 |
| Lepidoptera    |     1 |

Attempting to key a tingid bug in Berlese sample
[KNWR:Ento:11370](http://arctos.database.museum/guid/KNWR:Ento:11370)
just by looking through the vial and using the key of Drake and Lattin
([1963](#ref-drake_american_1963)), p. 334. 1 → 4 → 5 → 6 → *Acalypta
nyctalis* Drake, 1928. This species is known from our area (Drake and
Lattin [1963](#ref-drake_american_1963); Froeschner
[1976](#ref-froeschner_zoogeographic_1976)). I made a new record for
this specimen
([UAMObs:Ento:244398](http://arctos.database.museum/guid/UAMObs:Ento:244398)).

## Tuesday, February 25

To do:

  - Board of Fish meeting travel arrangements.

I started making travel arrangements for the Board of Fisheries meeting.

# Bibliography

<div id="refs" class="references">

<div id="ref-bella_Vogel_2013">

Bella, E. 2013. Kenai national wildlife refuge invasive plant survey
2013. Vogel lake.
doi:[10.7299/X7V40VHG](https://doi.org/10.7299/X7V40VHG).

</div>

<div id="ref-bowmer_identification_1995">

Bowmer, K.H., Jacobs, S.W.L., and Sainty, G.R. 1995. Identification,
biology and management of *Elodea canadensis*, Hydrocharitaceae. Journal
of Aquatic Plant Management **33**: 13–19. Available from
<http://www.apms.org/wp/wp-content/uploads/2012/10/v33p13.pdf>.

</div>

<div id="ref-bowser_work_2019">

Bowser, M.L. 2019. Work journal 2019. Exported pdf version. U.S. Fish &
Wildlife Service, Kenai National Wildlife Refuge., Soldotna, Alaska.
doi:[doi.org/10.7299/X7RB74XZ](https://doi.org/doi.org/10.7299/X7RB74XZ).

</div>

<div id="ref-Criscuolo_2010">

Criscuolo, A., and Gribaldo, S. 2010. BMGE (block mapping and gathering
with entropy): A new software for selection of phylogenetic informative
regions from multiple sequence alignments. BMC Evolutionary Biology
**10**(1): 210. Springer Nature.
doi:[10.1186/1471-2148-10-210](https://doi.org/10.1186/1471-2148-10-210).

</div>

<div id="ref-Desper_2002">

Desper, R., and Gascuel, O. 2002. Fast and accurate phylogeny
reconstruction algorithms based on the minimum-evolution principle.
Journal of Computational Biology **9**(5): 687–705. Mary Ann Liebert
Inc.
doi:[10.1089/106652702761034136](https://doi.org/10.1089/106652702761034136).

</div>

<div id="ref-drake_american_1963">

Drake, C.J., and Lattin, J.D. 1963. American species of the lacebug
genus *Acalypta* (Hemiptera: Tingidae). Proceedings of the United States
National Museum **115**(3486): 331–345 +15 plates.
doi:[10.5479/si.00963801.115-3486.331](https://doi.org/10.5479/si.00963801.115-3486.331).

</div>

<div id="ref-froeschner_zoogeographic_1976">

Froeschner, R.C. 1976. Zoogeographic notes on the lace bug genus
*Acalypta* Westwood in the Americas with description of a new species
from Mexico (Hemiptera: Tingidae). The American Midland Naturalist
**96**(2): 257–269.
doi:[10.2307/2424067](https://doi.org/10.2307/2424067).

</div>

<div id="ref-gbiforg_gbif_2020-1">

GBIF.org. 2020a. GBIF Occurrence Download. GBIF.org.
doi:[10.15468/dl.bguubm](https://doi.org/10.15468/dl.bguubm).

</div>

<div id="ref-gbiforg_gbif_2020">

GBIF.org. 2020b. GBIF Occurrence Download. GBIF.org.
doi:[10.15468/dl.3dfs26](https://doi.org/10.15468/dl.3dfs26).

</div>

<div id="ref-gbiforg_gbif_2020-2">

GBIF.org. 2020c. GBIF Occurrence Download. GBIF.org.
doi:[10.15468/dl.deymas](https://doi.org/10.15468/dl.deymas).

</div>

<div id="ref-gbif_secretariat_enterion_2019">

GBIF Secretariat. 2019. *Enterion castaneum* Savigny, 1826. *In* GBIF
Backbone Taxonomy. Checklist dataset. GBIF.org.
doi:[10.15468/39omei](https://doi.org/10.15468/39omei).

</div>

<div id="ref-gross_unterscheidung_2003">

Gross, E.M., Erhard, D., Glaschke, A., and Haid, V. 2003. Unterscheidung
unklarer morphotypen von *elodea* spp. Durch chemotaxonomische und
molekulartaxonomische methoden. Deutsche Gesellschaft für Limnologie
(DGL) - Tagungsbericht (Köln). Available from
<https://docplayer.org/7100923-Unterscheidung-unklarer-morphotypen-von-elodea-spp-durch-chemotaxonomische-und-molekulartaxonomische-methoden.html>.

</div>

<div id="ref-hajibabaei_coi_2019">

Hajibabaei, M., Porter, T.M., Wright, M., and Rudar, J. 2019. COI
metabarcoding primer choice affects richness and recovery of indicator
taxa in freshwater systems. bioRxiv.
doi:[10.1101/572628](https://doi.org/10.1101/572628).

</div>

<div id="ref-hedlin_cone_1974">

Hedlin, A.F. 1974. Cone and Seed Insects of British Columbia.
Environment Canada, Forestry Service, Pacific Forest Research Centre,
Victoria, British Columbia.

</div>

<div id="ref-huotari_comparative_2013">

Huotari, T., and Korpelainen, H. 2013. Comparative analyses of plastid
sequences between native and introduced populations of aquatic weeds
*Elodea canadensis* and *e*. *Nuttallii*. PLOS ONE **8**(4): e58073.
doi:[10.1371/journal.pone.0058073](https://doi.org/10.1371/journal.pone.0058073).

</div>

<div id="ref-huotari_population_2011">

Huotari, T., Korpelainen, H., Leskinen, E., and Kostamo, K. 2011.
Population genetics of the invasive water weed Elodea canadensis in
Finnish waterways. Plant Systematics and Evolution **294**(1): 27.
doi:[10.1007/s00606-011-0442-2](https://doi.org/10.1007/s00606-011-0442-2).

</div>

<div id="ref-jakubas_sandpiper_1984">

Jakubas, W.J., and Firman, A.S. 1984. Sandpiper Lake, 7/3/84. U.S. Fish
& Wildlife Service.
doi:[10.7299/X7JM29X1](https://doi.org/10.7299/X7JM29X1).

</div>

<div id="ref-Junier_2010">

Junier, T., and Zdobnov, E.M. 2010. The newick utilities:
High-throughput phylogenetic tree processing in the unix shell.
Bioinformatics **26**(13): 1669–1670. Oxford University Press (OUP).
doi:[10.1093/bioinformatics/btq243](https://doi.org/10.1093/bioinformatics/btq243).

</div>

<div id="ref-kadono_genetic_1997">

Kadono, Y., Nakamura, T., and Suzuki, T. 1997. Genetic uniformity of two
aquatic plants, *Egeria densa* Planch. And *Elodea nuttallii* (Planch.)
St. John, introduced in Japan. Japanese Journal of Limnology
(Rikusuigaku Zasshi) **58**(2): 197–203.
doi:[10.3739/rikusui.58.197](https://doi.org/10.3739/rikusui.58.197).

</div>

<div id="ref-Katoh_2013">

Katoh, K., and Standley, D.M. 2013. MAFFT multiple sequence alignment
software version 7: Improvements in performance and usability. Molecular
Biology and Evolution **30**(4): 772–780. Oxford University Press (OUP).
doi:[10.1093/molbev/mst010](https://doi.org/10.1093/molbev/mst010).

</div>

<div id="ref-langille_proposed_1904">

Langille, W.A. 1904. The proposed forest reserve on the Kenai Peninsula,
Alaska. United States Forest Service.
doi:[10.5962/bhl.title.124553](https://doi.org/10.5962/bhl.title.124553).

</div>

<div id="ref-Lefort_2015">

Lefort, V., Desper, R., and Gascuel, O. 2015. FastME 2.0: A
comprehensive, accurate, and fast distance-based phylogeny inference
program. Molecular Biology and Evolution **32**(10): 2798–2800. Oxford
University Press (OUP).
doi:[10.1093/molbev/msv150](https://doi.org/10.1093/molbev/msv150).

</div>

<div id="ref-Lemoine_2018">

Lemoine, F., Domelevo Entfellner, J.-B., Wilkinson, E., Correia, D.,
Dávila Felipe, M., De Oliveira, T., and Gascuel, O. 2018. Renewing
felsenstein’s phylogenetic bootstrap in the era of big data. Nature
**556**(7702): 452–456. Springer Nature.
doi:[10.1038/s41586-018-0043-0](https://doi.org/10.1038/s41586-018-0043-0).

</div>

<div id="ref-Letunic_et_al_2019">

Letunic, I., and Bork, P. 2019. Interactive Tree Of Life (iTOL) v4:
recent updates and new developments. Nucleic Acids Research **47**(W1):
W256–W259. doi:[10.1093/nar/gkz239](https://doi.org/10.1093/nar/gkz239).

</div>

<div id="ref-lipkin_investigation_2007">

Lipkin, R. 2007. Investigation of Potentially Sensitive Plant
Communities in the Old Dummy Burn, Kanuti National Wildlife Refuge,
Alaska, 2006. Alaska Natural Heritage Program, Environment; Natural
Resources Institute, University of Alaska Anchorage, Anchorage, Alaska.
Available from <https://www.arlis.org/docs/vol1/A/313839549.pdf>.

</div>

<div id="ref-marchand_oxygen_1985">

Marchand, P.J. 1985. Oxygen evolution by *Elodea canadensis* under ice
and snow cover: A case for winter photosynthesis in subnivean vascular
plants. Aquilo, Serie Botanica **23**: 57–61.

</div>

<div id="ref-mcalpine_manual_1983">

McAlpine, J.F., Peterson, B.V., Shewell, G.E., Teskey, H.J., Vockeroth,
J.R., and Wood, D.M. (*Editors*). 1983. Manual of Nearctic Diptera,
volume 1. Research Branch, Agriculture Canada, Ottawa, Ontario, Canada.

</div>

<div id="ref-morton_ghosts_2014">

Morton, J. 2014. Ghosts of fires past. *In* Refuge Notebook. USFWS Kenai
National Wildlife Refuge, Soldotna, Alaska. pp. 45–46. Available from
<https://www.fws.gov/uploadedFiles/Region_7/NWRS/Zone_2/Kenai/Sections/What_We_Do/In_The_Community/Refuge_Notebooks/2014_Articles/Refuge_Notebook_v16_n23.pdf>.

</div>

<div id="ref-packer_bee_genera_2007">

Packer, L., Genaro, J.A., and Sheffield, C.S. 2007. The bee genera of
eastern canada. Canadian Journal of Arthropod Identification **3**.
doi:[10.3752/cjai.2007.03](https://doi.org/10.3752/cjai.2007.03).

</div>

<div id="ref-paez_alpine_1991">

Paez, C.E. 1991. Alpine vegetation of areas utilized by introduced
populations of caribou (*Rangifer tarandus*) on the Kenai Peninsula,
Alaska. Master’s thesis, University of Wisconsin-Madison, Madison,
Wisconsin.

</div>

<div id="ref-pratt_notes_1980">

Pratt, G.K., and Pratt, H.D. 1980. Notes on Nearctic *Sylvicola*
(Diptera: Anisopodidae). Proceedings of the Entomological Society of
Washington **82**: 86–98.

</div>

<div id="ref-Sato_et_al_Rabdophaga_2020">

Sato, S., Harris, K.M., Collet, D.M., Kim, W., and Yukawa, J. 2020.
Genetic variation in intraspecific populations of *Rabdophaga rosaria*
(Diptera: Cecidomyiidae) indicating possible diversification scenarios
into sibling species along with host range expansion on willows
(Salicaceae: *Salix*). Zoological Journal of the Linnean Society.
doi:[10.1093/zoolinnean/zlz179](https://doi.org/10.1093/zoolinnean/zlz179).

</div>

<div id="ref-shorthouse_simplemappr_2010">

Shorthouse, D.P. 2010. SimpleMappr, an online tool to produce
publication-quality point maps. Available from
<https://www.simplemappr.net>.

</div>

<div id="ref-state_of_alaska_dec_2005">

State of Alaska Department of Environmental Conservation. 2005. Ambient
water quality monitoring system. Available from
<https://awqms2.goldsystems.com/Login.aspx>.

</div>

</div>