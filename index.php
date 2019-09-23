<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head> 
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A portfolio site based off my resume using XML data styled with XSLT and CSS grids">
        <link href="https://fonts.googleapis.com/css?family=Rubik&display=swap" rel="stylesheet"> 
        <link rel="stylesheet" href="style.css">
        <title>Resume</title>
    </head>
    <body>
        <main>
            <div class="grid-container">
                <div class="grid-item about">
                    <?php
                        $aboutXml = new DOMDocument;
                        $aboutXml->load('xml/about.xml');
                        $aboutXsl = new DOMDocument;
                        $aboutXsl->load('xsl/about.xsl');
                        $aboutProc = new XSLTProcessor;
                        $aboutProc->importStyleSheet($aboutXsl);
                        echo $aboutProc->transformToXML($aboutXml);
                    ?>
                </div>

                <div class="grid-item skills">
                    <?php
                        $skillXml = new DOMDocument;
                        $skillXml->load('xml/skills.xml');
                        $skillXsl = new DOMDocument;
                        $skillXsl->load('xsl/skills.xsl');
                        $skillProc = new XSLTProcessor;
                        $skillProc->importStyleSheet($skillXsl);
                        echo $skillProc->transformToXML($skillXml);
                    ?>
                </div>

                <div class="grid-item education">
                    <?php
                        $educationXml = new DOMDocument;
                        $educationXml->load('xml/education.xml');
                        $educationXsl = new DOMDocument;
                        $educationXsl->load('xsl/education.xsl');
                        $educationProc = new XSLTProcessor;
                        $educationProc->importStyleSheet($educationXsl);
                        echo $educationProc->transformToXML($educationXml);
                    ?>
                </div>

                <div class="grid-item employment">
                    <?php
                        $employmentXml = new DOMDocument;
                        $employmentXml->load('xml/employment.xml');
                        $employmentXsl = new DOMDocument;
                        $employmentXsl->load('xsl/employment.xsl');
                        $employmentProc = new XSLTProcessor;
                        $employmentProc->importStyleSheet($employmentXsl);
                        echo $employmentProc->transformToXML($employmentXml);
                    ?>
                </div>

            </div> 

        </main>
    </body>
</html>