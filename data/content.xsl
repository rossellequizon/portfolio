<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  <xsl:param name="lang" select="'fr'"/>
  <xsl:template match="/portfolio">
    <html lang="{$lang}" xml:lang="{$lang}">
      <head>
        <meta charset="UTF-8"/>
        <title><xsl:value-of select="blocks/block[@id='site_title']/text[@lang=$lang]"/></title>
        <link rel="stylesheet" href="../style.css"/>
      </head>
      <body>
        <main class="container">
          <h1><xsl:value-of select="person/name"/></h1>
          <p><xsl:value-of select="person/headline/text[@lang=$lang]"/></p>
          <h2><xsl:value-of select="blocks/block[@id='nav_skills']/text[@lang=$lang]"/></h2>
          <ul>
            <xsl:for-each select="skills/skill">
              <li><xsl:value-of select="label/text[@lang=$lang]"/></li>
            </xsl:for-each>
          </ul>
          <h2><xsl:value-of select="blocks/block[@id='nav_projects']/text[@lang=$lang]"/></h2>
          <xsl:for-each select="projects/project">
            <article class="card">
              <h3><xsl:value-of select="title/text[@lang=$lang]"/></h3>
              <p><xsl:value-of select="description/text[@lang=$lang]"/></p>
            </article>
          </xsl:for-each>
        </main>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
