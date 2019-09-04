package com.bw.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.bw.entity.Dianying;
import com.bw.entity.Fenlei;

public interface Dao {

	List<Dianying> list(@Param("name")String name);

	List<Fenlei> duoxuan();

	int add(Dianying dianying);

	int addmid(Map map);

	int addmid(@Param("id")int id,@Param("did")String[] did);

	Map show(@Param("id")String id);

	int delmid(@Param("id")int id);

	int update(Dianying dianying);

	int dels(@Param("id")String id);

	int delss(@Param("id")String id);

}
