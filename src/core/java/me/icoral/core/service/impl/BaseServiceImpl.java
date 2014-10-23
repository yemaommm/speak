package me.icoral.core.service.impl;

import me.icoral.core.db.dao.BaseDao;
import me.icoral.core.db.entity.UploadItem;
import me.icoral.core.service.IBaseService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BaseServiceImpl implements IBaseService {

	@Autowired
	private BaseDao dao;

	@Override
	public void saveUploadItem(UploadItem updateItem) {
		dao.save(updateItem);
	}

}