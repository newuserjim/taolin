<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <xsl:for-each select="Previsione">
        <div id="meteo_sintesi">
            <!--<h1>Forecast</h1> -->
            <div class="meteo_head">
                <div class="meteo_desc">
                    <b>Weather evolution: </b><xsl:value-of select="EvoluzioneTempo"/>
                </div>
                <br /><div>Published on <u><xsl:value-of select="Pubblicato"/></u> - Next: <xsl:value-of select="ProssimaEmissione"/></div>
            </div>
            <hr class="large" style="margin-bottom: 10px !important;" />
        </div>
        <div id="today" class="meteo_forecast" label="Today">
            <div class="meteo_date_header">Weather forecast for <xsl:value-of select="Oggi/Data"/></div>
            <xsl:variable name="cieloDesc"><xsl:value-of select="Oggi/CieloDesc"/></xsl:variable>
            <xsl:if test="not($cieloDesc='')"><div class="meteo_report"><b>General report: </b><xsl:value-of select="Oggi/CieloDesc"/></div></xsl:if>
            <div style="position:relative;">
                <div style="float:left;text-align:center;">
                    <div class="meteo_image">
                        <img class="centered inline" style="padding:0 10px" src="{Oggi/imgtrentino}"/>
                    </div>
                </div>
                <div style="float:right;text-align:center;">
                    <div class="meteo_desc">
                        <ul>
                            <li><b>Precipitation: </b> <xsl:value-of select="Domani/PrecInten"/> - <xsl:value-of select="Domani/PrecEstens"/></li>
                            <li><b>Precipitation probability: </b> <xsl:value-of select="Oggi/PrecProb"/></li>
                            <xsl:variable name="ventiDesc"><xsl:value-of select="Oggi/VentiDesc"/></xsl:variable>
                            <xsl:if test="not($ventiDesc='')"><li><b>Wind: </b> <xsl:value-of select="Oggi/VentiDesc"/></li></xsl:if>
                            <li><b>Temperature: </b> <xsl:value-of select="Oggi/TempDesc"/></li>
                            <li>
                                <ul style="padding-left:30px !important">
                                    <li style="list-style-type:square;"><b>Valley: </b> max <xsl:value-of select="Oggi/TempMaxValle"/>°C</li>
                                    <li style="list-style-type:square;"><b>Mountain (2000m): </b> max <xsl:value-of select="Oggi/TempMaxQuota"/>°C</li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        <hr class="large" style="margin-bottom: 10px !important;position: relative;display: inline-block;" />
        </div>
        <div id="tomorrow" class="meteo_forecast" label="Tomorrow">
            <div class="meteo_date_header">Weather forecast for <xsl:value-of select="Domani/Data"/></div>
            <xsl:variable name="cieloDesc"><xsl:value-of select="Domani/CieloDesc"/></xsl:variable>
            <xsl:if test="not($cieloDesc='')"><div class="meteo_report"><b>General report: </b><xsl:value-of select="Domani/CieloDesc"/></div><br /></xsl:if>
            <div class="meteo_image">
                <h2>Morning</h2>
                <img src="{Domani/imgtrentino}"/>
            </div>
            <hr class="small" />
            <div class="meteo_image">
                <h2>Afternoon/Evening</h2>
                <img src="{Domani/imgtrentino2}"/>
            </div>
            <div class="meteo_desc" style="margin-top:20px">
                <ul>
                    <li><b>Precipitation: </b> <xsl:value-of select="Oggi/PrecInten"/> -  <xsl:value-of select="Oggi/PrecEstens"/></li>
                    <li><b>Precipitation probability: </b> <xsl:value-of select="Domani/PrecipProb"/></li>
                    <xsl:variable name="ventiDescDom"><xsl:value-of select="Domani/VentiDesc"/></xsl:variable>
                    <xsl:if test="not($ventiDescDom='')"><li><b>Wind: </b> <xsl:value-of select="Domani/VentiDesc"/></li></xsl:if>
                    <li><b>Temperature: </b>  <xsl:value-of select="Domani/TempDesc"/></li>
                    <ul style="padding-left:30px !important">
                        <li style="list-style-type:square;"><b>Valley: </b>  min <xsl:value-of select="Domani/TempMinValle"/>°C / max <xsl:value-of select="Domani/TempMaxValle"/>°C</li>
                        <li style="list-style-type:square;"><b>Mountain (2000m): </b> min <xsl:value-of select="Domani/TempMinQuota"/>°C / max <xsl:value-of select="Domani/TempMaxQuota"/>°C</li>
                    </ul>
                </ul>
            </div>
            <hr class="large" style="margin-bottom: 10px !important;" />
        </div>
        <div id="day_after_tomorrow" class="meteo_forecast" label="Day after tomorrow">
            <div class="meteo_date_header">Weather forecast for <xsl:value-of select="DopoDomani/Data"/></div>
            <xsl:variable name="cieloDesc"><xsl:value-of select="DopoDomani/CieloDesc"/></xsl:variable>
            <xsl:if test="not($cieloDesc='')"><div class="meteo_report"><b>General report: </b><xsl:value-of select="DopoDomani/CieloDesc"/></div><br /></xsl:if>
            <div class="meteo_image">
                <h2>Morning</h2>
                <img src="{DopoDomani/imgtrentino}"/>
            </div>
            <hr class="small" />
            <div class="meteo_image">
                <h2>Afternoon/Evening</h2>
                <img src="{DopoDomani/imgtrentino2}"/>
            </div>
            <div class="meteo_desc" style="margin-top:20px">
                <ul>
                    <li><b>Precipitation: </b> <xsl:value-of select="DopoDomani/PrecInten"/> -  <xsl:value-of select="DopoDomani/PrecEstens"/> </li>
                    <li><b>Precipitation probability: </b> <xsl:value-of select="DopoDomani/PrecipProb"/></li>
                    <xsl:variable name="ventiDescDopDom"><xsl:value-of select="DopoDomani/VentiDesc"/></xsl:variable>
                    <xsl:if test="not($ventiDescDopDom='')"><li><b>Wind: </b> <xsl:value-of select="DopoDomani/VentiDesc"/></li></xsl:if>
                    <li><b>Temperature: </b><xsl:value-of select="DopoDomani/TempDesc"/></li>
                    <ul style="padding-left:30px !important">
                        <li style="list-style-type:square;"><b>Valley: </b>  min <xsl:value-of select="DopoDomani/TempMinValle"/>°C / max <xsl:value-of select="DopoDomani/TempMaxValle"/></li>
                        <li style="list-style-type:square;"><b>Mountain (2000m): </b> min <xsl:value-of select="DopoDomani/TempMinQuota"/>°C / max <xsl:value-of select="DopoDomani/TempMaxQuota"/>°C</li>
                    </ul>
                </ul>
            </div>
            <hr class="large" style="margin-bottom: 10px !important;" />
        </div>
        <div id="next_days" class="meteo_forecast" label="Next days">
            <div class="meteo_date_header">Weather forecast from <xsl:value-of select="GiorniSuccessivi[1]/Data"/> to <xsl:value-of select="GiorniSuccessivi[last()]/Data"/></div>
            <xsl:for-each select="GiorniSuccessivi">
            <div class="meteo_desc" style="margin: 15px 50px;">
                <table>
                    <tr>
                        <td>
                            <table>
                                <tr>
                                    <td><b><xsl:value-of select="Data"/></b></td>
                                </tr>
                                <tr>
                                    <td width="80px">
                                        <img src="{icona}" title="{descicona}"/>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td style="text-align: left;padding-left: 20px;">
                            <xsl:variable name="cieloDesc"><xsl:value-of select="CieloDesc"/></xsl:variable>
                            <xsl:if test="not($cieloDesc='')"><div><b>Sky condition: </b><xsl:value-of select="CieloDesc"/></div></xsl:if>
                            <div><b>Temperature (valley):</b> min <xsl:value-of select="TempMinValle"/> / max <xsl:value-of select="TempMaxValle"/></div>
                            <xsl:variable name="precProb"><xsl:value-of select="PrecipProb"/></xsl:variable>
                            <xsl:if test="not($precProb='')"><div><b>Prrecipitation probability: </b><xsl:value-of select="PrecipProb"/></div></xsl:if>
                        </td>
                    </tr>
                </table>
            </div>
            </xsl:for-each>
            <hr class="large" style="margin-bottom: 10px !important;" />
        </div>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>  
