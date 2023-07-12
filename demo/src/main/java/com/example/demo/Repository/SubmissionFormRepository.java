package com.example.demo.Repository;

import com.example.demo.Model.SubmissionForm;

import java.util.List;

public interface SubmissionFormRepository {

    SubmissionForm getSubmission(String id);

    List<SubmissionForm > getAll();
    SubmissionForm  addSubmission(SubmissionForm submission);
    SubmissionForm  updateSubmission(SubmissionForm  submission);
    boolean deleteSubmission(String name);
}
