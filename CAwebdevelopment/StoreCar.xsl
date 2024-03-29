<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
                <table id="menuTable" class="indent">
                    <thead>
                        <tr>
                            <th colspan="3">Store Car</th>
                        </tr>
                        <tr>
                            <th>Select</th>
                            <th>Model</th>
                            <th>Price</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="/storecar/section">
                            <tr>
                                <td colspan="3">
                                    <xsl:value-of select="@name" />
                                </td>
                            </tr>
                            <xsl:for-each select="brand">
                            <tr id="{position()}">
                                <xsl:attribute name="Brand-news">
                                    <xsl:value-of select="boolean(./@Brand-news)" />
                                </xsl:attribute>
                                <td align="center">
                                    <input name="car0" type="checkbox" />
                                </td>
                                <td>
                                    <xsl:value-of select="car" />
                                </td>
                                <td align="right">
                                    <xsl:value-of select="price" />
                                </td>
                            </tr>
                            </xsl:for-each>
                        </xsl:for-each>
                    </tbody>
                </table><br/>
    </xsl:template>
</xsl:stylesheet>