package codev.synergy.entities;

public class Employee extends Entity {

    private String empId;
    private String firstName;
    private String middleName;
    private String lastName;
    private String email;
    private int status;
    private boolean isNew;

    public Employee(String empId, String firstName, String lastName) {
        this.setId(empId);
        this.setFirstName(firstName);
        this.setLastName(lastName);
    }
    public Employee(
        String empId,
        String firstName,
        String middleName,
        String lastName,
        String email,
        int status,
        boolean isNew) {

        this(empId, firstName, lastName);
        this.setMiddleName(middleName);
        this.setEmail(email);
        this.setStatus(status);
        this.setNew(isNew);;
    }

    public String getEmpId() {
        return empId;
    }

    public void setEmpId(String empId) {
        this.empId = empId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getMiddleName() {
        return middleName;
    }

    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public boolean isNew() {
        return isNew;
    }

    public void setNew(boolean aNew) {
        isNew = aNew;
    }
}
