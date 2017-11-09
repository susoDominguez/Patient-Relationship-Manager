package com.springdemo.dao;

import java.util.List;

import com.springdemo.entity.Patient;

public interface PatientDAO {

	public List<Patient> getPatients();

	void savePatient(Patient thePatient);

	public Patient getPatient(int theId);

	public void deletePatient(int theId);
}
