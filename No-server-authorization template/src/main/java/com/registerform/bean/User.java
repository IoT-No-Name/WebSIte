package com.registerform.bean;

public class User {

	private String name;
	private String email;
	private int age;
	private String typeOfUser = null;
	private String sex = null;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getTypeOfUser() {
		return typeOfUser;
	}

	public void setTypeOfUser(String typeOfUser) {
		this.typeOfUser = typeOfUser;
	}



	@Override
	public String toString() {
		return "User [name=" + name + ", Email=" + email + ", age=" + age
				+ ", sex=" + sex + "," + typeOfUser + "]";
	}
}