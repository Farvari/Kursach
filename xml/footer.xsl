<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:svg="http://www.w3.org/2000/svg">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <html>
            <head>
                <style>
                    body {
                    margin:0;
                    width: fit-content;
                    height:fit-content;
                    }

                    @font-face {
                    font-family: "JetBrains Mono";
                    src: url("JetBrainsMono-VariableFont_wght.ttf");
                    }

                    .logo-footer {
                    width: 350px;
                    display: flex;
                    flex-direction: row;
                    align-items: left;
                    justify-content: center;
                    overflow: hidden;
                    }

                    .footer-logo-svg {
                    height: 40px;
                    width: 40px;
                    stroke: black;
                    fill: black;
                    flex-shrink: 0; /* Запрещаем SVG-изображению сжиматься */
                    }

                    .logo-name {
                    color: #000000;
                    text-align: left;
                    font-family: "JetBrains Mono";
                    font-size: 34px;
                    font-weight: 400;
                    font-style: normal;
                    position: relative;
                    margin-left: 15px;
                    }
                </style>
            </head>
            <div class="logo-footer">
                <div class="footer-logo-svg">
                    <xsl:apply-templates select="logo" />
                </div>
                <div class="logo-name">Gourmet Garden</div>
            </div>
        </html>
    </xsl:template>

    <xsl:template match="svg:svg">
        <xsl:copy-of select="." />
    </xsl:template>

</xsl:stylesheet>