package com.employee_management_software_system.models;


import javax.persistence.*;

@Entity
@Table(name = "employee")
public class Employee {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private Long id;

    private String emer;

    private String mbiemer;

    private Integer mosha;

    private Character gjinia;

    private String sektori;

    private String dataPunesimit;

    private String email;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getEmer() {
        return emer;
    }

    public void setEmer(String emer) {
        this.emer = emer;
    }

    public String getMbiemer() {
        return mbiemer;
    }

    public void setMbiemer(String mbiemer) {
        this.mbiemer = mbiemer;
    }

    public Integer getMosha() {
        return mosha;
    }

    public void setMosha(Integer mosha) {
        this.mosha = mosha;
    }

    public Character getGjinia() {
        return gjinia;
    }

    public void setGjinia(Character gjinia) {
        this.gjinia = gjinia;
    }

    public String getSektori() {
        return sektori;
    }

    public void setSektori(String sektori) {
        this.sektori = sektori;
    }

    public String getDataPunesimit() {
        return dataPunesimit;
    }

    public void setDataPunesimit(String dataPunesimit) {
        this.dataPunesimit = dataPunesimit;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Employee(){

    }
}
