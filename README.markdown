This project is a case study of rewriting a small collection of KB documents according to the different levels of the [DITA Maturity Model](http://gw.vtrenz.net/?T5XNTHG59J&webSyncID=2514aba4-e120-dcc5-94e1-0b2745b3d6d7).

## DMM0.5

Dita Maturity Model 0.5 ignores converting xkbml metadata into dita metadata while converting xkbml documents generic dita topics. No cross-referencing or reuse mechanisms such as conrefs are used either

----
## DMM1

Dita Maturity Model 1 converts xkbml metadata into dita metadata. Still converting xkbml documents into generic dita topics with no cross-referencing or reuse mechanisms such as conrefs. atau nests topics.

----
## DMM2

Dita Maturity Model Level 2 uses dita maps to abstract cross-referencing and reuse of documents. Still using dita topics

Boilers are now conref'ed [sections](http://docs.oasis-open.org/dita/v1.1/CS01/langspec/langref/section.html) (which cannot be nested one within another) rather than topics nested within a container topic.

* In DMM2 we are still not worrying about concept, task, and reference topics types. All docs become topics.

* the linking relationships that are topic-level rather than text-level (i.e., hotitems, refs, and refbys) are expressed in the reltable in the base topic map (dmm2/base.ditamap). 

* the goals I have for this phase of the project are for editors to get comfortable with how to create and modify the links between documents that DITA will be helping us maintain. Secondarily my goal is to start building a collection of content that is ready to be delivered in the new system that takes as full advantage of the DITA standard as we are capable of at this time. These docs will serve as a base for our experiments into level 3 and assigning specialized topic types to different documents.

----
## DMM3

Dita Maturity Model 3 uses specialization into dita task, concept, and reference topic types to imbed richer semantics into our content

----
## References
1 http://dita.xml.org/improving-relationships-relationship-tables
2 [Vazquez, Julio. Practical DITA, 2nd Ed.](http://www.amazon.com/Practical-Dita-Julio-Vazquez/dp/0557045843)
3 [DITA 1.2 feature article: Keyref overview](http://dita.xml.org/resource/keyref-overview-dita-12)
