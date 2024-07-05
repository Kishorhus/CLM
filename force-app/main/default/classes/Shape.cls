public virtual class Shape {
    private  integer length=10;
    private  integer breadth=20;
    
    public virtual void area(){
        system.debug('area of:');
    }
    
    //get length
    public virtual integer getLength(){
        return length; 
    }
    public virtual integer getBreadth(){
        return breadth;
    }


}