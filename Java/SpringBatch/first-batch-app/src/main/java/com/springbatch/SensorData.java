package com.springbatch;

import java.util.List;

public class SensorData {

	private final String date;
	private final List<Double> measurements;
	
	public SensorData(String date, List<Double> measurements) {
		this.date = date;
		this.measurements = measurements;
	}

	public String getDate() {
		return date;
	}
	public List<Double> getMeasurements() {
		return measurements;
	}

	@Override
	public String toString() {
		return "SensorData [date=" + date + ", measurements=" + measurements + "]";
	}
	
}
