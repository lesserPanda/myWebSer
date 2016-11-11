package com.lesserPanda.module.myWeb.service.impl;

import javax.annotation.Resource;

import com.lesserPanda.module.myWeb.dao.ISkillInfoDao;
import com.lesserPanda.module.myWeb.service.ISkillInfoService;

import net.tuxun.core.base.dao.IBaseDao;
import net.tuxun.core.base.service.AbstractBaseService;
/**
 * 
 * @author pand
 *
 */

public class SkillInfoServiceImpl extends AbstractBaseService implements ISkillInfoService {
	@Resource
  ISkillInfoDao dao;

  @Override
  public IBaseDao getDao() {
    return dao;
  } 
  
  
}
