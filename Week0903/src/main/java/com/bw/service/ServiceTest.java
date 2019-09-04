package com.bw.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bw.dao.Dao;
import com.bw.entity.Dianying;
import com.bw.entity.Fenlei;

@Service
public class ServiceTest implements Myservice {
  @Autowired
  private Dao dao;

@Override
public List<Dianying> list(String name) {
	// TODO Auto-generated method stub
	return dao.list(name);
}

@Override
public List<Fenlei> duoxuan() {
	// TODO Auto-generated method stub
	return dao.duoxuan();
}

@Override
public int add(Dianying dianying) {
	// TODO Auto-generated method stub
	return dao.add(dianying);
}

@Override
public int addmid(int id, String[] did) {
	return dao.addmid(id,did);
}

@Override
public Map show(String id) {
	return dao.show(id);
}

@Override
public int delmid(int id) {
	// TODO Auto-generated method stub
	return dao.delmid(id);
}

@Override
public int update(Dianying dianying) {
	// TODO Auto-generated method stub
	return dao.update(dianying);
}

@Override
public int dels(String id) {
	return dao.dels(id);
}

@Override
public int delss(String id) {
	return dao.delss(id);
}


}
