<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version='1.0'>

  <xsl:import href="../chm.xsl"/>

  <xsl:param name="l10n.gentext.language" select="'zh_cn'"/>

  <xsl:param name="htmlhelp.encoding" select="'UTF-8'"/>
  <xsl:param name="chunker.output.encoding" select="'UTF-8'"/>

  <xsl:param name="htmlhelp.title">
    <xsl:text>Subversion 权威指南</xsl:text>
  </xsl:param>

  <xsl:param name="htmlhelp.chm" select="'svnbook-zh_CN.chm'"/>

</xsl:stylesheet>