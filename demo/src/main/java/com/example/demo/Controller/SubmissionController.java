package com.example.demo.Controller;


import com.example.demo.Model.SubmissionForm;
import com.example.demo.Service.SubmissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.HttpStatusCode;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/submissions")
public class SubmissionController {

    private final SubmissionService submissionService;

    @Autowired
    public SubmissionController(SubmissionService submissionService) {

        this.submissionService = submissionService;
    }

    @GetMapping("get/{id}")
    public ResponseEntity<SubmissionForm> getSubmission(@PathVariable String id) {
        return  new ResponseEntity<>(submissionService.getSubmission(id), HttpStatus.valueOf("CREATED"));
    }


        @GetMapping("/getAll")
        public List<SubmissionForm> getAll(){
            return submissionService.getAll();
        }

        @PostMapping("/add")
        public SubmissionForm addSubmission(@RequestBody SubmissionForm submission) {
            return submissionService.addSubmission(submission);

        }

        @PutMapping("update")
        public SubmissionForm updateSubmission( @RequestBody SubmissionForm submission) {
            return  submissionService.updateSubmission(submission);

        }

        @DeleteMapping("delete/{id}")
        public ResponseEntity deleteSubmission(@PathVariable String id) {
            submissionService.deleteSubmission(id);
            return ResponseEntity.status(HttpStatus.NO_CONTENT).body(null) ;

        }




}
