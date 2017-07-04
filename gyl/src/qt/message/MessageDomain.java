package qt.message;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class MessageDomain {
	private String message_id;
	private String message_content;
	private String message_is_examine;
	private String message_s_id;

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

	public String getMessage_is_examine() {
		return message_is_examine;
	}
	public void setMessage_is_examine(String message_is_examine) {
		this.message_is_examine = message_is_examine;
	}
	public String getMessage_s_id() {
		return message_s_id;
	}
	public void setMessage_s_id(String message_s_id) {
		this.message_s_id = message_s_id;
	}

	

}


