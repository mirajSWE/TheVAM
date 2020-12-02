<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 	version="1.0" 
					xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/piece">
	<html>
		<head>
			<meta charset="UTF-8"/>
			<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
			<title>TheVAM</title>
			<link rel="stylesheet" type="text/css" href="../../stylesheet.css"/>
			<link href="https://fonts.googleapis.com/css?family=Montserrat&amp;display=swap" rel="stylesheet"/>
   
   
		</head>
		<body>
			<div id="home">
				<nav id="topElements">
				
					<a href="../../../Root/map.html">| MAP ||</a> 
					<a href="../../../Root/about.html"> | ABOUT |</a> 
					<a href="../../../Root/contact.html">| CONTACT |</a> 
					<a href="../../../XML/museum.xml">| COLLECTION | </a>
					<a href="../../../Root/index.html">|| HOME | </a>
					<a href="../../../Root/index.html"> | virtual. art. museum | </a> 
					
				</nav>
				
				<header id="collectionDescription">
				
					<h1>  <xsl:value-of select="name"/> </h1>
					<p> <xsl:value-of select="description"/> </p>
					
				</header>
				
				<section class="pictureContainer">
					
					<div class="pictureSide">
						<img id="pictureView">
							<xsl:attribute name="src">
								<xsl:value-of select="@imageLink"/>
							</xsl:attribute>
						</img>
					</div>
					
					<div class="textSide">
						<p><b>Type: </b><xsl:value-of select="type"/></p>
						<p><b>Epoch: </b><xsl:value-of select="epoch"/></p>
						<p><b>Created: </b><xsl:value-of select="creationDate"/></p>
						<p><b>Artist: </b><xsl:value-of select="creator/name"/></p>
						<pre><p style="line-height:0.3;">	    (<xsl:value-of select="creator/birthday"/> - <xsl:value-of select="creator/deathday"/>)</p></pre>
					</div>
				
				</section>
				
				
				
			</div> <!-- home -->
		</body>
	</html>


</xsl:template>
</xsl:stylesheet>