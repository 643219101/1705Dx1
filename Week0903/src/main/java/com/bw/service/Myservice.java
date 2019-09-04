package com.bw.service;

import java.util.List;
import java.util.Map;

import com.bw.entity.Dianying;
import com.bw.entity.Fenlei;

public interface Myservice {



	List<Dianying> list(String name);

	List<Fenlei> duoxuan();

	int add(Dianying dianying);



	int addmid(int id, String[] did);

	Map show(String id);

	int delmid(int id);

	int update(Dianying dianying);

	int dels(String id);

	int delss(String id);

}
