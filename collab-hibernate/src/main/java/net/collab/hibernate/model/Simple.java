package net.collab.hibernate.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name="simple") //change table name goes here //use create-drop and will create new table in DB
public class Simple { 
	
	
	@Id 
	@GeneratedValue (strategy = GenerationType.AUTO) 
	@Column (name="id") //likewise for the id
	
	private long id;
	private String name;
	
	public Simple() {
		super();
	}
	
	public Simple(long id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	
	public long getId() {
		return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	
}
