package com.lesserPanda.module.myWeb.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.transaction.annotation.Transactional;

import com.lesserPanda.module.myWeb.bean.Article;
import com.lesserPanda.module.myWeb.bean.CmsComment;
import com.lesserPanda.module.myWeb.dao.IArticleDao;
import com.lesserPanda.module.myWeb.dao.ICmsCommentDao;
import com.lesserPanda.module.myWeb.service.IArticleService;

import net.tuxun.core.base.dao.IBaseDao;
import net.tuxun.core.base.service.AbstractBaseService;
/**
 * 
 * @author pand
 *
 */

public class ArticleServiceImpl extends AbstractBaseService implements IArticleService {
  @Resource
  IArticleDao dao;
 // @Autowired
 // ICmsCommentService cmsCommentService;
  @Resource
  ICmsCommentDao iCmsCommentDao;
  
  @Override
  public IBaseDao getDao() {
    return dao;
  } 
  
  @Override
  public Article getFull(String id) {
    return dao.selectFull(id);
  }

  @Override
  @Transactional
  public void saveFull(Article bean) {
    this.save(bean);
    
    List<CmsComment> cmsComments = bean.getCmsComments();
    if(cmsComments != null && !cmsComments.isEmpty()){
      for (CmsComment cmsComment : cmsComments) {
        cmsComment.setArticleId(bean.getId());
        iCmsCommentDao.save(cmsComment);
      }
    }
  }

  @Override
  @Transactional
  public void modifyFull(Article bean) {
    this.modifyNotNull(bean);
    
    List<CmsComment> cmsComments = bean.getCmsComments();
    if(cmsComments != null && !cmsComments.isEmpty()){
      for (CmsComment cmsComment : cmsComments) {
        cmsComment.setArticleId(bean.getId());
        iCmsCommentDao.saveOrModify(cmsComment);
      }
    }
  }

  @Override
  @Transactional
  public void removeFull(String id) {
    this.remove(id);
    for (String primaryTableId  : id.split(",")) {
    	iCmsCommentDao.removeByPrimaryTableId(primaryTableId);
    }
  }
  
}
