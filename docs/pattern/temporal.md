# Temporal Entities: patterns

*Introduction*

The document outlines modelling choices in relation to temporal entities such as activities and statements which specify agency, causality, and other properties that, within CRM, can be considered to belong to this domain.

The modelling choices are recorded as generalisable patterns. Each pattern is made explicit using an example which it is both encoded in [RDF](https://www.w3.org/TR/rdf11-mt/) using [Turtle](https://www.w3.org/TR/turtle/) and presented as a codebox and in a graphical form. 
Each codebox is hosted as [Gist](https://gist.github.com) on [GitHub](https://github.com) and embedded on the page. This solution has been taken to give the possibility to the readers to comment, download and embed the codebox. 
Each graphical representation of the codebox is created using the [ontologyviz](https://github.com/usc-isi-i2/ontology-visualization) tool. It is possible to click on the pictures to enlarge it.

All the prefix used within the document can be found on [http://prefix.cc/](http://prefix.cc/).

## Creation of an artefact

We model the physical creation of artefacts, such as paintings or photos, using the class E12 Production, a subclass of Event which described a specific activity which results in the creation of one or more new physical object. 
This type of creation is modelled in CRM using the E12 Production Entity, using the pattern:

**E22 Man-Made Object → P108 was produced by → E12 Production**{.modelling}

### Technique used

A production itself can be contextualised using diverse properties that augment the information about this activity. A quite important one for us was the technique used. The CRM modelling follows:

**E12 Production → P33 used specific technique → E29 Design or Procedure**{.modelling}

The encoding of the modelling in Turtle is pretty straightforward:

<br>
<script src="https://gist.github.com/ncarboni/cb1fd5c26d19faf9bf3432c724c6a1ce.js"></script>

**Codebox 1. Technique.** Click [here](https://gist.github.com/ncarboni/cb1fd5c26d19faf9bf3432c724c6a1ce#file-technique-ttl) to comment the modelling.


### Agency

Another important aspect to declare is the agency within an activity, which can be modelled simply as:

**E12 Production → P14 carried out by → E21 Person**{.modelling}

While the encoding of the modelling in Turtle can be seen below
<br>
<script src="https://gist.github.com/ncarboni/e4c475519a1c2715dcc8de9d4a275bcb.js"></script>

**Codebox 1 . Agency**. Click [here](https://gist.github.com/ncarboni/e4c475519a1c2715dcc8de9d4a275bcb#file-agency-ttl) to comment the modelling.


#### Agent role in the activity

The role of the actor within the activity can be further modelled with a role. The modelling of this pattern is a bit more complicated matter. It would be:

**E12 Production → P01 is domain of → PC14 carried out by**{.modelling}   
**PC14 carried out by → P012 has range → E21 Person**{.modelling}   
**PC14 carried out by → P14.1 in the role of → E55Type**{.modelling}   

We document in great details this modelling pattern in the corresponding [General section](#roles). An example related to the production event would be the following:

<script src="https://gist.github.com/ncarboni/60782ef795e536714ff7a969292f3b34.js"></script>

**Codebox 2. Production: agent role**. Click [here](https://gist.github.com/ncarboni/60782ef795e536714ff7a969292f3b34#file-role-ttl) to comment the modelling.


## Exhibition

We model temporary exhibitions as activities, because of their existence in time. Moving exhibitions, which do keep their collection but change location/museum are also modelled as a bigger activity (the whole exhibit), which are composed by sub-activities which do they take place in diverse locations. 

The modelling in CIDOC-CRM is quite simple:

**E7 Activity → P9 consist of → E7 Activity**{.modelling}

For a better understanding, in the codebox below it is possible to see how an exhibition has been modelled as composed by two different ones, each of them happening at a different time and place. 


<script src="https://gist.github.com/ncarboni/ecb97d4ee4cc04d49056d461939e05a1.js"></script>

**Codebox 3. Exhibition**. Click [here](https://gist.github.com/ncarboni/ecb97d4ee4cc04d49056d461939e05a1#file-exhibition-ttl) to comment the modelling.

## Provenance of an object

We model the provenance of an object as a series of acquisition events, which transfer an object from person to person. This allows us to follow the object throughout the years. This solution is not perfect, because in an open world it does not imply that the object stays with the same owner between acquisition events (despite the fact that we do know about it). A better modelling would be using a State which, however, are not fully considered within CRM at the moment of writing this document.
While the solution is not better, it is still quite functional and can be seen in the codebox below where three diverse acquisition events are modelled

<script src="https://gist.github.com/ncarboni/a9f973abdd24d06638fc14dec4ab157a.js"></script>

**Codebox 4. Provenance**. Click [here](https://gist.github.com/ncarboni/a9f973abdd24d06638fc14dec4ab157a#file-provenance-ttl) to comment the modelling.