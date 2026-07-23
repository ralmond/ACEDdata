<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html"/>
  <xsl:template match="TestItem">
    <html>
      <head><title>ACED Item:  <xsl:value-of select="Metadata/AeL/@ItemNode"/> </title></head>
      <body>
	<h1>Item: <xsl:value-of select="Metadata/AeL/@ItemNode"/> </h1>
	<xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="Stimulus">
    <h2>Stimulus: </h2>
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="Stem">
    <h2>Stem: </h2>
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="input_collection">
    <h2>Inputs: </h2>
    <ol><xsl:apply-templates/></ol>
  </xsl:template>

  <xsl:template match="inputfield">
    <li><xsl:apply-templates/></li>
  </xsl:template>

  <xsl:template match="Distractor_list">
    <h2>Options:</h2>
    <ol> <xsl:apply-templates/> </ol>
  </xsl:template>

  <xsl:template match="Distractor">
    <li> <xsl:apply-templates/> </li>
  </xsl:template>

  <xsl:template match="Key|key">
    <h2>Key:</h2>
    <ul> <xsl:apply-templates/> </ul>
  </xsl:template>

  <xsl:template match="Metadata">
    <h3>Metadata:</h3>
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="Paragraph">
    <p> <xsl:apply-templates/> </p>
  </xsl:template>

  <xsl:template match="Sentence">
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="italics">
    <i><xsl:apply-templates/></i>
  </xsl:template>

  <xsl:template match="emphasis">
    <i><xsl:apply-templates/></i>
  </xsl:template>

  <xsl:template match="Inlineimg|Image">
    <img src="{@SRC}" />
  </xsl:template>

  <xsl:template match="response">
    <li> Observable: <xsl:apply-templates select="observable"/>
      Score: <xsl:value-of select="@SCORE"/>;
      Evidence Value: <xsl:value-of select="@EVIDENCEVAL"/>.
      <ul> <xsl:apply-templates select="feedback"/></ul>
    </li>
  </xsl:template>

  <xsl:template match="observable">
    <xsl:apply-templates/>,
  </xsl:template>

  <xsl:template match="observable[position()=last()]">
    <xsl:apply-templates/>.
  </xsl:template>

  <xsl:template match="feedback">
    <li><i><xsl:value-of select="@TYPE"/>:</i>
    <xsl:apply-templates/>
    </li>
  </xsl:template>

  <xsl:template match="AeL">
    Item Node: <xsl:value-of select="@ItemNode"/>,
    Difficulty: <xsl:value-of select="@Difficulty"/>.<br/>
    Proficiencies: <xsl:apply-templates select="PMNode"/>
  </xsl:template>

  <xsl:template match="PMNode">
    <xsl:apply-templates/>,
  </xsl:template>

  <xsl:template match="PMNode[position()=last()]">
    <xsl:apply-templates/>.
  </xsl:template>
    
  <xsl:template match="TABLE">
    <table border="1"><xsl:apply-templates/></table>
  </xsl:template>

  <xsl:template match="TR">
    <tr><xsl:apply-templates/></tr>
  </xsl:template>

  <xsl:template match="TH">
    <th><xsl:apply-templates/></th>
  </xsl:template>

  <xsl:template match="TD">
    <td><xsl:apply-templates/></td>
  </xsl:template>

  <xsl:template match="Blockquote|blockquote">
    <blockquote><xsl:apply-templates/></blockquote>
  </xsl:template>


</xsl:stylesheet>
