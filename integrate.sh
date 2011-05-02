rm -rf /Applications/Oxygen/frameworks/dita/DITA-OT/plugins/org.kuali.kits.kms &&\
cp -r org.kuali.kits.kms /Applications/Oxygen/frameworks/dita/DITA-OT/plugins/ &&\
cd /Applications/Oxygen/frameworks/dita/DITA-OT/ &&\
ant -f integrator.xml