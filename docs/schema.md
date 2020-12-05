Swiss Art Research Infrastructure CIDOC-CRM Extension
=====================================================

**IRI**
:   [http://w3id.org/sari](http://w3id.org/sari)

**Current version**
:   1.0

**Imported ontologies**
:   CIDOC-CRM: <http://www.cidoc-crm.org/cidoc-crm/>

**Authors**
:   [George Bruseker](#) ([Foundation for Research &
    Technology](https://www.forth.gr)), [Nicola
    Carboni](http://www.nicolacarboni.com) ([University of
    Zurich)](http://uzh.ch)


This work is distributed under a [Creative Commons Attribution 3.0
Unported License](http://creativecommons.org/licenses/by/3.0/).


------------------------------------------------------------------------

Abstract
--------

This document, automatically generated from [the official access point](http://w3id.org/sari), presents an extension of CIDOC-CRM develop within the
Swiss Art Research Infrastructure (SARI) project to support propositions
about persons and their social relations.

**Namespace:** The namespace for SARI terms is [http://w3id.org/sari](http://w3id.org/sari)

**Prefix:** The suggested prefix for SARI is sari

**RDFS:** an RDFS version of the ontology is available on [this link](https://schema.swissartresearch.net/ontology/sari.ttl)

Table of Content {#abstract}
----------------

-   [Introduction](#introduction)
-   [Graphical Overview](#graphicaloverview)
-   [Classes](#classes)
    -   [SRPC3 in social relation](#SRPC3_in_social_relation)
-   [Properties](#properties)
    -   [SRP1 used language (was language used by)](#SRP1_used_language)
    -   [SRP2 had occupation (was occupation of)](#SRP2_had_occupation)
    -   [SRP3.1 relation type (relation type)](#SRP3.1_had_relation_type)

Introduction
------------

This document presents an extension of CIDOC-CRM. It is developed within
the Reference Entity Model project of the Swiss Art Reseach
Infrastructure and targeted to sustain propositions about persons and
their social relations which do not have yet a correspondence within the
CRM.

Graphical Overview {#graphicaloverview}
------------------


![!](https://workspace.digitale-diathek.net/confluence/rest/gliffy/1.0/embeddedDiagrams/11e5ed90-a39f-4f23-87b3-0edb38759f6b.png)


Classes
-------

### SRPC3 in social relation {#SRPC3_in_social_relation}

The class SRPC3 materializes the SRP3 relation as a class. It does so to
enable an n-ary construct used to indicate the nature of the
the relationship that holds between the instance of E21 person designated as
its domain and the instance of E21 Person designated as its range. i.e.:
if E55 instantiated as Father then the semantic interpretation of this
is E21(a) 'has father' E21(b), the relation is not symmetric.

##### Proprieties

-   [SRP3.1 relation type (relation type)](#SRP3.1_relation_type): E55 Type

Properties
----------

### SRP1 used language (was language used by) {#SRP1_used_language}

Domain: E21 Person  
Range: E56 Language  
Subproperty: P75 possesses (is possessed by)  

This property identifies former or current instances of E56 Language
known by an E39 Actor.

### SRP2 had occupation (was occupation of) {#SRP2_had_occupation}

Domain: E21 Person  
Range: E55 Type  
Subproperty: P2 has type (is type of)  

This field is used to indicate occupations/general roles that an E39
Actor has played in its life; This documentation is at the level of a
general characteristic and is not the documentation of particular
periods in which occupations/roles were undertaken.


### SRP3.1 relation type {#SRP3.1_relation_type}

Domain: [SRPC3 in social relation](#SRPC3_in_social_relation)  
Range: E55 Type  

The property documents the type of family relationship exists between two individuals.
