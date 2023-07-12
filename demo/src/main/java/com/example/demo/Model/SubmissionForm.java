package com.example.demo.Model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SubmissionForm {
    private String id;
    private String consultantName;
    private String submissionDate;
    private String leadName;
    private int rate;
    private String salesPersonName;
    private String technology;
    private String vendorName;


    public void setId(String id) {
        this.id=id;
    }
}
