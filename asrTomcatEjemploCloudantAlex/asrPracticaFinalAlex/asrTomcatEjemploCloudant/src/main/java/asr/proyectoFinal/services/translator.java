package asr.proyectoFinal.services;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.ibm.cloud.sdk.core.service.security.IamOptions;
import com.ibm.watson.language_translator.v3.LanguageTranslator;
import com.ibm.watson.language_translator.v3.model.TranslateOptions;
import com.ibm.watson.language_translator.v3.model.TranslationResult;


public class translator {

	public static String translate(String palabra) {
		
		
		
		IamOptions options = new IamOptions.Builder()
			    .apiKey("Ov7mdVMQqJ9oi9LsayqscUPE0H1eOZDYEtlwSTrT-pz9")
			    .build();
		LanguageTranslator languageTranslator = new LanguageTranslator("2018-05-01", options);
		
		languageTranslator.setEndPoint("https://gateway-lon.watsonplatform.net/language-translator/api");
		
		TranslateOptions translateOptions = new TranslateOptions.Builder()
				  .addText(palabra)
				  .modelId("en-es")
				  .build();
		
		TranslationResult translationResult = languageTranslator.translate(translateOptions).execute().getResult();
		System.out.println(translationResult);
		String traduccionJSON = translationResult.toString();
        JsonParser parser = new JsonParser();
        JsonObject rootObj = parser.parse(traduccionJSON).getAsJsonObject();
		String wordCount = rootObj.get("word_count").getAsString(); 
		JsonArray traducciones = rootObj.getAsJsonArray("translations"); 
		String traduccionPrimera = palabra;
		
		
		if(traducciones.size()>0)
			traduccionPrimera = traducciones.get(0).getAsJsonObject().get("translation").getAsString();
		
		return traduccionPrimera;
		
	}
	
}
