<!-- 
 Elements for the Kuali KITS KMS
-->

<!ENTITY % approved	"approved" >
<!ENTITY % expires	"expires" >

<!ENTITY % audience	"audience" >
<!ENTITY % owner	"owner" >
<!ENTITY % reviewCycle	"reviewCycle" >
<!ENTITY % tag	"tag" >

<!ENTITY % kbDate.content
                       "EMPTY"
>
<!ENTITY % kbDate.attributes
             "modified
                        %date-format;
                                  #REQUIRED
              %univ-atts;"
>

<!-- LONG NAME: expires: metadata, specialization of <revised> -->
<!ELEMENT expires    %kbDate.content;>
<!ATTLIST expires    %kbDate.attributes;>

<!-- LONG NAME: approved: metadata, specialization of <revised> -->
<!ELEMENT approved    %kbDate.content;>
<!ATTLIST approved    %kbDate.attributes;>

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
<!ATTLIST expires	%global-atts; class CDATA "+ topic/revised kuali-kms-d/expires ">
<!ATTLIST owner	%global-atts; class CDATA "+ topic/data kuali-kms-d/owner ">
