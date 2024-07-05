public class ConstructorDemo {
    
    public ConstructorDemo( integer n ){
        
        integer i= n + 5;
        System.debug('I:'+i);
    }
    
    public static void method(){
        
        ConstructorDemo a = new ConstructorDemo(100);
        
    }
}