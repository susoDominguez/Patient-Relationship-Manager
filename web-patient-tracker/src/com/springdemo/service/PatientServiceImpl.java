package com.springdemo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springdemo.dao.PatientDAO;
import com.springdemo.entity.Patient;

@Service
public class PatientServiceImpl implements PatientService {
	
	//need to inject patientDAO
	@Autowired
	private PatientDAO patientDAO;

	@Override
	@Transactional
	public List<Patient> getPatients() {
		return patientDAO.getPatients();
	}
	

	@Override
	@Transactional
	public void savePatient(Patient thePatient) {
		patientDAO.savePatient(thePatient);
	}


	@Override
	@Transactional
	public Patient getPatient(int theId) {
		return patientDAO.getPatient(theId);
	}


	@Override
	@Transactional
	public void deleteService(int theId) {
		patientDAO.deletePatient(theId);
		
	}

}
