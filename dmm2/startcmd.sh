#!/bin/sh
#  This file is part of the DITA Open Toolkit project hosted on 
#  Sourceforge.net. See the accompanying license.txt file for 
#  applicable licenses.
#  (c) Copyright IBM Corp. 2006 All Rights Reserved.

if  [ "${DITA_HOME:+1}" != "1" ]; then 
   echo "DITA_HOME environment variable is empty or not set";
   exit 127;
fi

cd "$DITA_HOME"

# Get the absolute path of DITAOT's home directory
DITA_DIR="`pwd`"

# make sure the ant in DITA is executable if it is there
if [ -f "$DITA_DIR"/tools/ant/bin/ant ] && [ ! -x "$DITA_DIR"/tools/ant/bin/ant ]; then
chmod +x "$DITA_DIR"/tools/ant/bin/ant
fi

# set memory footprint to 512m
export ANT_OPTS="-Xmx512m $ANT_OPTS"
# use Saxon
export ANT_OPTS="$ANT_OPTS -Djavax.xml.transform.TransformerFactory=net.sf.saxon.TransformerFactoryImpl"
export ANT_HOME="$DITA_DIR"/tools/ant
# make sure ant is in the path
export PATH="$DITA_DIR"/tools/ant/bin:"$PATH"

#set all the necessary libraries in a NEW_CLASSPATH
NEW_CLASSPATH="$DITA_DIR/lib:$DITA_DIR/lib/dost.jar:$DITA_DIR/lib/resolver.jar:$DITA_DIR/lib/icu4j.jar"
NEW_CLASSPATH="$DITA_DIR/lib/saxon/saxon9.jar:$DITA_DIR/lib/saxon/saxon9-dom.jar:$NEW_CLASSPATH"
NEW_CLASSPATH="$DITA_DIR/lib/saxon/saxon9-dom4j.jar:$DITA_DIR/lib/saxon/saxon9-jdom.jar:$NEW_CLASSPATH"
NEW_CLASSPATH="$DITA_DIR/lib/saxon/saxon9-s9api.jar:$DITA_DIR/lib/saxon/saxon9-sql.jar:$NEW_CLASSPATH"
NEW_CLASSPATH="$DITA_DIR/lib/saxon/saxon9-xom.jar:$DITA_DIR/lib/saxon/saxon9-xpath.jar:$DITA_DIR/lib/saxon/saxon9-xqj.jar:$NEW_CLASSPATH"

#if there is already a CLASSPATH, prepend $NEW_CLASSPATH to it, otherwise just use it 
if test -n "$CLASSPATH"
then
export CLASSPATH="$NEW_CLASSPATH":"$CLASSPATH"
else
export CLASSPATH="$NEW_CLASSPATH"
fi

# start a subshell with all this stuff set for you
"$SHELL"
