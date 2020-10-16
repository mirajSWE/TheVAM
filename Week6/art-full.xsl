<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
    <body>
    <h2>Collection</h2>
    <table border="1">
        <tr bgcolor="#9acd32">
            <th>Title</th>
            <th>Artist</th>
            <th>Medium</th>
            <th>Description</th>
        </tr>
        <xsl:for-each select="museum/exhibit/artwork">
        <tr>
            <td><xsl:value-of select="title"/></td>
            <td><xsl:value-of select="artist/name"/></td>
            <td><xsl:value-of select="medium"/></td>
            <td><xsl:value-of select="description"/></td>
        </tr>
        </xsl:for-each>
    </table>
    </body>
    </html>
</xsl:template>

</xsl:stylesheet>