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
            <th>Title</th>
            <th>Description</th>
            <th>Issue Date</th>
            <th>Progress</th>
            <th>Action Assigned To</th>
            <th>Action Status</th>
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
      <td><xsl:value-of select="description"/></td>
      <td><xsl:value-of select="issue_date"/></td>
      <td><xsl:value-of select="progress"/></td>
      <td><xsl:value-of select="action/assigned_to"/></td>
      <td><xsl:value-of select="action/status"/></td>
    </tr>
  </xsl:template>
</xsl:stylesheet>