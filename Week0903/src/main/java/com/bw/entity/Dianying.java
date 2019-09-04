package com.bw.entity;

import java.util.List;

public class Dianying {
  private int id;
  private String name;
  private String juqing;
  private String daoyan;
  private String times;
  private List<Fenlei> list;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getJuqing() {
	return juqing;
}
public void setJuqing(String juqing) {
	this.juqing = juqing;
}
public String getDaoyan() {
	return daoyan;
}
public void setDaoyan(String daoyan) {
	this.daoyan = daoyan;
}
public String getTimes() {
	return times;
}
public void setTimes(String times) {
	this.times = times;
}
public List<Fenlei> getList() {
	return list;
}
public void setList(List<Fenlei> list) {
	this.list = list;
}
public Dianying(int id, String name, String juqing, String daoyan,
		String times, List<Fenlei> list) {
	super();
	this.id = id;
	this.name = name;
	this.juqing = juqing;
	this.daoyan = daoyan;
	this.times = times;
	this.list = list;
}
public Dianying() {
	super();
}
@Override
public String toString() {
	return "Dianying [id=" + id + ", name=" + name + ", juqing=" + juqing
			+ ", daoyan=" + daoyan + ", times=" + times + ", list=" + list
			+ "]";
}
  
}
