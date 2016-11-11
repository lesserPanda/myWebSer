package com.lesserPanda.module.myWeb.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.lesserPanda.module.myWeb.bean.CmsComment;

import net.tuxun.core.base.dao.IBaseDao;
/**
 * 
 * @author pand
 *
 */
@Repository("iCmsCommentDao")
public interface ICmsCommentDao extends IBaseDao {
  
  void deleteByPrimaryTableId(String primaryTableId);

  List<CmsComment> listByPrimaryTableId(@Param("id")String primaryTableId);

  void save(CmsComment cmsComment);

  void saveOrModify(CmsComment cmsComment);

  void removeByPrimaryTableId(String primaryTableId);
}
