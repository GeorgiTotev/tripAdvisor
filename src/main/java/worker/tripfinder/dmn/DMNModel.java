package worker.tripfinder.dmn;

import jakarta.persistence.*;

@Entity
@Table(name="DMNMODEL")
public class DMNModel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    @Lob
    private byte[] dmnFile; // save dmn file

    public DMNModel() {}

    public DMNModel(String name, byte[] dmnFile) {
        this.name = name;
        this.dmnFile = dmnFile;
    }

    public Long getId() { return id; }
    public String getName() { return name; }
    public byte[] getDmnFile() { return dmnFile; }

    public void setId(Long id) { this.id = id; }
    public void setName(String name) { this.name = name; }
    public void setDmnFile(byte[] dmnFile) { this.dmnFile = dmnFile; }
}
