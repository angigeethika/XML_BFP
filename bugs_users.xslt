<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Bug List</title>
        <style>
          /* CSS styles for formatting the bug list */
          table {
            width: 100%;
            border-collapse: collapse;
          }
          th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
          }
        </style>
      </head>
      <body>
        <h1>Bug List</h1>
        <table>
          <tr>
            <th>ID</th>
            <th>Summary</th>
            <th>Reporter</th>
            <th>Email</th>
            <th>Status</th>
          </tr>
          <xsl:apply-templates select="bugs/bug"/>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="bug">
    <tr>
      <td><xsl:value-of select="id"/></td>
      <td><xsl:value-of select="title"/></td>
      <td><xsl:value-of select="Reporter"/></td>
      <td><xsl:value-of select="email"/></td>
      <td><xsl:value-of select="status"/></td>
    </tr>
  </xsl:template>
</xsl:stylesheet>