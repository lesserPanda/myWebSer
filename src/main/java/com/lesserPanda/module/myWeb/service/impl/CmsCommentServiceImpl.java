package com.lesserPanda.module.myWeb.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.transaction.annotation.Transactional;

import com.lesserPanda.module.myWeb.bean.CmsComment;
import com.lesserPanda.module.myWeb.dao.ICmsCommentDao;
import com.lesserPanda.module.myWeb.service.ICmsCommentService;

import net.tuxun.core.base.dao.IBaseDao;
import net.tuxun.core.base.service.AbstractBaseService;
/**
 * 
 * @author pand
 *
 */

public class CmsCommentServiceImpl extends AbstractBaseService implements ICmsCommentService {
  @Resource
  ICmsCommentDao dao;

  @Override
  public IBaseDao getDao() {
    return dao;
  } 
  
  @Override
  @Transactional
  public void removeByPrimaryTableId(String primaryTableId) {
    dao.deleteByPrimaryTableId(primaryTableId);
  }

  @Override
  public List<CmsComment> listByPrimaryTableId(String primaryTableId) {
    return dao.listByPrimaryTableId(primaryTableId);
  } 
  
}
