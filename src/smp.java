class Car{
    private int num;
    private double gas;
    
    public int getNum(){return this.num; }
    public double getGas(){return this.gas; }
    
    public void setNum(int num){this.num = num; }
    public void setGas(double gas){ this.gas = gas; }

    public void prtNum(){ System.out.println(this.num); }
    public void prtGas(){ System.out.println(this.gas); }
    
    public void prt (){ 
        System.out.println(this.num + ", " + this.gas);
    }
}

class smp{
    public static void main(String[] args) {
        Car car1 = new Car();
        car1.setNum(10);
        car1.setGas(99.99);

        car1.prt();
    }
}
