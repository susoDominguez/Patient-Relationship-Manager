package com.springdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springdemo.entity.Patient;
import com.springdemo.service.PatientService;

//this class is to test the infrastructure works as expected before starting with the nitty-gritty of the coding.

@Controller
@RequestMapping("/patient")
public class PatientController {
	
	//need to inject the customer DAO into this controller
	@Autowired
	private PatientService patientService; //Spring will scan looking for a component that implements interface PatientSevice

	@GetMapping("/list")
	public String listPatients(Model theModel) {
		
		//get customers from the DAO
		List<Patient> patients= patientService.getPatients();
		
		//add the customers to the model
		theModel.addAttribute("patients", patients);
		return "list-patients";
	}
	
	//Adding new patients to List: show Form
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {
		
		//create model attribute to bind form data
		Patient thePatient = new Patient();
		
		theModel.addAttribute("patient", thePatient);
		return "patient-form";
	}
	
	//Adding new patients to List: save Patient
	@PostMapping("/savePatient")
	public String savePatient(@ModelAttribute("patient") Patient thePatient) {

		//save the patient added to NHS list
		patientService.savePatient(thePatient);
		
		return "redirect:list";
	}
	
	//Updating patients info: show Form
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("patientId") int theId,
									Model theModel) {
		
		//get the customer from our service
		Patient thePatient = patientService.getPatient(theId);
		
		//set customer as a model attribute to pre-populate the form
		theModel.addAttribute("patient", thePatient);
		
		//send over to our form
		return "patient-form";
	}
	
	@GetMapping("/delete")
	public String deleteCustomer(@RequestParam("patientId") int theId) {
		
		//delete the patient
		patientService.deleteService(theId);
		
		return "redirect:list";
	}
	
}
