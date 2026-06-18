package com.r3sys.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.r3sys.model.Record;
@Component
public class RecordDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public long insert(Record record)
	{
		int i = (Integer) this.hibernateTemplate.save(record);
		return i;
	}
	
	public List<Record> getAllRecord()
	{
		List<Record> record = this.hibernateTemplate.loadAll(Record.class);
		return record;
	}
	
	public Record getRecord(int rId)
	{
		Record record = this.hibernateTemplate.get(Record.class, rId);
		return record;
	}
	@Transactional
	public void deleteRecord(int rId)
	{
		Record record = this.hibernateTemplate.get(Record.class, rId);
		if(record != null)
		{
			this.hibernateTemplate.delete(record);
		}
	}
	@Transactional
	public void updateRecord(Record record)
	{
		this.hibernateTemplate.update(record);
	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

}
