package com.dw.digitalwallet.model;

import jakarta.persistence.*;

import java.util.UUID;

@Entity
@Table(name = "CLIENTS")
public class Client {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "client_uuid", updatable = false, nullable = false)
    private UUID clientUuid;
    @Column(name = "first_name", nullable = false)
    private String firstName;
    @Column(name =  "last_name")
    private String lastName;
    @Column(name = "document_type")
    private String documentType;
    @Column(name = "document")
    private String document;
    @Column(name = "gender")
    private String gender;
    @Column(name = "email")
    private String email;
    @Column(name = "cellphone")
    private String celphone;
    @Column(name = "client_status")
    private String clientStatus;
}
