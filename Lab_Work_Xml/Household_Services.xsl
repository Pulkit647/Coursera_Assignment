<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
    	<html>
    		<head>
    			<style>
    		<!-- div
            {
                
                width:100%;
                color:red;
                
            }-->
            td,th
            {
                font-size:larger;
                padding:15px;
                } 

    			</style>
    		</head>
    		<body>
				   		<h1 style="text-align:center;color:red;">Household Services</h1>
                <div style="float:left;width:50%;">
                    <h2 style="color:red;">List of Users</h2>
                    <table border="2" >
                        <tr bgcolor="Yellow">
                            <th >Name</th>
                            <th >Age</th>
                            <th >Address</th>
                            <th >State</th>
                            <th >City</th>
                            <th >Phone</th>
                        </tr>
                        <xsl:for-each select="Services/UserDetails">
                            <tr>
                                <td>
                                    <xsl:value-of select="Name"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Age"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Address"/>
                                </td>
                                <td>
                                    <xsl:value-of select="State"/>
                                </td>
                                 <td>
                                    <xsl:value-of select="City"/>
                                </td>
                                 <td>
                                    <xsl:value-of select="Phone"/>
                                </td>

                            </tr>
                        </xsl:for-each>
                    </table>
                </div>
                <div style="float:right;">
                    <h2 style="color:red;">List of Service Provider</h2>
                    <table border="2" >
                        <tr bgcolor="Yellow">
                            <th >Name</th>
                            <th >City</th>
                            <th >Phone</th>
                            <th >Category</th>
                        </tr>
                        <xsl:for-each select="Services/ServicesDetails">
                            <tr>
                                <td>
                                    <xsl:value-of select="Name"/>
                                </td>
                                <td>
                                    <xsl:value-of select="City"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Phone"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Category"/>
                                </td>
                                 
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>

    			</body>
    		</html>
    	 </xsl:template>
</xsl:stylesheet>
