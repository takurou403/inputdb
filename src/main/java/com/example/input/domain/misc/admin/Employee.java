package com.example.input.domain.misc.admin;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;

import com.example.input.domain.AddGroup;
import com.example.input.domain.EditGroups;
import com.example.input.domain.LoginGroup;

public class Employee {

	private Integer id;
	@NotBlank(groups = { AddGroup.class,EditGroups.class })
	private String name;
	@NotNull(groups = { AddGroup.class,EditGroups.class })
	private Department department;
	private String phone;
	private String address;
	private String note;
	@NotBlank(groups = { AddGroup.class, LoginGroup.class,EditGroups.class })
	private String loginPass;
	@NotBlank(groups = { AddGroup.class, LoginGroup.class,EditGroups.class })
	private String loginId;
	private Date update;
	private Date registerd;
	private boolean admin;
	private boolean buyer;
	private boolean reception;
	private boolean inventory;

	public Employee() {
		admin = false;
		buyer = false;
		reception = false;
		inventory = false;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public String getLoginPass() {
		return loginPass;
	}

	public void setLoginPass(String loginPass) {
		this.loginPass = loginPass;
	}

	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public Date getUpdate() {
		return update;
	}

	public void setUpdate(Date update) {
		this.update = update;
	}

	public Date getRegisterd() {
		return registerd;
	}

	public void setRegisterd(Date registerd) {
		this.registerd = registerd;
	}

	public boolean isAdmin() {
		return admin;
	}

	public void setAdmin(boolean admin) {
		this.admin = admin;
	}

	public boolean isBuyer() {
		return buyer;
	}

	public void setBuyer(boolean buyer) {
		this.buyer = buyer;
	}

	public boolean isReception() {
		return reception;
	}

	public void setReception(boolean reception) {
		this.reception = reception;
	}

	public boolean isInventory() {
		return inventory;
	}

	public void setInventory(boolean inventory) {
		this.inventory = inventory;
	}

	public List<String> getPermssions() {

		List<String> permissions = new ArrayList<String>();

		if (admin)
			permissions.add("管理");
		if (buyer)
			permissions.add("購買");
		if (reception)
			permissions.add("受付");
		if (inventory)
			permissions.add("在庫");

		return permissions;
	}

}