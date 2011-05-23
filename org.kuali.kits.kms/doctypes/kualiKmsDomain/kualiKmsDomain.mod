<!--
 Elements for the Kuali KITS KMS
-->

<!ENTITY % approved	"approved" >
<!ENTITY % expires	"expires" >

<!ENTITY % audience	"audience" >
<!ENTITY % owner	"owner" >
<!ENTITY % reviewCycle	"reviewCycle" >
<!ENTITY % tag	"tag" >

<!ENTITY % default "default" >

<!ENTITY % kbDate.content
                       "EMPTY"
>
<!ENTITY % kbDate.attributes
             "modified
                        %date-format;
                                  #REQUIRED
              %univ-atts;
              " >

<!-- LONG NAME: expires: date this content needs to be reviewed -->
<!ELEMENT expires    %kbDate.content;>
<!ATTLIST expires    %kbDate.attributes;>

<!-- LONG NAME: approved: date the owner last SOAd this content -->
<!ELEMENT approved    %kbDate.content;>
<!ATTLIST approved    %kbDate.attributes;>

<!-- LONG NAME: owner: group responsible for this content -->
<!ENTITY % owner.content
                       "EMPTY
">
<!ENTITY % owner.attributes
             'name
                        CDATA
                                  "owner"
              %data.attributes;
              ' >
<!ELEMENT owner    %owner.content;>
<!ATTLIST owner    %owner.attributes;>

<!-- LONG NAME: altq: alternate title for a different audience -->
<!ENTITY % altq.attributes
             'conref
                        CDATA
                                  "kbdoc/default"
              conaction
                        CDATA
                                  "pushreplace"
              %title.attributes;
              ' >
<!ELEMENT altq %title.content;>
<!ATTLIST altq %altq.attributes;>

<!ATTLIST approved	%global-atts; class CDATA "+ topic/revised kuali-kms-d/approved ">
<!ATTLIST expires	%global-atts; class CDATA "+ topic/revised kuali-kms-d/expires ">
<!ATTLIST owner	%global-atts; class CDATA "+ topic/data kuali-kms-d/owner ">
<!ATTLIST altq	%global-atts; class CDATA "+ topic/title kuali-kms-d/altq ">
