package com.lesserPanda.module.myWeb.dao;

import org.springframework.stereotype.Repository;

import com.lesserPanda.module.myWeb.bean.Article;

import net.tuxun.core.base.dao.IBaseDao;
/**
 * 
 * @author pand
 *
 */
@Repository("iArticleDao")
public interface IArticleDao extends IBaseDao {
	Article selectFull(String id);
}
