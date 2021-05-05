<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html>
			<head>
				<title>Project CARS</title>
        <link rel="stylesheet" type="text/css" href="cars.css" />          
			</head>
			<body>          
				<h1>CARS</h1>
        <table>
          <tr>
            <th></th>
            <th>Category</th>
            <th>Name</th>
            <th>Year</th>
            <th>Kilometers</th>
            <th>Engine</th>
            <th>Petrol</th>
            <th>Color</th>
          </tr>
					<xsl:for-each select="//cars/car">
          <tr>             
            <td>
              <img >
                <xsl:attribute name="src">
                  <xsl:value-of select="photo" />
                </xsl:attribute>
              </img>
            </td>

            <xsl:if test="@category='coupe'">
							<td><img src="img/coupe.png" width="50" /></td>
						</xsl:if>
             <xsl:if test="@category='kombi'">
							<td><img src="img/kombi.png" width="50" /></td>
						</xsl:if>
             <xsl:if test="@category='sedan'">
							<td><img src="img/sedan.png" width="50" /></td>
						</xsl:if>
             <xsl:if test="@category='hetchback'">
							<td><img src="img/hetchback.png" width="50" /></td>
						</xsl:if>
 						<xsl:if test="@category='SUV'">
							<td><img src="img/suv.png" width="50" /></td>
						</xsl:if>

            <xsl:choose>  
              <xsl:when test="@category='coupe'">
                <td style="background-color:#d6cbd3">
                <xsl:value-of select="name" /></td>
              </xsl:when>
              <xsl:when test="@category='kombi'">
                <td style="background-color:#eca1a6">
                <xsl:value-of select="name" /></td>
              </xsl:when>
              <xsl:when test="@category='sedan'">
     	          <td style="background-color:#bdcebe">
                <xsl:value-of select="name" /></td>
              </xsl:when>
              <xsl:when test="@category='hetchback'">
          	    <td style="background-color:#ada397">
                <xsl:value-of select="name" /></td>
              </xsl:when>
              <xsl:when test="@category='SUV'">
              	<td style="background-color:pink">
                <xsl:value-of select="name" /></td>
               </xsl:when>
            </xsl:choose>

            <td><xsl:value-of select="year"/></td>
            <td><xsl:value-of select="kilometers"/></td>
            <td><xsl:value-of select="engine"/></td>
            <td><xsl:value-of select="petrol"/></td>

            <td>
           	  <xsl:attribute name="style">
                background-color:<xsl:value-of select="color" />
              </xsl:attribute>
            </td>
          </tr>
        </xsl:for-each> 
			</table>
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>