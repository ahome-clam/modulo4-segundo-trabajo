package report;

import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class ReportGenerator {

    public static void main(String[]args){
        String path="D:\\Leonor\\DIPLOMADO-TESTING\\MODULO-4\\codigo\\tarea_dos_rest-api\\build\\reports\\cucumber\\";

        File reportOutPut= new File(path+"finalReportAPI-tareaDos");

        List<String> jsonFiles = new ArrayList<>();
        jsonFiles.add(path+"report.json");

        Configuration configuration =  new Configuration(reportOutPut,"Trabajo Dos - REST API");
        configuration.setBuildNumber("v1.0");
        configuration.addClassifications("SO","Windows");
        configuration.addClassifications("Owner","Cecilia Alvarado");
        configuration.addClassifications("Branch","cucumber");
        configuration.addClassifications("Type Report","Local");

        ReportBuilder reportBuilder = new ReportBuilder(jsonFiles,configuration);
        reportBuilder.generateReports();
    }





}
