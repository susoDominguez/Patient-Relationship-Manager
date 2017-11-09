package com.springdemo.service;

import java.util.List;


import com.springdemo.entity.Patient;

public interface PatientService {

	public List<Patient> getPatients();

	public void savePatient(Patient thePatient);

	public Patient getPatient(int theId);

	public void deleteService(int theId);

}