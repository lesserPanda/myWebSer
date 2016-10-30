package net.tuxun.customer.module.myWeb.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.tuxun.core.base.dao.IBaseDao;
import net.tuxun.core.base.service.AbstractBaseService;
import net.tuxun.customer.module.myWeb.dao.IMessagePerpleDao;
import net.tuxun.customer.module.myWeb.service.IMessagePerpleService;
/**
 * 
 * @author pand
 *
 */
@Service
public class MessagePerpleServiceImpl extends AbstractBaseService implements IMessagePerpleService {
  @Autowired
  IMessagePerpleDao dao;

  @Override
  public IBaseDao getDao() {
    return dao;
  } 
  
  
}
