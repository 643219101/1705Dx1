package com.bw.entity;

import java.util.List;

public class Fenlei {
	 private  int did;
	 private  String dname;
	 private  List<Dianying> list;
	public int getDid() {
		return did;
	}
	public void setDid(int did) {
		this.did = did;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public List<Dianying> getList() {
		return list;
	}
	public void setList(List<Dianying> list) {
		this.list = list;
	}
	public Fenlei(int did, String dname, List<Dianying> list) {
		super();
		this.did = did;
		this.dname = dname;
		this.list = list;
	}
	public Fenlei() {
		super();
	}
	@Override
	public String toString() {
		return "Fenlei [did=" + did + ", dname=" + dname + ", list=" + list
				+ "]";
	}
	 
}
