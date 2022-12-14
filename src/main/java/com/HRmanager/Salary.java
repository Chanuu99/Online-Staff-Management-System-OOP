package com.HRmanager;

public class Salary {
	private int id;
    private String first_name;
    private String last_name;
    private String email;
    private String basic_sal;
    private String ot_hours;
    private String ot_rate;
    
	public Salary(int id, String first_name, String last_name, String email, String basic_sal, String ot_hours,
			String ot_rate) {
		this.id = id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.email = email;
		this.basic_sal = basic_sal;
		this.ot_hours = ot_hours;
		this.ot_rate = ot_rate;
	}

	public int getId() {
		return id;
	}
	
	public String getFirst_name() {
		return first_name;
	}
	
	public String getLast_name() {
		return last_name;
	}

	public String getEmail() {
		return email;
	}

	public String getBasic_sal() {
		return basic_sal;
	}

	public String getOt_hours() {
		return ot_hours;
	}

	public String getOt_rate() {
		return ot_rate;
	}

	
}
