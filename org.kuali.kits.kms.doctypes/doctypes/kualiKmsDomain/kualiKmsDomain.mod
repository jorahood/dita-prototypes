<!-- 
 Elements for the Kuali KITS KMS
-->
<!-- Metadata elements -->

<!ENTITY % approved	"approved" >
<!ENTITY % audience	"audience" >
<!ENTITY % expires	"expires" >
<!ENTITY % owner	"owner" >
<!ENTITY % reviewCycle	"reviewCycle" >
<!ENTITY % tag	"tag" >

<!-- LONG NAME: approved date: metadata, specialization of <revised> -->

<!ENTITY % approved.content
                       "EMPTY"
>
<!ENTITY % approved.attributes
             "modified
                        %date-format;
                                  #REQUIRED
              %univ-atts;"
>
<!ELEMENT approved    %approved.content;>
<!ATTLIST approved    %approved.attributes;>

<!-- LONG NAME: owner: metadata, specialization of <data> -->
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

<!ATTLIST approved	%global-atts; class CDATA "+ topic/revised kuali-kms-d/approved ">
<!ATTLIST owner	%global-atts; class CDATA "+ topic/data kuali-kms-d/owner ">
