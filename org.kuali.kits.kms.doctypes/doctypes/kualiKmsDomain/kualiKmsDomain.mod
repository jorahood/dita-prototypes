<!-- 
 Elements for the Kuali KITS KMS
-->
<!ENTITY % owner	"owner" >
<!ENTITY % audience	"audience" >
<!ENTITY % created	"created" >
<!ENTITY % lastModified	"lastModified" >
<!ENTITY % approved	"approved" >
<!ENTITY % expires	"expires" >
<!ENTITY % reviewCycle	"reviewCycle" >
<!ENTITY % tag	"tag" >

<!--                    LONG NAME: Owner element                    -->
<!ENTITY % owner.content
                       "EMPTY
">
<!ENTITY % owner.attributes
             '%univ-atts;
              name 
                        CDATA 
                                  "owner"
              datatype 
                        CDATA 
                                  #IMPLIED
              value 
                        CDATA 
                                  #IMPLIED
              href 
                        CDATA 
                                  #IMPLIED
              keyref 
                        CDATA 
                                  #IMPLIED
              format 
                        CDATA 
                                  #IMPLIED
              type 
                        CDATA 
                                  #IMPLIED
              scope 
                        (external | 
                         local | 
                         peer | 
                         -dita-use-conref-target) 
                                  #IMPLIED
              outputclass
                        CDATA 
                                  #IMPLIED' >
<!ELEMENT owner    %owner.content;>
<!ATTLIST owner    %owner.attributes;>

<!ATTLIST owner	%global-atts; class CDATA "+ topic/data kuali-kms-d/owner ">