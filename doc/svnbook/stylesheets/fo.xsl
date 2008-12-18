<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version='1.0'>

  <xsl:import href="fo-import.xsl"/>

  <xsl:param name="l10n.gentext.language" select="'en'"/>

  <xsl:param name="draft.mode" select="no"/>

  <xsl:param name="hyphenate">false</xsl:param>

  <!-- These extensions are required for table printing and other stuff -->
  <xsl:param name="use.extensions">1</xsl:param>
  <xsl:param name="callouts.extension">1</xsl:param>
  <xsl:param name="linenumbering.extension">1</xsl:param>
  <xsl:param name="tablecolumns.extension">1</xsl:param>
  <xsl:param name="textinsert.extension">1</xsl:param>

  <xsl:param name="admon.graphics" select="1" />
  <xsl:param name="admon.graphics.extension">.svg</xsl:param>
  <xsl:param name="callout.graphics" select="1" />
  <xsl:param name="callout.graphics.extension">.svg</xsl:param>

  <xsl:param name="section.autolabel" select="1" />
  <xsl:param name="section.label.includes.component.label">1</xsl:param>

  <xsl:param name="fop.extensions">0</xsl:param>                <!-- fo only -->
  <xsl:param name="fop1.extensions">1</xsl:param>               <!-- fo only -->
  <xsl:param name="variablelist.as.blocks" select="1" />        <!-- fo only -->
  <xsl:param name="paper.type" select="'A4'"></xsl:param>       <!-- fo only -->

  <!-- Font related Settings -->
  <xsl:param name="body.font.family">serif</xsl:param>
  <xsl:param name="monospace.font.family">monospace</xsl:param>
  <xsl:param name="title.font.family">sans-serif</xsl:param>
  <xsl:param name="symbol.font.family">Symbol,ZapfDingbats</xsl:param>

  <xsl:param name="body.font.family.l10n">zh_text</xsl:param>
  <xsl:param name="monospace.font.family.l10n">zh_verbatim</xsl:param>
  <xsl:param name="title.font.family.l10n">zh_title</xsl:param>

  <xsl:param name="body.font.size">12</xsl:param>
  <xsl:param name="title.font.size">14</xsl:param>

  <!-- Page related Settings -->
  <xsl:param name="page.margin.inner">1.5cm</xsl:param>
  <xsl:param name="page.margin.outer">1.5cm</xsl:param>
  <xsl:param name="title.margin.left">0pt</xsl:param>
  <xsl:param name="body.start.indent">24pt</xsl:param>
  <xsl:param name="body.end.indent">0pt</xsl:param>

  <!-- Prevent blank pages in output -->
  <xsl:template name="book.titlepage.before.verso">
  </xsl:template>
  <xsl:template name="book.titlepage.verso">
  </xsl:template>
  <xsl:template name="book.titlepage.separator">
  </xsl:template>

  <xsl:attribute-set name="xref.properties">
    <xsl:attribute name="color">
      <xsl:choose>
        <xsl:when test="self::ulink">blue</xsl:when>
        <xsl:when test="self::xref">blue</xsl:when>
        <xsl:when test="self::uri">blue</xsl:when>
        <xsl:otherwise>red</xsl:otherwise>
      </xsl:choose>
    </xsl:attribute>
  </xsl:attribute-set>

</xsl:stylesheet>
