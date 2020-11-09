<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 	version="1.0" 
					xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/museum">

<html>
	<head>
		<h1><xsl:value-of select="name"/></h1>
		<p><xsl:value-of select="address"/></p>
	</head>
	<body>
		<xsl:for-each select="exhibit">
			<h2><xsl:value-of select="name"/></h2>
		</xsl:for-each>
	</body>
</html>

</xsl:template>
</xsl:stylesheet>