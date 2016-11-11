package com.lesserPanda.module.myWeb.service.impl;

import javax.annotation.Resource;

import com.lesserPanda.module.myWeb.dao.IMusicInfoDao;
import com.lesserPanda.module.myWeb.service.IMusicInfoService;

import net.tuxun.core.base.dao.IBaseDao;
import net.tuxun.core.base.service.AbstractBaseService;
/**
 * 
 * @author pand
 *
 */

public class MusicInfoServiceImpl extends AbstractBaseService implements IMusicInfoService {
	@Resource
  IMusicInfoDao dao;

  @Override
  public IBaseDao getDao() {
    return dao;
  } 
  
  
}
