class Encapsulation {
    private String name;
    private int rollno;
    private String college;

    public Encapsulation(String name, int rollno, String college) {
        this.name = name;
        this.rollno = rollno;
        this.college = college;
    }

    public void setname(String name) {
        this.name = name;
    }

    public String getname() {
        return name;
    }

    public void setRollno(int rollno) {
        this.rollno = rollno;
    }

    public int getRollno() {
        return rollno;
    }

    public void setCollege(String college) {
        this.college = college;
    }

    public String getCollege() {
        return college;
    }

    public static void main(String[] args) {
        Encapsulation student = new Encapsulation("Hemthath", 22, "sac");

        student.setname("Jan");    //we can modify thE Values using the set method
        student.setRollno(24);
        student.setCollege("fx College");

        System.out.println("Name: " + student.getname());        //retrive the values using get method
        System.out.println("Roll no: " + student.getRollno());
        System.out.println("College: " + student.getCollege());
    }
}
