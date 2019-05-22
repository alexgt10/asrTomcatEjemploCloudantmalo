package asr.proyectoFinal.services;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.ibm.cloud.sdk.core.service.security.IamOptions;
import com.ibm.watson.speech_to_text.v1.model.RecognizeOptions;
import com.ibm.watson.speech_to_text.v1.model.SpeechRecognitionResults;
//import com.ibm.watson.developer_cloud.speech_to_text.v1.model.SpeechResults;
import com.ibm.watson.developer_cloud.speech_to_text.v1.websocket.BaseRecognizeCallback;
import com.ibm.watson.developer_cloud.tone_analyzer.v3.ToneAnalyzer;
import com.ibm.watson.developer_cloud.tone_analyzer.v3.model.ToneAnalysis;
import com.ibm.watson.developer_cloud.tone_analyzer.v3.model.ToneOptions;
import com.ibm.watson.speech_to_text.v1.SpeechToText;

//import asr.proyectoFinal.dao.CloudantPalabraStore;
import asr.proyectoFinal.dominio.Palabra;

@MultipartConfig
@WebServlet(urlPatterns = {"/toText"})
public class speechToText extends HttpServlet {
  
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
  {

    IamOptions opt = new IamOptions.Builder()
    	    .apiKey("Lr9NL6FgnT9HUzETR0RIgvJ7qBNeaj3H5Zk0bH15G7tE")
    	    .build();
    SpeechToText service = new SpeechToText(opt);
    service.setEndPoint("https://gateway-lon.watsonplatform.net/speech-to-text/api");
    
    Part filePart = request.getPart("audio"); 
    
    String appPath = request.getServletContext().getRealPath("");
	 String savePath = appPath + "audio";
	 File fileSaveDir = new File(savePath);
	 if (!fileSaveDir.exists()) {
	     fileSaveDir.mkdir();
	 }
	 
	 String savedFile = "";
	
	 for (Part part : request.getParts()) {
	         String fileName = extractFileName(part);
	         fileName = new File(fileName).getName();
	         savedFile=savePath + File.separator + fileName;
	         part.write(savedFile);
	 }
    
	 String ext = savedFile.substring(savedFile.lastIndexOf(".")+1);    
	 
	 String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
    
    RecognizeOptions recognizeOptions = new RecognizeOptions.Builder()
    	    .audio(new FileInputStream(fileName))
    	    .contentType("audio/mp3")
    	    .model("en-US_BroadbandModel")
    	    .keywords(Arrays.asList("colorado", "tornado", "tornadoes"))
    	    .keywordsThreshold((float) 0.5)
    	    .maxAlternatives(3)
    	    .build();
      
      BaseRecognizeCallback baseRecognizeCallback =
    		    new BaseRecognizeCallback() {
    		      public void onTranscription (SpeechRecognitionResults speechRecognitionResults) {
    		          System.out.println(speechRecognitionResults);
    		      }
			      @Override
			      public void onDisconnected() {
			        System.exit(0);
			      }
      			};
      			
     SpeechRecognitionResults speechRecognitionResults = service.recognize(recognizeOptions).execute().getResult();
     System.out.println(speechRecognitionResults);			
    
     String resultado = new String("");
    
    SpeechRecognitionResults result = service.recognize(recognizeOptions).execute().getResult();
	if(result.getResults().size()>0) {
		 for (int i = 0; i < result.getResults().size() ; i++)  {
		System.out.println(result.getResults().get(i).getAlternatives().get(0).getTranscript());
		resultado = resultado.concat(result.getResults().get(i).getAlternatives().get(0).getTranscript());
		}
	}
		
	String traduccion= translator.translate(resultado);
	
//	Palabra palabra = new Palabra();
//	CloudantPalabraStore store = new CloudantPalabraStore();
//
//		if(store.getDB() == null) 
//		{
//		}
//		else
//		{
//			palabra.setName(traduccion);
//			store.persist(palabra);
//		}
//	
	
	request.setAttribute("original", resultado);	    		 
	request.setAttribute("traducido", traduccion);  
	request.getRequestDispatcher("feedback.jsp").forward(request, response);
  }
  
  private String extractFileName(Part part) {
      String contentDisp = part.getHeader("content-disposition");
      String[] items = contentDisp.split(";");
      for (String s : items) {
          if (s.trim().startsWith("filename")) {
              return s.substring(s.indexOf("=") + 2, s.length()-1);
          }
      }
      return "";
  }
}

