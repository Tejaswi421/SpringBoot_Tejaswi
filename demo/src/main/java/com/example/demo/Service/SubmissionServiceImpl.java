package com.example.demo.Service;

import com.example.demo.Model.SubmissionForm;
import com.example.demo.Repository.SubmissionFormRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class SubmissionServiceImpl implements SubmissionService{


    @Autowired
    private SubmissionFormRepository submissionRepository;
    @Override
    public SubmissionForm getSubmission(String id) {

        return submissionRepository.getSubmission(id);
    }

    @Override
    public SubmissionForm addSubmission(SubmissionForm submission) {
        return submissionRepository.addSubmission(submission);
    }

    @Override
    public SubmissionForm updateSubmission(SubmissionForm submission) {
        return submissionRepository.updateSubmission(submission);
    }

    @Override
    public boolean deleteSubmission(String id) {
        return submissionRepository.deleteSubmission(id);
    }

    @Override
    public List<SubmissionForm> getAll() {
        return submissionRepository.getAll();
    }
}
