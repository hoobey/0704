package ht.shenarticle;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class ShenArticleDomain {
	private String article_id;
	private String article_name;
	private String update_time;
	private String content;
	private String is_examine;
	private int pageCount;
	public String getArticle_id() {
		return article_id;
	}
	public void setArticle_id(String article_id) {
		this.article_id = article_id;
	}
	public String getArticle_name() {
		return article_name;
	}
	public void setArticle_name(String article_name) {
		this.article_name = article_name;
	}
	public String getUpdate_time() {
		return update_time;
	}
	public void setUpdate_time(String update_time) {
		this.update_time = update_time;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getIs_examine() {
		return is_examine;
	}
	public void setIs_examine(String is_examine) {
		this.is_examine = is_examine;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	
}


