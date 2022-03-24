public class Spoonacular {
    Private static final string spoonacularEndpoint='https://api.spoonacular.com';
    Private static final string api_Key='1c39763679214073bbda8dd5d9fde8d8';

    public static void getRandamRecipes(){
		Http http = new Http();
		HttpRequest request = new HttpRequest();
		request.setEndpoint(spoonacularEndpoint+'/recipes/random?apiKey='+api_Key);
		request.setMethod('GET');
		HttpResponse response = http.send(request);
// If the request is successful, parse the JSON response.
		System.debug('Response Code:'+response.getStatusCode());
		if(response.getStatusCode() == 200) {
   			System.debug('Response:'+response.getbody());
    	}
    }
    
    public static void getRecipe( string recipeId){
		Http http = new Http();
		HttpRequest request = new HttpRequest();
		request.setEndpoint(spoonacularEndpoint+'/recipes/'+recipeId+'/information?apiKey='+api_Key);
		request.setMethod('GET');
		HttpResponse response = http.send(request);
// If the request is successful, parse the JSON response.
		System.debug('Response Code:'+response.getStatusCode());
		if(response.getStatusCode() == 200) {
   			System.debug('Response:'+response.getbody());
    	}
    }
    
    public static void getRecipeByIngredient(string ingredients){
		Http http = new Http();
		HttpRequest request = new HttpRequest();
		request.setEndpoint(spoonacularEndpoint+'/recipes/findByIngredients?apiKey='+api_Key+'&ingredients='+ingredients);
		request.setMethod('GET');
		HttpResponse response = http.send(request);
// If the request is successful, parse the JSON response.
		System.debug('Response Code:'+response.getStatusCode());
		if(response.getStatusCode() == 200) {
   			System.debug('Response:'+response.getbody());
    	}
    }
}