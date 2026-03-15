public class IRMController {
    
private String downloadEndpoint;
    
public IRMController() {
    downloadEndpoint = '';
}
    
public void applyIrmControl() {
    String versionId = ApexPages.currentPage().getParameters().get('id');
    Http h = new Http();

    //Instantiate a new HTTP request, specify the method (GET) as well as the endpoint
    HttpRequest req = new HttpRequest();
    req.setEndpoint('http://irmsystem?versionId=' + versionId);
    req.setMethod('GET');

    // Send the request, and retrieve a response
    HttpResponse r = h.send(req);
    JSONParser parser = JSON.createParser(r.getBody());
      while (parser.nextToken() != null) {
        if ((parser.getCurrentToken() == JSONToken.FIELD_NAME) &&
            (parser.getText() == 'downloadEndpoint')) {
                parser.nextToken()
                downloadEndpoint = parser.getText();
                break;
        }
    }
}
    
public String getDownloadEndpoint() {
    return downloadEndpoint;
}
    
}