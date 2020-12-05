# Physical Entities: patterns

*Introduction*

The document outlines modelling choices in relation to physical entities such as physical objects, their parts or their features. The modelling of statements which specify properties, both measured or assigned to the physical object, such as its dimension, or its position in space, are going to be described here.

The modelling choices are recorded as generalisable patterns. Each pattern is made explicit using an example which it is both encoded in [RDF](https://www.w3.org/TR/rdf11-mt/) using [Turtle](https://www.w3.org/TR/turtle/) and presented, below each codebox, in a graphical form. 

All the prefix used within the document can be found on [http://prefix.cc/](http://prefix.cc/).


## Watermarks and Signatures

We model Watermarks and Signatures as E26 Physical Features (identifiable signs which are integrally part of the object) because a physical feature it is not defined by specific borders and it cannot be detached to the object which carries it.
Both Watermarks and Signatures are typical features of an object, specifically considered within CRM Man-Made Feature, because their identity is not natural but human-given. 

Following the above, we can state the fact that an object as a man-made feature as 

**E22 Man-Made Object → P56 bears feature → E25 Man-made Feature**{.modelling}

However, for the example to be complete, we should make explicit that the object has two features, a signature and a watermark, each of them has a type and carries a linguistic object. Formally, both they are made explicit as:

**E25 Man-made Feature → P128 carries → E33 Linguistic Object**{.modelling}   
**E25 Man-made Feature → P2 has type → E55 Type**{.modelling}  

The following codebox provide an example of its encoding 
<br>
<script src="https://gist.github.com/ncarboni/71f105292a27625d83d60b75b4f8b5aa.js"></script>

**Codebox 1. Watermarks and Signatures.** Click [here](https://gist.github.com/ncarboni/71f105292a27625d83d60b75b4f8b5aa#file-feature-ttl) to comment the modelling.