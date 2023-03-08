package egovframework.example.sample.VO;

public class ReplyVO {
	private int id;
	private int reference_board;
	private int reference_reply;
	private String writer;
	private String content;
	private String create_date;
	private char is_private;
	private String password;
	private char use_yn;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getReference_board() {
		return reference_board;
	}

	public void setReference_board(int reference_board) {
		this.reference_board = reference_board;
	}

	public int getReference_reply() {
		return reference_reply;
	}

	public void setReference_reply(int reference_reply) {
		this.reference_reply = reference_reply;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCreate_date() {
		return create_date;
	}

	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}

	public char getIs_private() {
		return is_private;
	}

	public void setIs_private(char is_private) {
		this.is_private = is_private;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public char getUse_yn() {
		return use_yn;
	}

	public void setUse_yn(char use_yn) {
		this.use_yn = use_yn;
	}

	@Override
	public String toString() {
		return "ReplyVO [id=" + id + ", reference_board=" + reference_board + ", reference_reply=" + reference_reply
				+ ", writer=" + writer + ", content=" + content + ", create_date=" + create_date + ", is_private="
				+ is_private + ", password=" + password + ", use_yn=" + use_yn + "]";
	}
	
	
	

}
