public  class getMethod {
    public static void getBody(){
          HttpRequest request = new HttpRequest();
          request.setBody('This is the body');
         string body = request.getBody();
        system.debug('body:'+body);
    }
}