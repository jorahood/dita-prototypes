rm -rf DITA-OT/plugins/org.kuali.kits.kms &&\
cp -r org.kuali.kits.kms DITA-OT/plugins/ &&\
cd DITA-OT/ &&\
ant -f integrator.xml
