package com.lesserPanda.module.myWeb.service.impl;

import javax.annotation.Resource;

import com.lesserPanda.module.myWeb.dao.IMessagePerpleDao;
import com.lesserPanda.module.myWeb.service.IMessagePerpleService;

import net.tuxun.core.base.dao.IBaseDao;
import net.tuxun.core.base.service.AbstractBaseService;
/**
 * 
 * @author pand
 *
 */

public class MessagePerpleServiceImpl extends AbstractBaseService implements IMessagePerpleService {
  @Resource
  IMessagePerpleDao dao;

  @Override
  public IBaseDao getDao() {
    return dao;
  } 
  
  
}
