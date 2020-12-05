# About

This website record and collect the documentation produced within the **S**wiss **A**rt **R**esearch **I**nfrastructure project- **SARI**. The project uses a semantic web infrastructure to record and expose reference resources useful for Digital Art History & Digital Humanities projects. 

Achieving these objectives meant overcoming common challenges and also creating several documentation resources which are collected into these main categories:

1. Ontological Modelling Patterns
2. Reference Data Models
3. Ontology Extensions

#### Ontological Modelling Patterns

The modelling patterns are nothing else than a series of generalisable formulas for the modelling of entities used within SARI and their properties. The patterns provided here do always come from a real use-case scenario and are made explicit both using a Turtle (.ttl) file and a graphical output.

#### Reference Data Models

With the term Reference Data Models we denote a re-usable template of common descriptors grounded on the analysis of select sources determined to be of relevance to the entity being modelled.  

Each available template is a collection of descriptors for a specific entity, and each descriptor is mapped to the CIDOC-CRM ontology. The aim is manifold: to provide reference implementations to be used by institutions and projects not familiar with CIDOC-CRM, to create usable guidelines to generate input interfaces for born-CRM semantic data and to guide mapping processes from extant sources into the CRM conformant reference model using tools such as 3M. 

The Reference Data Model are produced together with FORTH-ICS and describe these entities: 

+ [Persons](et/persons.md)
+ [Artworks](et/artwork.md)
+ [Group](et/group.md)
+ [Built Work](et/built_work.md)
+ [Place](et/place.md)
+ [Digital Document](et/do.md)
+ [Events](et/event.md)
+ [Bibliographic Entity](et/bibliographic_item.md)

Each of the Models listed above present an initial introduction of the sources and the methodology used for grounding the model. Following this introduction, each descriptor is defined, and its modelling in both textual and graphical form is provided to the reader.

Not all the Reference Data Models are immediately available. The availability is subject to internal scrutiny; only when a model is considered stable and vetted by a community of expert will be published here.

#### Ontology Extension

Within the project some (very few really) properties and classes have been created as an extension of CIDOC-CRM or other ontologies. In this section we list them, pointing to the reader to their usefulness and where they can be found.