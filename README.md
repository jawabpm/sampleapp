# sampleapp
This is a sample application that illustrates how to use Maven to build Java application

Important Files & Directories:
1) pom.xml          = Main pom file with a) Junit, b) testng, c) selenium and d) sure-fire plugin dependencies included. PMD plugin is also    included to perform static code analysis
2) testng.xml       = Sample testng file which points to a class file that has to be tested (com.sampleapp.tests.selenium)
3) mainmethod.java  = Sample java file which has 2 purposefully defined errors to be captured by PMD
4) selenium.java    = Sample java file which contains selenium test codes
5) index.jsp        = Main index file which includes bootstrap and Jquery scripts

How to use:
1) Install Git client,Java, Maven and Tomcat
2) Dowload this repository using git client and url as https://github.com/arunprasadmudaliar/sampleapp.git
3) Run below commands to build, test and package application (from root directory which contains pom.xml)
    a) Compile  => mvn clean compile  => Check if .java files are converted to .class files
    b) Test     => mvn clean test     => Check for selenium test reports under "target/surefire-reports/Example test run/Simple Test.html"
    c) PMD      => mvn pmd:pmd        => Check static code analysis report created by PMD  under "target/pmd.xml"
    c) Package  => mvn clean package  => Check for generated .war file under "target/sampleapp.war"
4) Deploy the war package in Tomcat and start tomcat server
5) For a standard Tomcat setup, navigate to url: http://localhost:8080/sampleapp and view the application
