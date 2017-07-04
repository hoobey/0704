package ht.message;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class MessageDomain {

	private String message_id;
	private String message_content;
	private String message_updatetime;
	private String message_is_examine;
	private String messages_s_id;
	private String is_reply;
	private String message_reply_id;
	private String message_reply_content;

	private int pageCount;
	
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public String getMessage_id() {
		return message_id;
	}
	public void setMessage_id(String message_id) {
		this.message_id = message_id;
	}
	public String getMessage_content() {
		return message_content;
	}
	public void setMessage_content(String message_content) {
		this.message_content = message_content;
	}
	public String getMessage_updatetime() {
		return message_updatetime;
	}
	public void setMessage_updatetime(String message_updatetime) {
		this.message_updatetime = message_updatetime;
	}
	public String getMessage_is_examine() {
		return message_is_examine;
	}
	public void setMessage_is_examine(String message_is_examine) {
		this.message_is_examine = message_is_examine;
	}
	public String getMessages_s_id() {
		return messages_s_id;
	}
	public void setMessages_s_id(String messages_s_id) {
		this.messages_s_id = messages_s_id;
	}
	public String getIs_reply() {
		return is_reply;
	}
	public void setIs_reply(String is_reply) {
		this.is_reply = is_reply;
	}
	public String getMessage_reply_id() {
		return message_reply_id;
	}
	public void setMessage_reply_id(String message_reply_id) {
		this.message_reply_id = message_reply_id;
	}
	public String getMessage_reply_content() {
		return message_reply_content;
	}
	public void setMessage_reply_content(String message_reply_content) {
		this.message_reply_content = message_reply_content;
	}
	
}


