package com.xor.dao;

import java.util.List;

import com.xor.model.RechargeRecord;

public interface RechargeRecordMapper {
	public List<RechargeRecord> searchAllEntity();

	public List<RechargeRecord> searchEntityByName(String name);

	public void deleteEntityById(Integer id);
	
	public void saveEntity(RechargeRecord record);
	
	public List<RechargeRecord> searchEntityById(Integer id);
}
