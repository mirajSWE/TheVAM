<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 	version="1.0" 
					xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/museum">
	<html>
		<head>
			<meta charset="UTF-8"/>
			<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
			<title>TheVAM</title>
			<link rel="stylesheet" type="text/css" href="stylesheet.css"/>
			<link href="https://fonts.googleapis.com/css?family=Montserrat&amp;display=swap" rel="stylesheet"/>
   
   
		</head>
		<body>
			<div id="home">
				<nav id="topElements">
				
					<a href="../Root/map.html">| MAP ||</a> 
					<a href="../Root/about.html"> | ABOUT |</a> 
					<a href="../Root/contact.html">| CONTACT |</a> 
					<a href="../XML/museum.xml">| COLLECTION | </a>
					<a href="../Root/index.html">|| HOME | </a>
					<a href="../Root/index.html"> | virtual. art. museum | </a> 
					
				</nav>
				
				<header class="collectionDescription">
				
					<h1>  The Exhibits </h1>
					<p> | Browse all exhibits the museum currently offers. Every exhibit will cover a different epoche or art style. Dive into one of the exhibts to gain stunning insights on world-famous 
					artists and one-of-a-kind artwork!</p>
					
				</header>
				
				<section class="gridView">
					
					<xsl:for-each select="exhibit">
						<div class="pictureCard">
							<xsl:attribute name="onclick">
								location.href='<xsl:value-of select="@href"/>';
							</xsl:attribute>
							
							
							<div class="cardText" id="cardHeader">
							
								<p><b><xsl:value-of select="name"/></b></p>
								
							</div>
							
							<div class="pictureContainer">
							
								<img id="cardPicture">
									<xsl:attribute name="src">
										<xsl:value-of select="exampleArt"/>
									</xsl:attribute>
								</img>
								
							</div>
							
							<div class="cardText">
							
								<p>Starts: <xsl:value-of select="startDate"/></p>
								<p>Ends: <xsl:value-of select="endDate"/></p>
							
							</div>
							
						</div>
					</xsl:for-each>
				
				</section>
			</div> <!-- home -->
		</body>
	</html>

</xsl:template>
</xsl:stylesheet>