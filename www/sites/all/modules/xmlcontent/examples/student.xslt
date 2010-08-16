<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:output method="xml" encoding="UTF-8"/>
  
  <xsl:template match="student">
    <div class="student">
      <table border="1">
        <tr>
          <td width="15%"><b>Student Name</b></td>
          <td><xsl:value-of select="name"/></td>
        </tr>
        <tr>
          <td width="15%"><b>Student Age</b></td>
          <td><xsl:value-of select="age"/></td>
        </tr>
      </table>
    </div>
  </xsl:template>
  

</xsl:stylesheet>
