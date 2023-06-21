package main.board.notice;

import com.google.protobuf.Timestamp;

import lombok.Data;
@Data
public class NoticeVO {
	
	private int board_id;
	private String writer;
	private int viewcount;
	private String title;
	private String contents;
	private Timestamp regdate;
	private Timestamp updatedate;
	private Timestamp deletedate;
	private int memberno;
	private String membername;
	
	// 페이징할 때만 필요하니까 테이블에 넣을 필요 없음,,!
	private String stype; // 검색타입 (all:전체, title:제목, content:내용)
	private String sword; // 검색어
	private int startIdx; // limit 시작인덱스
	private int page; // 사용자가 요청한 페이지
	private int rowPerPage; // 페이지당로우수
	
	public NoticeVO() {
		this.page = 1;
		this.rowPerPage = 10;
		this.startIdx = 0;
	}

}
